TEMPLATE = subdirs

!linguistonly {
    SUBDIRS = \
        uiplugin \
        lib \
        components \
        designer
}
SUBDIRS += uitools

!linguistonly:contains(QT_CONFIG, shared): SUBDIRS += plugins

uitools.depends = uiplugin
lib.depends = uiplugin
components.depends = lib
designer.depends = components
plugins.depends = lib

!linguistonly:qtNomakeTools( \
    lib \
    components \
    designer \
    plugins \
)
