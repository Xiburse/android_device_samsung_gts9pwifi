#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Characteristics
PRODUCT_CHARACTERISTICS := tablet

# Boot animation
TARGET_SCREEN_HEIGHT := 1752
TARGET_SCREEN_WIDTH := 2800

# Init
# 不敢改
PRODUCT_PACKAGES += \
    init.gts9wifi.rc

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResGts9wifi \
    SystemUIResGts9wifi \
    SettingsResGts9wifi

# WiFi firmware symlinks
PRODUCT_PACKAGES += \
    firmware_wlanmdsp.otaupdate_symlink \
    firmware_wlan_mac.bin_symlink \
    firmware_WCNSS_qcom_cfg.ini_symlink

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/samsung/sm8550-common/common.mk)

# Inherit from the proprietary files makefile.
# 修改vendor，后面需要改vendor库命名
$(call inherit-product, vendor/samsung/gts9pwifi/gts9pwifi-vendor.mk)
