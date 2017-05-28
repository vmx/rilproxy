# Copyright 2006 The Android Open Source Project

AOSP_ROOT := /home/vmx/src/c/b2g/asop

LOCAL_PATH:= $(call my-dir)
#include $(CLEAR_VARS)
#LOCAL_SRC_FILES:= src/b2g-dialer-daemon.c
#LOCAL_C_INCLUDES := "$(AOSP_ROOT)/system/core/include/" "$(AOSP_ROOT)/hardware/ril/include" "$(AOSP_ROOT)/frameworks/base/include" "${NDK}/sources/cxx-stl/system/include/" "$(AOSP_ROOT)/frameworks/av/include" "$(AOSP_ROOT)/hardware/libhardware/include" "$(AOSP_ROOT)/system/media/audio/include" "$(AOSP_ROOT)/frameworks/native/include"
#LOCAL_LDLIBS := -llog -lcutils -L"/home/vmx/src/c/b2g/asop/out/target/product/generic/system/lib"
#LOCAL_MODULE:= b2g-dialer-daemon
#LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
#LOCAL_MODULE_TAGS := eng
#include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= src/b2g-dialer-forward.cpp
LOCAL_C_INCLUDES := "$(AOSP_ROOT)/system/core/include/" "$(AOSP_ROOT)/hardware/ril/include" "$(AOSP_ROOT)/frameworks/base/include" "$(AOSP_ROOT)/frameworks/av/include" "$(AOSP_ROOT)/hardware/libhardware/include" "$(AOSP_ROOT)/system/media/audio/include" "$(AOSP_ROOT)/frameworks/native/include" "$(AOSP_ROOT)/libnativehelper/include"
#LOCAL_LDLIBS := -llog -lcutils -L"/home/vmx/src/c/b2g/asop/out/target/product/generic/system/lib"
LOCAL_CPPFLAGS := -std=c++11
LOCAL_CFLAGS := -Wno-gnu-designator
#LOCAL_SHARED_LIBRARIES := libcutils liblog libmedia libutils libbinder
LOCAL_LDLIBS := -llog -lcutils -L"/home/vmx/src/c/b2g/asop/out/target/product/generic/system/lib"
LOCAL_MODULE:= b2g-dialer-forward
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)

APP_ALLOW_MISSING_DEPS=true
