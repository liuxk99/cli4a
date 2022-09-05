# Copyright 2008 The Android Open Source Project
#
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(call all-subdir-java-files)
LOCAL_MODULE := hellolib
LOCAL_MODULE_STEM := hello
include $(BUILD_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := CLI4A
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES := hello
LOCAL_REQUIRED_MODULES := hellolib
include $(BUILD_PREBUILT)
