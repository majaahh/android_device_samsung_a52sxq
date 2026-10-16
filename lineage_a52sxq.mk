#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configuration
$(call inherit-product, device/samsung/a52sxq/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Device identifiers
PRODUCT_NAME := lineage_a52sxq
PRODUCT_DEVICE := a52sxq
PRODUCT_MODEL := SM-A528B

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="samsung/a52sxqxx/a52sxq:11/RP1A.200720.012/A528BXXUAGXK8:user/release-keys" \
    BuildDesc="a52sxqxx-user 11 RP1A.200720.012 A528BXXUAGXK8 release-keys"
