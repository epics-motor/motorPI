
drvAsynSerialPortConfigure("serial3", "/dev/ttyS2", 0, 0, 0)

dbLoadTemplate("PI_C862.substitutions")

# PI C-862 DC-motor driver setup parameters:
#     (1) maximum number of controllers in system
#     (2) motor task polling rate (min=1Hz, max=60Hz)
PIC862Setup(1, 10)
                                                                                
# PI C-862 DC-motor driver configuration parameters:
#     (1) controller being configured
#     (2) asyn port name (string)
PIC862Config(0, "serial3")
#!var drvPIC862debug 4
