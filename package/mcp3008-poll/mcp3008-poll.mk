################################################################################
#
# mcp3008-poll
#
################################################################################

MCP3008_POLL_VERSION = master
MCP3008_POLL_SITE = git://github.com/scottellis/mcp3008-poll
MCP3008_POLL_LICENSE = MIT
MCP3008_POLL_LICENSE_FILES = LICENSE

define MCP3008_POLL_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define MCP3008_POLL_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/mcp3008-poll $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
