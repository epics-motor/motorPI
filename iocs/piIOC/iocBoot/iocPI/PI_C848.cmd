
drvAsynSerialPortConfigure("serial2", "/dev/ttyS1", 0, 0, 0)

dbLoadTemplate("PI_C848.substitutions")

# PI C-848 driver setup parameters: 
#     (1) maximum number of controllers in system
#     (2) motor task polling rate (min=1Hz,max=60Hz)
PIC848Setup(1, 10)

# PI C-848 driver configuration parameters: 
#     (1) controller# being configured,
#     (2) ASYN port name
PIC848Config(0, "serial2")
#!var drvPIC848debug 4
