include $(TOPDIR)/rules.mk

PKG_NAME:=math_prog3
PKG_RELEASE:=1
PKG_VERSION:=1.0.0
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/javainius/math_prog3.git
PKG_SOURCE_VERSION:=12ea05daffefdf36c7ec123751c85fa43e676659

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
