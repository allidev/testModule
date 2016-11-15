# Android.mk

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE           := test-lib-boost
LOCAL_CPPFLAGS         += -D_GLIBCXX_USE_CXX11_ABI=0
LOCAL_SRC_FILES        := universalPath.cpp
LOCAL_STATIC_LIBRARIES := boost_system_static boost_filesystem_static
# Or, if you need to link with Boost Serialization library dynamically:
#LOCAL_SHARED_LIBRARIES := boost_serialization_shared

# Ensure our dependees can include &lt;bar.h&gt; too
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)
include $(BUILD_STATIC_LIBRARY)

$(call import-module,boost/1.59.0)