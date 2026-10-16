#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common board configuration
include device/samsung/sm7325-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/a52sxq

# Display
TARGET_SCREEN_DENSITY := 450

# Fingerprint
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U | 0x400000000LL
SOONG_CONFIG_qtidisplay_udfps := true

# Installer
TARGET_ANDROID_INFO_EXTRA_FILE := $(DEVICE_PATH)/configs/installer/android-info-extra.txt
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/configs/installer/board-info.txt

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/props/vendor.prop

# Security
VENDOR_SECURITY_PATCH := 2024-11-01
