# motorPI
EPICS motor drivers for the following [Physik Instrumente](https://www.physikinstrumente.com) controllers:<br>
C-630/662/663/844/848/862/863, E-516/517/710/816

[![Build Status](https://github.com/epics-motor/motorPI/actions/workflows/ci-scripts-build.yml/badge.svg)](https://github.com/epics-motor/motorPI/actions/workflows/ci-scripts-build.yml)
<!--[![Build Status](https://travis-ci.org/epics-motor/motorPI.png)](https://travis-ci.org/epics-motor/motorPI)-->

motorPI is a submodule of [motor](https://github.com/epics-modules/motor).  When motorPI is built in the ``motor/modules`` directory, no manual configuration is needed.

motorPI can also be built outside of motor by copying it's ``EXAMPLE_RELEASE.local`` file to ``RELEASE.local`` and defining the paths to ``MOTOR`` and itself.

motorPI contains an example IOC that is built if ``CONFIG_SITE.local`` sets ``BUILD_IOCS = YES``.  The example IOC can be built outside of driver module.
