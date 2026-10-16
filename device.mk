#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common makefiles
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit the common tree
$(call inherit-product, device/samsung/sm7325-common/common.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/samsung/a52sxq/a52sxq-vendor.mk)

# Audio - Configuration
PRODUCT_PACKAGES += \
    audio_platform_info_diff.xml \
    mixer_paths.xml

# Branding
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

# Display - Configuration
PRODUCT_PACKAGES += \
    display_id_4630947232161729154.xml

# Fingerprint
$(call soong_config_set,samsungUdfpsVars,udfps_zorder,0x20000000u)
$(call soong_config_set,surfaceflinger,udfps_lib,//hardware/samsung/fingerprint:libudfps_extension.samsung)

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Init
PRODUCT_PACKAGES += \
    init.a52sxq.rc \
    wifi_firmware.rc

# Media
TARGET_SUPPORTS_OMX_SERVICE := false

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
