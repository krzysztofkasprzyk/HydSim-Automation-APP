# constants.py

# Lista dostępnych cieczy do wyboru w GUI
FLUID_TYPES = [
    "Constant-Viscosity", "Aqualink-HT 180SC", "Castrol-Brayco-LV3", "Castrol...yco-SV/B",
    "Castrol-HC10", "Castrol-HC20", "Castrol...saqua-HT", "ISO-VG10", "ISO-VG15",
    "ISO-VG32", "ISO-VG46", "ISO-VG68", "MBO-BTC-491", "MBO-HW-443", "MBO-HW-460R",
    "MBO-HW-510", "MBO-HW-525", "MBO-HW-540", "MBO-HW-560", "Niche-Pelagic-100",
    "Statoil-Mereta-15", "Tap_water", "Castrol-EE2"
]

# Sekcje parametrów globalnych
GLOBAL_SECTIONS = [
    ("Global Parameters", [
        ("Subsea Temperature", "Subsea Temperature", "°C"),
        ("Fluid bulk modules", "Fluid bulk modules", "MPa"),
        ("Fixed viscosity value", "Fixed viscosity value", "cP"),
        ("Density of fluid", "Density of fluid", "kg/m³"),
        ("Fluid Type", "Fluid Type", "")
    ])
]

# Sekcje parametrów HPU
HPU_SECTIONS = [
    ("Accumulator parameters", [
        ("Precharge temperature", "Pretmpr", "°C"),
        ("Precharge gas volume", "Prevol", "me"),
        ("Precharge pressure", "Prepr", "bar"),
        ("Line diameter", "Dia", "mm"),
        ("Line length", "Len", "mm"),
        ("Accumulator line Rh", "Rh", "bar/(l^5)^2"),
        ("Thermal time constant", "Tau", "s")
    ]),
    ("Remaining Configure Accumulator parameters", [
        ("Pump start pressure", "Pstart", "bar"),
        ("Pump stop pressure", "Pstop", "bar"),
        ("Pump displacement", "Pdepl", "Vs"),
        ("Hydraulic resistance PA", "Rhp_a", "bar/(Vs)^2"),
        ("Hydraulic resistance A-I2", "Rha_r", "bar/(Vs)^2"),
        ("Pset", "Pset", "bar"),
        ("Height above sea level", "Height", "m"),
        ("Ambient temperature", "Tamb", "°C"),
        ("Actual return pressure", "PrRet", "bar"),
        ("Pressure reduction valve threshold pressure drop", "PrTreshold", "bar"),
        ("Pressure reduction valve threshold flow rate", "QTreshold", "Vs")
    ])
]

# Dummy sekcje – do testowych zakładek
DUMMY_SECTIONS = [
    ("Test Section", [
        ("Test 1", "test_1", ""),
        ("Test 2", "test_2", ""),
        ("Test 3", "test_3", "")
    ])
]
