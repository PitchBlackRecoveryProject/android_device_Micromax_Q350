#
# Copyright (C) 2020 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit some common Omni+PB stuff.
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_COPY_FILES += device/Micromax/Q350/prebuilt/Image.gz:kernel

# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

# Set the main device brand flags
PRODUCT_DEVICE := Q350
PRODUCT_NAME := omni_Q350
PRODUCT_BRAND := Micromax
PRODUCT_MODEL := Micromax Canvas Spark 2 Plus
PRODUCT_MANUFACTURER := Micromax

# adb is there, so just add mtp for now
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Micromax/Q350/Q350:6.0/MRA58K/1457508264:user/release-keys" \
    PRIVATE_BUILD_DESC="full_v2800-user 6.0 MRA58K 1459338189 release-keys"

# try force addition of fingerprint
BUILD_FINGERPRINT := "Micromax/Q350/Q350:6.0/MRA58K/1457508264:user/release-keys"
