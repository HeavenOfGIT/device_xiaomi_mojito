#
# Copyright (C) 2021 havocOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some common Extended stuff
$(call inherit-product, vendor/aosp/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Inherit GMS, Pixel Features, and Modules
-include vendor/google/gms/config.mk
DONT_DEXPREOPT_PREBUILTS := true

# Pixel Features
-include vendor/google/pixel/config.mk

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := google/coral/coral:11/RQ2A.210505.002/7246365:user/release-keys
BUILD_DISPLAY_ID := RQ2A.210505.002

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mojito-user 11 RKQ1.201022.002 V12.0.7.0.RKGMIXM release-keys" \
    PRODUCT_NAME="mojito"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# GApps
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true