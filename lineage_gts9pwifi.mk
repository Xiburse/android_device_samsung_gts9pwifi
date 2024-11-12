#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from gts9pwifi device
# 已做出修改
$(call inherit-product, device/samsung/gts9pwifi/device.mk)

PRODUCT_DEVICE := gts9pwifi
PRODUCT_NAME := lineage_gts9pwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X810
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list,"gts9pwifixx-user 14 UP1A.231005.007 X810XXU4BXHB release-keys")

BUILD_FINGERPRINT := samsung/gts9pwifixx/gts9pwifi:14/UP1A.231005.007/X810XXU4BXHB:user/release-keys
