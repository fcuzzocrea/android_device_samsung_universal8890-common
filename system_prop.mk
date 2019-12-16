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

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio_hal.force_voice_config=wide \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0    

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path="/efs/bluetooth/bt_addr" \
    qcom.bluetooth.soc=rome

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.opengles.version=196610 \
    ro.sf.lcd_density=560 \
    debug.hwc.winupdate=1 \
    debug.hwc.otf=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3

# LKMD
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.log_stats=true \
    ro.lmk.low=1001 \
    ro.lmk.medium=800 \
    ro.lmk.critical=0 \
    ro.lmk.critical_upgrade=false \
    ro.lmk.upgrade_pressure=100 \
    ro.lmk.downgrade_pressure=100 \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.kill_timeout_ms=100 \
    ro.lmk.use_minfree_levels=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=0

# MMS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.mms_data_profile=5 \

# Network
# Define default initial receive window size in segments.
PRODUCT_PROPERTY_OVERRIDES += \
    net.tcp.default_init_rwnd=60
    
# NFC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.fw_dl_on_boot=false \
    ro.nfc.port="I2C"

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.telephony.default_network=9 \
    ro.ril.gprsclass=10 \
    ro.ril.hsxpa=1 \
    persist.data.netmgrd.qos.enable=false \
    ro.use_data_netmgrd=false \
    ro.ril.telephony.mqanelements=6 \
    telephony.lteOnGsmDevice=1 \
    telephony.lteOnCdmaDevice=0 \
    ro.telephony.get_imsi_from_sim=true \
    ro.ril.force_eri_from_xml=true \
    net.tethering.noprovisioning=true \
    ro.debug_level=0x494d \
    rild.libpath=/system/lib64/libsec-ril.so \
    rild.libargs=-d /dev/umts_ipc0 \
    vendor.sec.rild.libpath=/vendor/lib64/libsec-ril.so \
    vendor.sec.rild.libpath2=/vendor/lib64/libsec-ril-dsds.so

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.ffs.aio_compat=1

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
	
# WiFi Display
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.direct.interface=p2p-dev-wlan0 \
    persist.debug.wfd.enable=1
