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

# Inherit some common krypton stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

#TARGET_BUILD_GRAPHENEOS_CAMERA := false
#PRODUCT_DEFAULT_DEV_CERTIFICATE := $(RELEASE_KEY)
#PRODUCT_OTA_PUBLIC_KEYS := $(RELEASE_KEY)

PRODUCT_NAME := cherish_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Cherish OS Stuffs
#CHERISH_BUILD_TYPE=OFFICIAL
WITH_GMS := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=Jayc-12
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
USE_PIXEL_CHARGING := true
TARGET_USES_BLUR := true
TARGET_GAPPS_ARCH := arm64

# Additional Pixel stuffs
TARGET_INCLUDE_CARRIER_SETTINGS := true
