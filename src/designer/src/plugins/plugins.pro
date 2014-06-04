TEMPLATE = subdirs

# qtHaveModule(opengl): SUBDIRS += tools/view3d
qtHaveModule(webkitwidgets):!contains(QT_CONFIG, noqtwebkit): SUBDIRS += qwebview
win32: qtHaveModule(axcontainer): SUBDIRS += activeqt
qtHaveModule(quickwidgets): SUBDIRS += qquickwidget
