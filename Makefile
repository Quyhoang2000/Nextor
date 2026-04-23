# Đảm bảo dùng kiến trúc arm64 cho iOS hiện đại
export ARCHS = arm64
# Target phù hợp với SDK đã tải
export TARGET = iphone:clang:14.5:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = EliteLuxury
# ... các dòng code khác của bạn ...
