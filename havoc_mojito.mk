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
BUILD_DISPLAY_ID :=  RKQ1.201022.002
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mojito

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