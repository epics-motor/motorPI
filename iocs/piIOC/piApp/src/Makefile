TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = pi
# pi.dbd will be created and installed
DBD += pi.dbd

# pi.dbd will be made up from these files:
pi_DBD += base.dbd

# Include dbd files from all support applications:
#pi_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#pi_LIBS += xxx

# pi_registerRecordDeviceDriver.cpp derives from pi.dbd
pi_SRCS += pi_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
pi_SRCS_DEFAULT += piMain.cpp
pi_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#pi_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
pi_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

