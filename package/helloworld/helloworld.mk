
HELLOWORLD_SOURCE = helloworld.js
HELLOWORLD_SITE = https://google.com #just to ignore buildroot errors

define HELLOWORLD_EXTRACT_CMDS
	cp $(DL_DIR)/$(HELLOWORLD_SOURCE) $(@D)
	read -p "tata..."
endef

define HELLOWORLD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/$(HELLOWORLD_SOURCE) \
		$(TARGET_DIR)/opt/helloworld.js
	read -p "toto..."
endef

$(eval $(generic-package))
