################################################################################
#
# tspress
#
################################################################################

TSPRESS_VERSION = master
TSPRESS_SITE = git://github.com/scottellis/tspress 
TSPRESS_LICENSE = MIT

TSPRESS_DEPENDENCIES = qt5base

define TSPRESS_CONFIGURE_CMDS
	cd $(@D); $(TARGET_MAKE_ENV) $(HOST_DIR)/usr/bin/qmake
endef

define TSPRESS_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define TSPRESS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/tspress $(TARGET_DIR)/usr/bin 
endef

$(eval $(generic-package))
