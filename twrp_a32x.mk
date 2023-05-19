#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a32x device
$(call inherit-product, device/samsung/a32x/device.mk)


PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a32x/recovery/root,recovery/root)

PRODUCT_DEVICE := a32x
PRODUCT_NAME := twrp_a32x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A326B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a32xxx-user 11 RP1A.200720.012 A326BXXU1AUB6 release-keys"

BUILD_FINGERPRINT := samsung/a32xxx/a32x:11/RP1A.200720.012/A326BXXU1AUB6:user/release-keys
