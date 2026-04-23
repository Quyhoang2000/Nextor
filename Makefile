ARCHS = arm64
TARGET = iphone:clang:latest:14.0
# Đảm bảo không dùng các đường dẫn toolchain cứng nhắc trong Makefile
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EliteLuxury
EliteLuxury_FILES = Tweak.xm
EliteLuxury_FRAMEWORKS = UIKit WebKit Foundation
# Cờ quan trọng để bỏ qua lỗi protocol và tương thích SDK mới
EliteLuxury_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-protocol -Wno-error

include $(THEOS_MAKE_PATH)/tweak.mk
