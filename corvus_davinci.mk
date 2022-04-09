#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common spark stuff.
$(call inherit-product, vendor/corvus/config/common_full_phone.mk)

PRODUCT_NAME := corvus_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_SUPPORTS_QUICK_TAP := true

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_GAPPS_ARCH := arm64
FOD_ANIMATIONS := true
HAS_FOD := true
USE_GAPPS := true

# Corvus Maintainer
CORVUS_MAINTAINER=Jayc_12

# Fingerprint

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="davinci" \
    PRODUCT_NAME="davinci" \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220305.013.A3 8229987 release-keys"

BUILD_FINGERPRINT :="google/raven/raven:12/SP2A.220305.013.A3/8229987:user/release-keys"
