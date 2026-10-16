#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# call the common setup
$(call inherit-product, device/samsung/sm7325-common/common.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/a52sxq/a52sxq-vendor.mk)

# Init files
PRODUCT_PACKAGES += \
    init.a52sxq.rc \
    wifi_firmware.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_diff.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_diff.xml \

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/display_id_4630947232161729154.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630947232161729154.xml

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

PRODUCT_PACKAGES += \
    sensors.a52sxq

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# UDFPS
$(call soong_config_set,samsungUdfpsVars,udfps_zorder,0x20000000u)
$(call soong_config_set,surfaceflinger,udfps_lib,//hardware/samsung/fingerprint:libudfps_extension.samsung)
