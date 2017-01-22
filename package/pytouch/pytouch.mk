################################################################################
#
# pytouch 
#
################################################################################

PYTOUCH_VERSION = c0d3b2b123e9099d6b0729bf511e428149590656
PYTOUCH_SITE = git://github.com/scottellis/pytouch 
PYTOUCH_LICENSE = MIT
PYTOUCH_LICENSE_FILES = README.md

PYTOUCH_DEPENDENCIES = python-pyqt5 

define PYTOUCH_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/pytouch.py $(TARGET_DIR)/usr/bin 
endef

$(eval $(generic-package))
