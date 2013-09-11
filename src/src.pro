TEMPLATE = subdirs
CONFIG += ordered

!isEmpty(QT.widgets.name) {
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

!linguistonly:contains(QT_CONFIG, dbus):SUBDIRS += qdbus
# We don't need these command line utilities on embedded platforms.
embedded: SUBDIRS += makeqpf

