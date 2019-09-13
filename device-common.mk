#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/universal8890-common

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.universal8890 \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl.8890 \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    camera.device@3.2-impl \
    camera.device@1.0-impl

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-impl \
    android.hardware.configstore@1.0-service
    
# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service
    
# Flat device tree for boot image
PRODUCT_PACKAGES += \
    dtbhtoolExynos

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl.8890 \
    android.hardware.gnss@1.0-service

# Graphics
PRODUCT_PACKAGES += \
    libion_exynos \
    libfimg \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    libhwc2on1adapter

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Keymaster
PRODUCT_PACKAGES += \
    keystore.exynos8890 \
    gatekeeper.exynos8890 \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service
    
# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.samsung


# Livedisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service.samsung-exynos

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# Memory
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl
    
# Offmode charger
# Use LineageOS images if available, aosp ones otherwise
PRODUCT_PACKAGES += \
    charger_res_images \
    lineage_charger_res_images

# Power
PRODUCT_PACKAGES += \
    power.exynos5 \
    android.hardware.power@1.0-service \
    android.hardware.power@1.0-impl

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.samsungexynos8890 \
    init.baseband.rc \
    init.baseband.sh \
    init.bluetooth.rc \
    init.samsung.rc \
    init.samsungexynos8890.rc \
    init.samsungexynos8890.usb.rc \
    init.recovery.samsungexynos8890.rc \
    init.wifi.rc \
    init.gps.rc \
    ueventd.samsungexynos8890.rc

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl
    
# Seccomp filters
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy 

# Samsung
PRODUCT_PACKAGES += \
    libsamsung_symbols \
    SamsungServiceMode

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service
    
# Shims
PRODUCT_PACKAGES += \
    libexynoscamera_shim \
    libstagefright_shim

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Thermal
PRODUCT_PACKAGES += \
    thermal.universal8890

# Touch features
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Wifi
PRODUCT_PACKAGES += \
    macloader \
    wifiloader \
    hostapd \
    wificond \
    wifilogd \
    wlutil \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-impl

# Properties
-include $(LOCAL_PATH)/system_prop.mk

# call Samsung LSI board support package
ifneq ($(WITH_EXYNOS_BSP),)
$(call inherit-product, hardware/samsung_slsi/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi/exynos8890/exynos8890.mk)
endif

# call the proprietary setup
$(call inherit-product, vendor/samsung/universal8890-common/universal8890-common-vendor.mk)
