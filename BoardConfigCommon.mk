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

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Audio
TARGET_AUDIOHAL_VARIANT := samsung

# Backlight
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# Binder
TARGET_USES_64_BIT_BINDER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_CUSTOM_BT_CONFIG := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt

# Camera
TARGET_USES_UNIVERSAL_LIBHWJPEG := true

# CPU 1
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := exynos-m1

# CPU 2
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53.a57

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/doubletap2wake"

# Device Tree
BOARD_USES_DT := true

# Display
BOARD_USES_EXYNOS5_COMMON_GRALLOC := true
USE_OPENGL_RENDERER := true

# Extended filesystem support
TARGET_EXFAT_DRIVER := sdfat

# FIMG
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_FIMGAPI_V5X := true

# H/W composer
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_USES_VPP := true
BOARD_USES_VPP_V2 := true
BOARD_HDMI_INCAPABLE := true

# Image (Extracted with libbootimg)
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image
#BOARD_KERNEL_CMDLINE := The bootloader ignores the cmdline from the boot.img
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
TARGET_LINUX_KERNEL_VERSION := 3.18

# Kernel Config
TARGET_KERNEL_SOURCE := kernel/samsung/universal8890

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Firmware
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# HWCServices - requires framework support
#BOARD_USES_HWC_SERVICES := true

# OpenMAX H/W en/decoder
BOARD_HAVE_CID_SUPPORT := true
BOARD_USE_MFC_MEDIA := true
# BOARD_USE_STOREMETADATA := -- not working due to invalid buffer handles
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := false
BOARD_USE_TIMESTAMP_REORDER_SUPPORT := true
BOARD_USE_DEINTERLACING_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true
BOARD_USE_HEVCDEC_SUPPORT := true
BOARD_USE_HEVCENC_SUPPORT := true
BOARD_USE_HEVC_HWIP := false
BOARD_USE_VP9DEC_SUPPORT := true
BOARD_USE_VP9ENC_SUPPORT := true
BOARD_USE_CUSTOM_COMPONENT_SUPPORT := true
BOARD_USE_VIDEO_EXT_FOR_WFD_HDCP := true
BOARD_USE_SINGLE_PLANE_IN_DRM := true

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := bsp
TARGET_BOOTLOADER_BOARD_NAME := universal8890

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/etc/fstab.samsungexynos8890

# Scaler
BOARD_USES_DEFAULT_CSC_HW_SCALER := true
BOARD_USES_DT := true
BOARD_USES_SCALER_M2M1SHOT := true
BOARD_USES_FIMG2D_M2M1SHOT2 := true
BOARD_USES_SCALER_LOCAL_CID := true
BOARD_USES_SCALER_PREMUL_FMT := true

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/lib64/libexynoscamera.so|/system/lib64/libexynoscamera_shim.so \
    /system/lib/libexynoscamera.so|/system/lib/libexynoscamera_shim.so \
    /system/lib64/libstagefright.so|libstagefright_shim.so \
    /system/lib/libstagefright.so|libstagefright_shim.so

# Vendor separation
TARGET_COPY_OUT_VENDOR := system/vendor

# Wifi
TARGET_USES_64_BIT_BCMDHD        := true
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WPA_SUPPLICANT_USE_HIDL          := true
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG

# WiFiDisplay
#BOARD_USES_VIRTUAL_DISPLAY := true -- depends on platform changes
BOARD_USES_VIRTUAL_DISPLAY_DECON_EXT_WB := false
BOARD_USE_VIDEO_EXT_FOR_WFD_DRM := false
BOARD_USES_VDS_BGRA8888 := true
BOARD_VIRTUAL_DISPLAY_DISABLE_IDMA_G0 := false

# Inherit from the proprietary version
include vendor/samsung/universal8890-common/BoardConfigVendor.mk
