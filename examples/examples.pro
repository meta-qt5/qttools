TEMPLATE = subdirs
!linguistonly:!isEmpty(QT.widgets.name): SUBDIRS += help designer assistant
!isEmpty(QT.widgets.name): SUBDIRS += linguist uitools

