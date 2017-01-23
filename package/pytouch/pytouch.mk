################################################################################
#
# pytouch 
#
################################################################################

PYTOUCH_VERSION = master
PYTOUCH_SITE = git://github.com/scottellis/pytouch 
PYTOUCH_LICENSE = MIT

PYTOUCH_DEPENDENCIES = python-pyqt5 

define PYTOUCH_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/pytouch.py $(TARGET_DIR)/usr/bin 
endef

$(eval $(generic-package))
