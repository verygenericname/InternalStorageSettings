ARCHS = arm64 arm64e
TARGET := iphone:clang:16.5:14.5

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = InternalStorageSettings

InternalStorageSettings_FILES = InternalStorageSettings.m fishhook/fishhook.c
InternalStorageSettings_CFLAGS = -fobjc-arc
InternalStorageSettings_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries

include $(THEOS_MAKE_PATH)/library.mk
