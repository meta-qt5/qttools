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
!android|android_app: SUBDIRS += qtpaths

mac {
    SUBDIRS += macdeployqt
}

android {
    SUBDIRS += androiddeployqt
}

!linguistonly:qtHaveModule(dbus): SUBDIRS += qdbus

win32|winrt:SUBDIRS += windeployqt

qtNomakeTools( \
    pixeltool \
    qtconfig \
    macdeployqt \
)
