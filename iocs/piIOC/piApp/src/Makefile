TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

# The following are used for debugging messages.
#!USR_CXXFLAGS += -DDEBUG

#=============================
# Build the IOC application

PROD_IOC = pi
# pi.dbd will be created and installed
DBD += pi.dbd

# pi.dbd will be made up from these files:
pi_DBD += base.dbd

# Include dbd files from all support applications:
#ifdef ASYN
pi_DBD += asyn.dbd
pi_DBD += drvAsynSerialPort.dbd
#endif
pi_DBD += motorSupport.dbd
pi_DBD += devPIMotor.dbd

# Add all the support libraries needed by this IOC
pi_LIBS += PI
pi_LIBS += motor
#ifdef ASYN
pi_LIBS += asyn
#endif
#ifdef SNCSEQ
pi_LIBS += seq pv
#endif

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

