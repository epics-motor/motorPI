#---
# Moxa serial port 1 config: 115200, N, 1, 8, H
drvAsynIPPortConfigure("MOXA1", "192.168.127.254:4001", 0, 0, 0)
#
asynOctetSetInputEos("MOXA1", -1, "\n")
asynOctetSetOutputEos("MOXA1", -1, "\n")

# PI Piezo motor driver setup parameters:
#     (1) maximum number of controllers in system
#     (2) maximum drives per controller
#     (3) motor task polling rate (min=1Hz, max=60Hz)
PIE816Setup(1, 10)

# PI Piezo E816 driver configuration parameters:
#     (1) controller being configured
#     (2) asyn port name (string)
#     (3) asyn address (GPIB)
PIE816Config(0, "MOXA1", 0)
#!var drvPIE816debug 4

dbLoadTemplate("PI_E816.substitutions")
