include $(TOPDIR)/rules.mk

PKG_NAME:=math_prog3
PKG_RELEASE:=1
PKG_VERSION:=1.0.0

include $(INCLUDE_DIR)/package.mk

define Package/math_prog3
	CATEGORY:=Base system
	TITLE:=math_prog3
endef

define Package/math_prog3/description
	This is an example app package which uses an example library package
endef

define Package/math_prog3/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/math_prog3 $(1)/usr/bin
endef

$(eval $(call BuildPackage,math_prog3))
