#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi

TARGET_NO_RECOVERY := true
TARGET_NO_BOOTLOADER := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libWifiApi
BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/sta_dk_4_0_4_32
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "wlan"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

TARGET_BOOTLOADER_BOARD_NAME := bahamas

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x02E00000

BOARD_HAVE_BLUETOOTH := true

BOARD_VENDOR_QCOM_AMSS_VERSION := 1355

TARGET_HARDWARE_3D := false

BOARD_GPS_LIBRARIES := libgps librpc

BOARD_EGL_CFG := device/htc/tattoo/egl.cfg

# AOSP su replaced with Zinx Superuser package
BUILD_OLD_SU := false

# Busybox, DO NOT link to anything
KERNEL_MODULES_DIR := /system/lib/modules
BUILD_BUSYBOX_EXTRA := false

# JIT built in, but disabled by default
WITH_JIT := true
ENABLE_JSC_JIT := true

# Stop compiling test_* binaries for eng tag
STOP_TEST_BINS := true

# Stagefright fully enabled
BUILD_WITH_FULL_STAGEFRIGHT := true

# No authoring clock for OpenCore
BOARD_NO_PV_AUTHORING_CLOCK := true

# Use QCOM libOmxCore.so
BOARD_USES_QCOM_LIBS := true

# Changed for Tattoo
BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00280000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00500000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x09600000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x0a520000)

# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 153600

