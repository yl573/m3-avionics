from .packets import register_packet, register_command
import struct


def msg_id(x):
    return x << 5


CAN_ID_M3PSU = 2
CAN_MSG_ID_M3PSU_BATT_VOLTAGES = CAN_ID_M3PSU | msg_id(56)
CAN_MSG_ID_M3PSU_TOGGLE_PYROS = CAN_ID_M3PSU | msg_id(16)
CAN_MSG_ID_M3PSU_CHANNEL_STATUS_12 = CAN_ID_M3PSU | msg_id(49)
CAN_MSG_ID_M3PSU_CHANNEL_STATUS_34 = CAN_ID_M3PSU | msg_id(50)
CAN_MSG_ID_M3PSU_CHANNEL_STATUS_56 = CAN_ID_M3PSU | msg_id(51)
CAN_MSG_ID_M3PSU_CHANNEL_STATUS_78 = CAN_ID_M3PSU | msg_id(52)
CAN_MSG_ID_M3PSU_CHANNEL_STATUS_910 = CAN_ID_M3PSU | msg_id(53)
CAN_MSG_ID_M3PSU_CHANNEL_STATUS_1112= CAN_ID_M3PSU | msg_id(54)
CAN_MSG_ID_M3PSU_TOGGLE_CHANNEL = CAN_ID_M3PSU | msg_id(17)
CAN_MSG_ID_M3PSU_PYRO_STATUS = CAN_ID_M3PSU | msg_id(48)
CAN_MSG_ID_M3PSU_CHARGER_STATUS = CAN_ID_M3PSU | msg_id(55)
CAN_MSG_ID_M3PSU_TOGGLE_CHARGER = CAN_ID_M3PSU | msg_id(18)
CAN_MSG_ID_M3PSU_TOGGLE_BALANCE = CAN_ID_M3PSU | msg_id(19)
CAN_MSG_ID_M3PSU_TOGGLE_INTEXT = CAN_ID_M3PSU | msg_id(20)
CAN_MSG_ID_M3PSU_INTEXT_STATUS = CAN_ID_M3PSU | msg_id(57)


@register_packet("m3psu", CAN_MSG_ID_M3PSU_BATT_VOLTAGES,
    "Battery Voltages")
def batt_volts(data):
    # 3 bytes
    batt1, batt2, state = struct.unpack("BBB", bytes(data[:3]))
    batt1 *= 0.02
    batt2 *= 0.02

    # Third byte is status bits.
    should_balance = bool(state & 4)
    bleed_batt1 = bool(state & 2)
    bleed_batt2 = bool(state & 1)

    string = "{: 4.2f}V, {: 4.2f}V".format(batt1, batt2)
    if should_balance:
        string += ", balance enabled"
    if bleed_batt1:
        string += ", bleeding batt1"
    if bleed_batt2:
        string += ", bleeding batt2"
    
    return string


@register_packet("m3psu", CAN_MSG_ID_M3PSU_TOGGLE_PYROS, "Toggle Pyros")
def toggle_pyros(data):
    if data[0] == 0:
        return "Disable pyros"
    elif data[0] == 1:
        return "Enable pyros"
    else:
        return "Invalid packet"


@register_packet("m3psu", CAN_MSG_ID_M3PSU_CHANNEL_STATUS_12,
    "Channel 1,2 status")
@register_packet("m3psu", CAN_MSG_ID_M3PSU_CHANNEL_STATUS_34,
    "Channel 3,4 status")
@register_packet("m3psu", CAN_MSG_ID_M3PSU_CHANNEL_STATUS_56,
    "Channel 5,6 status")
@register_packet("m3psu", CAN_MSG_ID_M3PSU_CHANNEL_STATUS_78,
    "Channel 7,8 status")
@register_packet("m3psu", CAN_MSG_ID_M3PSU_CHANNEL_STATUS_910,
    "Channel 9,10 status")
@register_packet("m3psu", CAN_MSG_ID_M3PSU_CHANNEL_STATUS_1112,
    "Channel 11,12 status")
def channel_status(data):
    # 8 bytes: voltage/0.03V, current/0.003A, power/0.02W, blank,
    # voltage/0.03V, current/0.003A, power/0.02W, blank
    voltage, current, power = struct.unpack("BBBx", bytes(data[:4]))
    string = "{: 5.3f}V {: 6.3f}A {: 5.2f}W".format(voltage * 0.03,
        current * 0.003, power * 0.02)
    voltage, current, power = struct.unpack("BBBx", bytes(data[4:]))
    string += ", {: 5.3f}V {: 6.3f}A {: 5.2f}W".format(voltage * 0.03,
        current * 0.003, power * 0.02)
    return string


@register_packet("m3psu", CAN_MSG_ID_M3PSU_TOGGLE_CHANNEL,
    "Toggle Channel")
def toggle_channel(data):
    if data[0] == 0:
        return "Disable channel {: 2d}".format(data[1])
    elif data[1] == 1:
        return "Enable channel {: 2d}".format(data[1])
    else:
        return "Invalid packet"


@register_packet("m3psu", CAN_MSG_ID_M3PSU_PYRO_STATUS, "Pyro Status")
def pyro_status(data):
    # 7 bytes: 16bit voltage (mV), 16bit current (uA), 16bit power (0.1mW)
    # 1bit pyro enable line measurement
    voltage, current, power, pyro = struct.unpack("HHHB", bytes(data[:7]))
    string = "{: 5.3f}V {: 6.3f}A {: 7.3f}W".format(voltage/1000.0,
        current/1000000.0, power/100000.0)
    if pyro == 1:
        string += ", pyro enabled"
    elif pyro == 0:
        string += ", pyro disabled"
    else:
        string += ", invalid packet!"
    return string

@register_packet("m3psu", CAN_MSG_ID_M3PSU_CHARGER_STATUS, "Charger Status")
def charger_status(data):
    # 3 bytes. First two are charge current in mA, last is status bits
    current, state = struct.unpack("HB", bytes(data[:3]))
    should_charge = bool(state & 1)
    is_charging = bool(state & 4)
    overcurrent = bool(state & 2)

    string = "{: 4d}mA".format(current)
    if should_charge:
        string += ", charger enabled"
    if is_charging:
        string += ", charging"
    if overcurrent:
        string += ", OVERCURRENT!"
    return string

@register_packet("m3psu", CAN_MSG_ID_M3PSU_TOGGLE_CHARGER, "Toggle Charger")
def toggle_charger(data):
    if data[0] == 0:
        return "Disable charger"
    elif data[0] == 1:
        return "Enable charger"
    else:
        return "Invalid packet"

@register_packet("m3psu", CAN_MSG_ID_M3PSU_TOGGLE_BALANCE, "Toggle Balance")
def toggle_balance(data):
    if data[0] == 0:
        return "Disable balance"
    elif data[0] == 1:
        return "Enable balance"
    else:
        return "Invalid packet"

@register_packet("m3psu", CAN_MSG_ID_M3PSU_TOGGLE_INTEXT, "Toggle Int/Ext")
def toggle_intext(data):
    if data[0] == 0:
        return "Switch to internal power"
    elif data[0] == 1:
        return "Switch to external power"
    else:
        return "Invalid packet"

@register_packet("m3psu", CAN_MSG_ID_M3PSU_INTEXT_STATUS, "Int/Ext Status")
def intext_status(data):
    state = data[0]
    int_enabled = "Enabled" if bool(state & 2) else "Disabled"
    ext_enabled = "Enabled" if bool(state & 1) else "Disabled"
    return "Internal: {}, External: {}".format(int_enabled, ext_enabled)


@register_command("m3psu", "Pyro supply", ("Off", "On"))
def toggle_pyros_cmd(data):
    data = [{"Off":0, "On":1}[data]]
    return CAN_MSG_ID_M3PSU_TOGGLE_PYROS, data

@register_command("m3psu", "Charger", ("Off", "On"))
def toggle_charger_cmd(data):
    data = [{"Off":0, "On":1}[data]]
    return CAN_MSG_ID_M3PSU_TOGGLE_CHARGER, data

@register_command("m3psu", "Balancing", ("Off", "On"))
def toggle_balance_cmd(data):
    data = [{"Off":0, "On":1}[data]]
    return CAN_MSG_ID_M3PSU_TOGGLE_BALANCE, data

@register_command("m3psu", "5V IMU", ("1 Off", "1 On"))
@register_command("m3psu", "5V AUX 2", ("2 Off", "2 On"))
@register_command("m3psu", "3V3 FC", ("3 Off", "3 On"))
@register_command("m3psu", "3V3 IMU", ("4 Off", "4 On"))
@register_command("m3psu", "5V Radio", ("5 Off", "5 On"))
@register_command("m3psu", "5V AUX 1", ("6 Off", "6 On"))
@register_command("m3psu", "3V3 Pyro", ("7 Off", "7 On"))
@register_command("m3psu", "3V3 Radio", ("8 Off", "8 On"))
@register_command("m3psu", "5V Cameras", ("9 Off", "9 On"))
@register_command("m3psu", "3V3 AUX 1", ("10 Off", "10 On"))
@register_command("m3psu", "3V3 DL", ("11 Off", "11 On"))
@register_command("m3psu", "5V CAN", ("12 Off", "12 On"))
def toggle_channel_cmd(data):
    [channel, operation] = data.split(" ")
    data = [{"Off":0, "On":1}[operation], int(channel)-1]
    return CAN_MSG_ID_M3PSU_TOGGLE_CHANNEL, data

@register_command("m3psu", "Int/Ext Supply", ("Internal", "External"))
def toggle_intext_cmd(data):
    data = [{"Internal":0, "External":1}[data]]
    return CAN_MSG_ID_M3PSU_TOGGLE_INTEXT, data

