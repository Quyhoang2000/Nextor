export ARCHS = arm64
# Đừng viết "latest", hãy chỉ định rõ SDK nếu có thể để ổn định
export TARGET = iphone:clang:14.5:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EliteLuxury
EliteLuxury_FILES = Tweak.xm
EliteLuxury_FRAMEWORKS = UIKit WebKit Foundation
EliteLuxury_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
