LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_ARM_MODE := arm
LOCAL_MODULE := isthumb_o2
LOCAL_SRC_FILES := isthumb.c
LOCAL_CFLAGS := -O2
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_ARM_MODE := arm
LOCAL_MODULE := isthumb_o0
LOCAL_SRC_FILES := isthumb.c
LOCAL_CFLAGS := -O0
include $(BUILD_EXECUTABLE)