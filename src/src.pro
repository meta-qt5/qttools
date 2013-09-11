TEMPLATE = subdirs
CONFIG += ordered

qtHaveModule(widgets) {
    no-png {
        message("Some graphics-related tools are unavailable without PNG support")
    } else {
        !linguistonly { 
            SUBDIRS = assistant \
                  pixeltool \
                  qtestlib
        }
        SUBDIRS += designer
#    unix:!mac:!embedded:!qpa:SUBDIRS += qtconfig
    }
}

SUBDIRS += linguist

mac {
    SUBDIRS += macdeployqt
}

embedded:SUBDIRS += kmap2qmap

!linguistonly:qtHaveModule(dbus): SUBDIRS += qdbus
# We don't need these command line utilities on embedded platforms.
embedded: SUBDIRS += makeqpf

