
drvAsynSerialPortConfigure("serial1", "/dev/ttyS0", 0, 0, 0)

dbLoadTemplate("PI_C844.substitutions")

# PI C-844 driver setup parameters: 
#     (1) maximum number of controllers in system
#     (2) motor task polling rate (min=1Hz,max=60Hz)
PIC844Setup(1, 10)

# PI C-844 driver configuration parameters: 
#     (1) controller# being configured
#     (2) ASYN port name
#     (3) address (GPIB only)
PIC844Config(0, "serial1")
#!drvPIC844debug = 4
