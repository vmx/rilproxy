ifeq ($(TARGET_ARCH_ABI),armeabi)
    STATIC_LIB_PATH := "$(AOSP_ROOT)/out/target/product/generic/system/lib"
else
    ifeq ($(TARGET_ARCH_ABI),x86)
        STATIC_LIB_PATH := "$(AOSP_ROOT)/out/target/product/generic_x86/system/lib"
    endif
endif

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SRC_FILES:= rilproxy.c
LOCAL_C_INCLUDES := "$(AOSP_ROOT)/system/core/include/"
LOCAL_LDLIBS := -llog -lcutils -L$(STATIC_LIB_PATH)
LOCAL_MODULE:= rilproxy
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)

APP_ALLOW_MISSING_DEPS=true
