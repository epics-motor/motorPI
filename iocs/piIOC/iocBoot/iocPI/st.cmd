#!../../bin/linux-x86_64/pi

## You may have to change pi to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/pi.dbd"
pi_registerRecordDeviceDriver pdbbase

cd "${TOP}/iocBoot/${IOC}"

## motorUtil (allstop & alldone)
dbLoadRecords("$(MOTOR)/db/motorUtil.db", "P=pi:")

##
< PI_C844.cmd
< PI_C848.cmd
< PI_E662.cmd
< PI_C862.cmd

iocInit

## motorUtil (allstop & alldone)
motorUtilInit("pi:")

# Boot complete
