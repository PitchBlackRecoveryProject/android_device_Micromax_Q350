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

LOCAL_PATH := device/Micromax/Q350

TARGET_BOARD_PLATFORM := mt6580
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MMX_Q350_SW_V08

# MTK Stuff
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI),$(TARGET_CPU_ABI2)

ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 0

BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_CHARGER_SHOW_PERCENTAGE := true
# Fix for slow eMMC
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_SUPPRESS_EMMC_WIPE := true

# TWRP stuff
TW_THEME := portrait_hdpi
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_SECONDARY_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
# TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80

TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_FUSE_EXFAT := true
TWRP_INCLUDE_LOGCAT := true
TW_INCLUDE_FB2PNG := true
TW_DEFAULT_LANGUAGE := en
TW_EXTRA_LANGUAGES := false

RECOVERY_SDCARD_ON_DATA := true
TW_ALLOW_PARTITION_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE = 0x80000000
BOARD_RAMDISK_OFFSET = 0x04000000
BOARD_KERNEL_OFFSET = 0x00008000
BOARD_TAGS_OFFSET = 0x0e000000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --board $(TARGET_BOOTLOADER_BOARD_NAME)

# PitchBlack Recovery Variant is GO Edition
PB_GO := true
