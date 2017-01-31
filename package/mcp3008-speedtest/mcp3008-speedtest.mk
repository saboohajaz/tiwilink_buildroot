################################################################################
#
# mcp3008-speedtest
#
################################################################################

MCP3008_SPEEDTEST_VERSION = master
MCP3008_SPEEDTEST_SITE = git://github.com/scottellis/mcp3008-speedtest
MCP3008_SPEEDTEST_LICENSE = MIT
MCP3008_SPEEDTEST_LICENSE_FILES = LICENSE

define MCP3008_SPEEDTEST_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define MCP3008_SPEEDTEST_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/mcp3008-speedtest $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
