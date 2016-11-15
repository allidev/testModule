# Android.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := test-boost
LOCAL_SRC_FILES := test.cpp
#LOCAL_C_INCLUDES+= $(LOCAL_PATH)/../my_module/test-lib-boost
LOCAL_STATIC_LIBRARIES := test-lib-boost
include $(BUILD_EXECUTABLE)

$(call import-module,test-lib-boost)