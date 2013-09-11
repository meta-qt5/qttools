TEMPLATE = subdirs

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

        linguist.depends = designer
    }
}

SUBDIRS += linguist

mac {
    SUBDIRS += macdeployqt
}

!linguistonly:qtHaveModule(dbus): SUBDIRS += qdbus

qtNomakeTools( \
    pixeltool \
    qtconfig \
    macdeployqt \
)
