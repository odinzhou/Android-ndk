LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# ��� ������ ������, ������� ����� ���������� � Java ��� ������ System.loadLibrary()
LOCAL_MODULE    := AndroidNDK

LOCAL_CFLAGS := -DANDROID_NDK  -Wno-psabi -DGL_GLEXT_PROTOTYPES=1

LOCAL_DEFAULT_CPP_EXTENSION := cpp

#������ ������, ������� ����� �������
LOCAL_SRC_FILES := MyNative.cpp 

#������ ��������� �� ndk, ������� ���� �������� � ������
LOCAL_LDLIBS :=  -llog -landroid

include $(BUILD_SHARED_LIBRARY)
