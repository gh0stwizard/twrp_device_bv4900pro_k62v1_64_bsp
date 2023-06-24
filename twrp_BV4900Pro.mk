#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_arm64.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_system.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from fleur device
$(call inherit-product, device/blackview/BV4900Pro/device.mk)

PRODUCT_DEVICE := BV4900Pro
PRODUCT_NAME := twrp_BV4900Pro
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := BV4900Pro
PRODUCT_MANUFACTURER := Blackview

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=BV4900Pro \
    PRODUCT_NAME=BV4900Pro \
    PRIVATE_BUILD_DESC="sys_mssi_64_ww-user 12 SP1A.210812.016 1rck61v164bspP36 release-keys"

BUILD_FINGERPRINT := Blackview/BV4900Pro/BV4900Pro:12/SP1A.210812.016/1679576071:user/release-keys
