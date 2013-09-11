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

        linguist.depends = designer
    }
}

SUBDIRS += linguist \
    qtplugininfo
!linguistonly: SUBDIRS +=  qdoc
if(!android|android_app):!ios:!linguistonly: SUBDIRS += qtpaths

mac {
    SUBDIRS += macdeployqt
}

android {
    SUBDIRS += androiddeployqt
}

!linguistonly:qtHaveModule(dbus): SUBDIRS += qdbus

win32|winrt:SUBDIRS += windeployqt
winrt:SUBDIRS += winrtrunner
!linguistonly:qtHaveModule(gui):!android:!ios:!qnx:!wince*:!winrt*:SUBDIRS += qtdiag

qtNomakeTools( \
    pixeltool \
    macdeployqt \
)
