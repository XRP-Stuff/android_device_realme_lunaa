# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lunaa device
$(call inherit-product, device/realme/lunaa/device.mk)

# Inherit some common blaze stuff
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Blaze Official Stuff
BLAZE_MAINTAINER := itsXRP
BLAZE_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USE_PIXEL_CHARGER := true
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
EXTRA_UDFPS_ANIMATIONS := true

#Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := blaze_lunaa
PRODUCT_DEVICE := lunaa
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3360

PRODUCT_SYSTEM_NAME := RE54ABL1
PRODUCT_SYSTEM_DEVICE := RE54ABL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3360-user 13 TP1A.220905.001 R.12be919_4c6e-5d979 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_NAME) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3360/RE54ABL1:13/TP1A.220905.001/R.12be919_4c6e-5d979:user/release-keys
