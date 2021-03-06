#
# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2021 PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/aosp/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := aosp_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
#SELINUX_IGNORE_NEVERALLOWS=true

# maintainer flag
ARCANA_MAINTAINER := Jayc-12

# pixel build flag, if not define build type is vanilla
WITH_GAPPS := true

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := true

# prebuilt graphene camera flag, default is false
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# whether to copy apns-conf.xml to system
# (for devices having issues with TelephonyProvider: FileNotFoundException)
# default is false (product)
COPY_APN_SYSTEM := true
