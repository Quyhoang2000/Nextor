🏆 Elite Luxury v4.8 - Hybrid Menu
Elite Luxury là một tweak menu dành cho iOS được thiết kế với kiến trúc Hybrid. Tweak cho phép nạp giao diện trực tiếp từ Server (Online) để cập nhật tính năng từ xa và hỗ trợ xác thực, đồng thời tự động chuyển sang chế độ nội bộ (Offline) khi không có kết nối internet.

✨ Tính năng nổi bật
🌐 Hybrid Loading: Tự động phát hiện trạng thái mạng để nạp giao diện phù hợp.

⚡ High Performance: Tối ưu hóa trên WKWebView, giảm thiểu giật lag khi chơi game.

🖱️ Smart Float Button: Nút nổi có thể kéo thả, hỗ trợ ẩn/hiện menu tức thì.

🛠️ H5GG Ready: Tương thích hoàn toàn với engine h5gg để can thiệp bộ nhớ game.

🛡️ Anti-Crash: Xử lý lỗi nạp trang (Error loading page) triệt để trên iOS 14 - 18.

📂 Cấu trúc dự án
.github/workflows/main.yml: Quy trình tự động đóng gói file .deb.

Tweak.xm: Mã nguồn chính điều khiển logic Menu và Bridge.

Makefile: Cấu hình biên dịch dự án.

control: Thông tin định danh gói cài đặt.

EliteLuxury.plist: Danh sách các App mà tweak sẽ tiêm vào.

🚀 Hướng dẫn Build (GitHub Actions)
Fork dự án này về tài khoản của bạn.

Chỉnh sửa link onlineURL trong file Tweak.xm thành link menu của bạn.

Nhấn Commit changes.

Chuyển sang tab Actions trên GitHub để nhận file .deb sau khoảng 2 phút.

🛠️ Yêu cầu hệ thống
Thiết bị: iPhone/iPad đã Jailbreak hoặc sử dụng các công cụ Sideload (ESign, Sideloadly).

Phiên bản iOS: iOS 14.0 đến iOS 18.5.

Công cụ build: Theos hoặc GitHub Actions.

📜 Giấy phép & Tuyên bố
Dự án được thực hiện nhằm mục đích nghiên cứu và học tập về WebKit Injection trên iOS.

Author: QuyHoang

Version: 4.8 (Elite Edition)

💡 Mẹo nhỏ

Để tương tác mượt nhất, hãy đảm bảo link Online của bạn sử dụng giao thức HTTPS. Nếu sử dụng GitHub Pages để host menu, hãy bật tính năng Enforce HTTPS trong cài đặt Repo.
