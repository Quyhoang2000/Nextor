ARCHS = arm64
TARGET = iphone:clang:latest:14.0
# Không được set đường dẫn toolchain cứng trong này
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EliteLuxury
EliteLuxury_FILES = Tweak.xm
EliteLuxury_FRAMEWORKS = UIKit WebKit Foundation
EliteLuxury_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
