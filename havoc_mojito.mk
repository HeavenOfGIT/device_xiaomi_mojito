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

# Inherit some common havoc stuff
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := havoc_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := google/coral/coral:11/RQ2A.210505.002/7246365:user/release-keys
BUILD_DISPLAY_ID := RQ2A.210505.003

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mojito-user 11 RKQ1.201022.002 V12.0.7.0.RKGMIXM release-keys" \
    PRODUCT_NAME="mojito"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Gapps
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64

# Build with GApps if GAPPS_BUILD is true
ifeq ($(GAPPS_BUILD),true)
    WITH_GAPPS := true
    TARGET_GAPPS_ARCH := arm64
    IS_PHONE := true
    TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
endif