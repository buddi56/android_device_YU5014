#
# Copyright 2019 The Android Open Source Project
# Copyright (C) 2019 The LineageOS Project
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

#
# System Properties for YU5014
#

# LCD density
ro.sf.lcd_density=320
 
# MediaTek
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.mediatek.chip_ver=S01 \
ro.mediatek.version.release=alps-mp-o1.mp1-V1.30_k39tv1.64.bsp_TMP3 \
ro.mediatek.platform=MT6739 \
ro.mediatek.version.branch=alps-trunk-o1.bsp \
ro.mediatek.wlan.p2p=1 \
ro.mediatek.wlan.wsc=1

# Graphics
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
     ro.opengles.version=196610

# IMS
#PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
#     persist.mtk.volte.enable=1 \
#     persist.mtk_ct_volte_support =1 \
#     persist.mtk_volte_support=1 \
#     persist.mtk_vilte_support=1 \
#     ro.mtk_lte_support=1 \
#     persist.radio.volte_state=1 
     	
# Telephony
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.telephony.default_network=9,9

# Playstore
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.com.google.clientidbase=android-micromax
     
# DRM
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.mtk_cta_drm_support=1 \
    ro.mtk_widevine_drm_l3_support=1 \
    drm.service.enabled=true
    
# Storage
ro.sys.usb.storage.type=mtp,adb	

#WiFi
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
mediatek.wlan.chip=CONSYS_MT6739 \
mediatek.wlan.module.postfix=_consys_mt6739 \
ro.mediatek.wlan.wsc=1 \
ro.mediatek.wlan.p2p=1 \
mediatek.wlan.ctia=0 \
wifi.tethering.interface=ap0 \
wifi.interface=wlan0 \
wifi.direct.interface=p2p0

#Adding for Debugging
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
persist.service.adb.enable=1 \
persist.service.debuggable=1 \
persist.sys.usb.config=mtp,adb \
ro.debuggable=1 \
ro.allow.mock.location=1 \
ro.adb.secure=0
ro.secure=0
