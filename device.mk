#
# Copyright (C) 2018 The Android Open-Source Project
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

DEVICE_PATH := device/YU/YU5014


# Get non-open-source specific aspects
$(call inherit-product, vendor/YU/YU5014/YU5014-vendor.mk)

# Common stuff
#$(call inherit-product, device/mediatek/mt6739-common/mt6739.mk)


# Assert
TARGET_OTA_ASSERT_DEVICE := YU5014

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
endif

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

PRODUCT_COPY_FILES += \
        $(call find-copy-subdir-files,*,${LOCAL_PATH}/audio,system/etc)
        
# FMRadio
PRODUCT_PACKAGES += \
    FMRadio
        
# Power
PRODUCT_PACKAGES += \
    power.mt6739

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# Display
PRODUCT_AAPT_CONFIG := normal xhdpi 
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0 \
    lights.mt6739

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0
   
# Bluetooth
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/bluetooth,system/etc/bluetooth) 
    
# Telephony
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/telephony,system/etc)
    
# Power
PRODUCT_PACKAGES += \
    power.mt6739

# Power
PRODUCT_PACKAGES += \
    sensors.mt6739
    
# Keyboard layout
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/keylayout,system/usr/keylayout)
  
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg
    
# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/misc/clatd.conf:system/etc/clatd.conf \
    $(LOCAL_PATH)/misc/custom.conf:system/etc/custom.conf

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl-mediatek
     
# Init
PRODUCT_PACKAGES += \
    init.target.rc
