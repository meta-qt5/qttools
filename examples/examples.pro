TEMPLATE = subdirs
!linguistonly:qtHaveModule(widgets): SUBDIRS += help designer assistant
qtHaveModule(widgets): SUBDIRS += linguist uitools
