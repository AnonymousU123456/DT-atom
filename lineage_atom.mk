#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit from atom device
$(call inherit-product, device/xiaomi/atom/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

EVO_BUILD_TYPE := UNOFFICIAL
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_MINI_GAPPS := true
PRODUCT_DEFAULT_DEV_CERTIFICATE := build/make/target/product/security/releasekey

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_atom
PRODUCT_DEVICE := atom
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2004J7AC
PRODUCT_MANUFACTURER := Xiaomi
DEVICE_MAINTAINER := XJLe,MouRen123456,Xayah,Raspberry-Monster,Laulan56
RISING_MAINTAINER=MouRen123456

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="atom"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
