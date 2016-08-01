/*
 * Charge controller and balancer
 * Cambridge University Spaceflight
 */

#include "config.h"
#include "chargecontroller.h"

MAX17435 charger;
PCAL9538A portEx;

#define CHARGER_ENABLE      (1<<3)
#define VEXT_ENABLE         (1<<2)
#define CHARGER_OL          (1<<1)
#define VEXT_OK             (1<<0)

static bool shouldCharge = FALSE;

void ChargeController_init(void) {
  // Setup charger to 8.4V at 1.1A (0.5C), 10mohm sense resistor
  max17435_init(&charger, &I2C_DRIVER, 0x09, 8400, 1100, 10);

  // Program charge voltage and current (allow charging to start)
  max17435_set_charge_voltage(&charger, charger.config.charge_voltage_mv);
  max17435_set_charge_current(&charger, charger.config.charge_current_ma);

  // Setup port-expander
  pcal9538a_init(&portEx, &I2C_DRIVER, 0x70);
  pcal9538a_set_pull_up_down(&portEx, 0xFF); // all pull-ups
  pcal9538a_set_output_type(&portEx, 0x00); // all push-pull
  pcal9538a_set_pull_enabled(&portEx, 0xF0); // enable 7-4 pull-ups
  pcal9538a_set_output_dir(&portEx, 0x0C); // 7-4,1-0 in, 3-2 out
  pcal9538a_set_interrupt_mask(&portEx, 0x03); // interrupt on 1-0
}

uint8_t ChargeController_enable_charger(void) {
  shouldCharge = TRUE;
  max17435_set_charge_voltage(&charger, charger.config.charge_voltage_mv);
  max17435_set_charge_current(&charger, charger.config.charge_current_ma);
  return pcal9538a_write_output_bit(&portEx, CHARGER_ENABLE, 1);
}
uint8_t ChargeController_disable_charger(void) {
  // TODO: does this just disable charging, or disable the passthrough of power entirely?
  // can also disable charging by setting charge_voltage and/or current to 0
  shouldCharge = FALSE;
  max17435_set_charge_voltage(&charger, 0);
  max17435_set_charge_current(&charger, 0);
  return pcal9538a_write_output_bit(&portEx, CHARGER_ENABLE, 0);
}

uint8_t ChargeController_enable_vext(void) {
  return pcal9538a_write_output_bit(&portEx, VEXT_ENABLE, 1);
}
uint8_t ChargeController_disable_vext(void) {
  return pcal9538a_write_output_bit(&portEx, VEXT_ENABLE, 0);
}

bool ChargeController_is_charger_overcurrent(void) {
  uint8_t result;
  if (pcal9538a_read_inputs(&portEx, &result) != 0) {
    return TRUE; // TODO: what to do if we fail to read status??
  }
  return (result & CHARGER_OL) != 0;
}

bool ChargeController_is_adapter_present(void) {
  uint8_t result;
  if (pcal9538a_read_inputs(&portEx, &result) != 0) {
    return FALSE; // TODO: what to do if we fail to read status??
  }
  return (result & VEXT_OK) != 0;
}

bool ChargeController_is_charging(void){
  // If adapter not present, not charging
  if(!ChargeController_is_adapter_present()){
    return FALSE;
  }
  // If charger disabled, not charging
  uint8_t enabled;
  pcal9538a_read_output_bit(&portEx, CHARGER_ENABLE, &enabled);
  if (enabled == FALSE){
    return FALSE;
  }
  // If charge current / voltage are 0, not charging
  uint16_t val;
  max17435_get_charge_voltage(&charger, &val);
  if (val == 0){
    return FALSE;
  }
  max17435_get_charge_current(&charger, &val);
  if (val == 0){
    return FALSE;
  }

  return TRUE;
}

THD_FUNCTION(chargecontroller_thread, arg) {
  (void)arg;
  chRegSetThreadName("Charge Monitor");
  while (!chThdShouldTerminateX()) {
    // Poll total system current
    uint16_t ma;
    max17435_get_current(&charger, &ma);
    // TODO: balance if charging?
    // TODO: calc battery level etc?
  }
}

THD_FUNCTION(charger_watchdog_thread, arg) {
  (void)arg;
  chRegSetThreadName("Charger watchdog");
  while (!chThdShouldTerminateX()) {
    if (shouldCharge) {
      // Send charge voltage / current every 30 seconds
      // The MAX17435 will stop charging if we don't send for 140 seconds
      max17435_set_charge_voltage(&charger, charger.config.charge_voltage_mv);
      max17435_set_charge_current(&charger, charger.config.charge_current_ma);
    }
    chThdSleepSeconds(30);
  }
}
