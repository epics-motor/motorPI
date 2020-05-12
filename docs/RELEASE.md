# motorPI Releases

## __R1-0-1 (2020-05-12)__
R1-0-1 is a release based on the master branch.  

### Changes since R1-0

#### New features
* None

#### Modifications to existing features
* None

#### Bug fixes
* Commit [045f6cf](https://github.com/epics-motor/motorPI/commit/045f6cf2b339f7a947efb7e84dc375dac5e36f50): Include ``$(MOTOR)/modules/RELEASE.$(EPICS_HOST_ARCH).local`` instead of ``$(MOTOR)/configure/RELEASE``
* Pull request [#1](https://github.com/epics-motor/motorPI/pull/1): Eliminated compiler warnings

## __R1-0 (2019-04-18)__
R1-0 is a release based on the master branch.  

### Changes since motor-6-11

motorPI is now a standalone module, as well as a submodule of [motor](https://github.com/epics-modules/motor)

#### New features
* motorPI can be built outside of the motor directory
* motorPI has a dedicated example IOC that can be built outside of motorPI

#### Modifications to existing features
* None

#### Bug fixes
* None
