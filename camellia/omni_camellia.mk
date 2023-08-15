#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
PRODUCT_RELEASE_NAME := camellia



# Inherit some common Twrp stuff.
	LOCAL_KERNEL := device/xiaomi/camellia/prebuilt/Image.gz-dtb
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, device/xiaomi/camellia/cac.mk)
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := camellia
PRODUCT_NAME := omni_camellia
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2103K19C
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_RELEASE_NAME := Redmi M2103K19C
PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.product.device=casuarina
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=mt6833 \
    ro.hardware.gatekeeper=mt6833

BUILD_FINGERPRINT := Redmi/camellia/camellia:12/SP1A.210812.016/V13.0.6.0.SKSINXM:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=camellia \
    PRODUCT_NAME=camellia
LOCAL_PATH := device/xiaomi/camellia
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true
