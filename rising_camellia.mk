#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/camellia/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/rising/config/common_full_phone.mk)

# RisingOS flags
RISING_CHIPSET := MT6833
RISING_MAINTAINER := diksy9
WITH_GMS := false
TARGET_PREBUILT_PIXEL_LAUNCHER := false
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_QUICK_TAP := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rising_camellia
PRODUCT_DEVICE := camellia
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="camellia-user 13 TP1A.220624.014 V14.0.6.0.TKTMIXM release-keys"

BUILD_FINGERPRINT := Redmi/camellia/camellia:12/SP1A.210812.016/V14.0.6.0.TKTMIXM:user/release-keys
