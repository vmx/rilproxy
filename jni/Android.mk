AOSP_ROOT := /home/vmx/src/c/b2g/asop

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SRC_FILES:= rilproxy.c
LOCAL_C_INCLUDES := "$(AOSP_ROOT)/system/core/include/" "$(AOSP_ROOT)/hardware/ril/include" "$(AOSP_ROOT)/frameworks/base/include" "${NDK}/sources/cxx-stl/system/include/" "$(AOSP_ROOT)/frameworks/av/include" "$(AOSP_ROOT)/hardware/libhardware/include" "$(AOSP_ROOT)/system/media/audio/include" "$(AOSP_ROOT)/frameworks/native/include"
LOCAL_LDLIBS := -llog -lcutils -L"/home/vmx/src/c/b2g/asop/out/target/product/generic/system/lib"
#LOCAL_LDLIBS := -llog -lcutils
#LOCAL_LDFLAGS := -L/home/vmx/src/c/b2g/asop/out/target/product/generic/obj/STATIC_LIBRARIES/libcutils_intermediates
#LOCAL_SHARED_LIBRARIES := libcutils liblog
LOCAL_MODULE:= rilproxy
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)

APP_ALLOW_MISSING_DEPS=true
