# --- CẤU HÌNH KIẾN TRÚC ---
# Build cho các dòng iPhone 6s đến iPhone 15 Pro Max (arm64/arm64e)
export ARCHS = arm64 arm64e

# --- CẤU HÌNH MỤC TIÊU (TARGET) ---
# Sử dụng clang, nạp SDK iOS 14.5, hỗ trợ từ iOS 14.0 trở lên
export TARGET = iphone:clang:14.5:14.0

# --- CHẾ ĐỘ BUILD ---
# Tắt debug và bật tối ưu hóa gói cuối cùng để menu mượt hơn
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

# --- ĐƯỜNG DẪN THEOS ---
# Makefile sẽ tự hiểu THEOS từ môi trường GitHub Actions hoặc máy cục bộ
include $(THEOS)/makefiles/common.mk

# --- THÔNG TIN TWEAK ---
TWEAK_NAME = EliteLuxury

# Khai báo các file mã nguồn (đảm bảo file Tweak.xm nằm cùng thư mục)
EliteLuxury_FILES = Tweak.xm
# Thêm các thư viện hệ thống cần thiết cho WebView và UI
EliteLuxury_FRAMEWORKS = UIKit WebKit Foundation QuartzCore CoreGraphics

# --- CỜ BIÊN DỊCH (CFLAGS) ---
# -fobjc-arc: Quản lý bộ nhớ tự động
# -Wno-error: Bỏ qua các cảnh báo nhỏ để tránh dừng tiến trình build
EliteLuxury_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-error

# --- KẾT THÚC ---
include $(THEOS_MAKE_PATH)/tweak.mk

# Lệnh dọn dẹp sau khi build (Tùy chọn)
after-install::
	install.exec "killall -9 SpringBoard"
