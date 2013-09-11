TEMPLATE = subdirs

!linguistonly {
    SUBDIRS = \
        lib \
        components \
        designer
}
SUBDIRS += uitools

!linguistonly:contains(QT_CONFIG, shared): SUBDIRS += plugins

components.depends = lib
designer.depends = components
plugins.depends = lib

!linguistonly:qtNomakeTools( \
    lib \
    components \
    designer \
    plugins \
)
