#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit the common tree
$(call inherit-product, device/samsung/sm7325-common/common.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/samsung/a52sxq/a52sxq-vendor.mk)

# Audio - Configuration
PRODUCT_PACKAGES += \
    audio_platform_info_diff.xml \
    mixer_paths.xml

# Display - Configuration
PRODUCT_PACKAGES += \
    displayconfig.xml

# Fingerprint
$(call soong_config_set,samsungUdfpsVars,udfps_zorder,0x20000000u)
$(call soong_config_set,surfaceflinger,udfps_lib,//hardware/samsung/fingerprint:libudfps_extension.samsung)

# Init
PRODUCT_PACKAGES += \
    init.a52sxq.rc \
    wifi_firmware.rc

# NFC
TARGET_HAVE_SEC_NFC := true

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayDevice \
    SettingsOverlayDevice \
    SettingsProviderOverlayDevice \
    SystemUIOverlayDevice

# Sensors
PRODUCT_PACKAGES += \
    hals.conf \
    sensors.a52sxq

# Shipping level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)
