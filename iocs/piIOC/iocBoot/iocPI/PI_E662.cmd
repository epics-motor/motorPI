
drvAsynSerialPortConfigure("serial4", "/dev/ttyS3", 0, 0, 0)

dbLoadTemplate("PI_E662.substitutions")

# PI E-662 Piezo driver setup parameters:
#     (1) maximum number of controllers in system
#     (2) motor task polling rate (min=1Hz, max=60Hz)
PIC662Setup(1, 10)
                                                                                
# PI E-662 Piezo driver configuration parameters:
#     (1) controller being configured
#     (2) asyn port name (string)
PIC662Config(0, "serial4")
#!var drvPIC662debug 4
