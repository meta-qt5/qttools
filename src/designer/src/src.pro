TEMPLATE = subdirs
CONFIG += ordered

!linguistonly {
    SUBDIRS = \
        lib \
        components \
        designer
}
SUBDIRS += uitools

!linguistonly:CONFIG(shared,shared|static):SUBDIRS += plugins
