TEMPLATE = subdirs
CONFIG += ordered

!linguistonly {
    SUBDIRS = \
        lib \
        components \
        designer
}
SUBDIRS += uitools

!linguistonly:contains(QT_CONFIG, shared): SUBDIRS += plugins
