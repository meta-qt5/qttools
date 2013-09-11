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
if(!android|android_app):!linguistonly:!ios: SUBDIRS += qtpaths

mac {
    SUBDIRS += macdeployqt
}

android {
    SUBDIRS += androiddeployqt
}

!linguistonly:qtHaveModule(dbus): SUBDIRS += qdbus

win32|winrt:SUBDIRS += windeployqt
winrt:SUBDIRS += winrtrunner qtd3dservice
!linguistonly:qtHaveModule(gui):!android:!ios:!qnx:!wince*:!winrt*:SUBDIRS += qtdiag

qtNomakeTools( \
    pixeltool \
    qtconfig \
    macdeployqt \
)
