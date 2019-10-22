# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common lineageos stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := YU5014

PRODUCT_DEVICE := YU5014
PRODUCT_NAME := lineage_YU5014
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU5014
PRODUCT_MANUFACTURER := YU

# Boot animation
TARGET_SCREEN_HEIGHT      := 1440
TARGET_SCREEN_WIDTH       := 720

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US
