
# When zero we link against libmmcamera; when 1, we dlopen libmmcamera.
DLOPEN_LIBMMCAMERA := 1

ifneq ($(BUILD_TINY_ANDROID),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := QualcommCameraHardware.cpp exifwriter.c jdatadst.cpp jpegConvert.cpp

LOCAL_CFLAGS := -DDLOPEN_LIBMMCAMERA=$(DLOPEN_LIBMMCAMERA) -O2

LOCAL_C_INCLUDES += \
    external/jhead \
    external/jpeg

LOCAL_SHARED_LIBRARIES := libbinder libutils libcamera_client liblog libjpeg

ifneq ($(DLOPEN_LIBMMCAMERA),1)
LOCAL_SHARED_LIBRARIES += libmmcamera libmm-qcamera-tgt
else
LOCAL_SHARED_LIBRARIES += libdl libexif
endif

LOCAL_MODULE := libcamera
include $(BUILD_SHARED_LIBRARY)

endif # BUILD_TINY_ANDROID
