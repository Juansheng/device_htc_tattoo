LOCAL_PATH := $(call my-dir)

# Make a static library for clearsilver's regex. This prevents multiple
# symbol definition error.
include $(CLEAR_VARS)
SRC_FILES := $(ANDROID_BUILD_TOP)/external/clearsilver/util/regex/regex.c
LOCAL_MODULE := libclearsilverregex
LOCAL_C_INCLUDES := \
	external/clearsilver \
	external/clearsilver/util/regex
include $(BUILD_STATIC_LIBRARY)


SUBMAKE := make -s -C $(LOCAL_PATH) CC=$(CC)
KERNEL_MODULES_DIR?=/system/modules/lib/modules

BUSYBOX_SRC_FILES = $(shell cat $(LOCAL_PATH)/busybox-$(BUSYBOX_CONFIG).sources) \
	libbb/android.c

ifeq ($(TARGET_ARCH),arm)
  BUSYBOX_SRC_FILES += \
    android/libc/arch-arm/syscalls/adjtimex.S \
    android/libc/arch-arm/syscalls/getsid.S \
    android/libc/arch-arm/syscalls/stime.S \
    android/libc/arch-arm/syscalls/swapon.S \
    android/libc/arch-arm/syscalls/swapoff.S \
    android/libc/arch-arm/syscalls/sysinfo.S
endif

BUSYBOX_C_INCLUDES = \
	$(LOCAL_PATH)/include-$(BUSYBOX_CONFIG) \
	$(LOCAL_PATH)/include $(LOCAL_PATH)/libbb \
	external/clearsilver \
	external/clearsilver/util/regex \
	bionic/libc/private \
	libc/kernel/common

BUSYBOX_CFLAGS = \
	-std=gnu99 \
	-Werror=implicit \
	-DNDEBUG \
	-DANDROID_CHANGES \
	-include include-$(BUSYBOX_CONFIG)/autoconf.h \
	-D'CONFIG_DEFAULT_MODULES_DIR="$(KERNEL_MODULES_DIR)"' \
	-D'BB_VER="$(strip $(shell $(SUBMAKE) kernelversion))$(BUSYBOX_CONFIG)"' -DBB_BT=AUTOCONF_TIMESTAMP


include $(CLEAR_VARS)
BUSYBOX_CONFIG:=full
LOCAL_SRC_FILES := $(BUSYBOX_SRC_FILES)
LOCAL_C_INCLUDES := $(BUSYBOX_C_INCLUDES)
LOCAL_CFLAGS := $(BUSYBOX_CFLAGS)
LOCAL_MODULE := busybox
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_STATIC_LIBRARIES += libclearsilverregex
include $(BUILD_EXECUTABLE)

# Build a static busybox for the recovery image
include $(CLEAR_VARS)
BUSYBOX_CONFIG:=minimal
LOCAL_SRC_FILES := $(BUSYBOX_SRC_FILES)
LOCAL_C_INCLUDES := $(BUSYBOX_C_INCLUDES)
LOCAL_CFLAGS := -Dmain=busybox_driver $(BUSYBOX_CFLAGS)
LOCAL_CFLAGS += \
  -Dgetusershell=busybox_getusershell \
  -Dsetusershell=busybox_setusershell \
  -Dendusershell=busybox_endusershell \
  -Dttyname_r=busybox_ttyname_r \
  -Dgetmntent=busybox_getmntent \
  -Dgetmntent_r=busybox_getmntent_r
LOCAL_MODULE := libbusybox
LOCAL_STATIC_LIBRARIES += libclearsilverregex libcutils libc libm 
include $(BUILD_STATIC_LIBRARY)
