ARCHS=arm64
TARGET := iphone:clang:latest:11.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = WidgetTest
WidgetTest_BUNDLE_EXTENSION = bundle
WidgetTest_FILES = WidgetTest.m
WidgetTest_CFLAGS = -fobjc-arc
WidgetTest_FRAMEWORKS = UIKit
WidgetTest_PRIVATE_FRAMEWORKS = ControlCenterUIKit
WidgetTest_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
