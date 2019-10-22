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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from YU YU5014
$(call inherit-product, device/YU/YU5014/device.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Bootanimation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1440

PRODUCT_NAME := lineage_YU5014
PRODUCT_DEVICE := YU5014
PRODUCT_MANUFACTURER := YU
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU5014

PRODUCT_GMS_CLIENTID_BASE := android-micromax

TARGET_VENDOR_PRODUCT_NAME := YU5014
TARGET_VENDOR_DEVICE_NAME := YU5014

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="YU5014" \
    PRODUCT_NAME="YU5014" \
    PRIVATE_BUILD_DESC="YU5014-user 8.1.0 O11019 1543909657 release-keys"

BUILD_FINGERPRINT := "YU/YU5014/YU5014:8.1.0/O11019/1543909657:user/release-keys"

