KIỂM TRA THỰC HÀNH:
JAVA WEB APPLICATION (SPRING MVC)
● Thời gian: 45 phút
● Chủ đề: Quản lý nội bộ hệ thống Book Store
I. Yêu cầu môi trường & nộp bài:
1. Môi trường: Spring MVC (Jakarta EE), Gradle, Apache Tomcat 10+, Thymeleaf,
   Thymeleaf Standard Dialect, Thymeleaf Layout Dialect.
2. Định dạng: Dự án được cấu hình để triển khai dưới dạng file WAR.
3. Quy tắc đặt tên & Nộp bài: Repository Github đặt tên theo mẫu: [Tên lớp]_[Họ
   Tên].
   ○ Sinh viên push toàn bộ mã nguồn lên Github và nộp link đúng thời hạn.
   II. YÊU CẦU CHI TIẾT
1. Cấu trúc và Cấu hình (30 điểm)
   ● Thiết lập dự án theo mô hình MVC với các package riêng biệt: controller, model,
   config.
   ● Cấu hình đầy đủ các Dependency cần thiết cho Spring MVC và công cụ xử lý giao
   diện Thymeleaf.
   ● Đảm bảo View Resolver hoạt động đúng để nhận diện các tệp tin HTML trong thư
   mục bảo mật (WEB-INF).
2. Xây dựng Model (10 điểm)
   ● Tạo lớp Book để quản lý thông tin gồm: mã số (int), tên sách, tác giả và giá bán
   (double).
   ● Lớp Model phải tuân thủ đúng chuẩn Java Bean (Constructor, Getter, Setter).
3. Xử lý Controller (25 điểm)
   Xây dựng BookController điều hướng các yêu cầu sau:
   ● Trang danh sách (/books): Khởi tạo dữ liệu mẫu (ít nhất 4 đối tượng sách), chuyển
   dữ liệu sang Model và điều hướng về trang hiển thị danh sách.
   ● Trang chi tiết (/books/{id}): Tiếp nhận mã định danh từ đường dẫn URL, tìm kiếm
   sách tương ứng trong dữ liệu mẫu và truyền đối tượng tìm được sang trang chi tiết.
4. Xây dựng Giao diện & Tổ chức Layout (20 điểm)
   ● Phân tách Fragment: Yêu cầu không viết lặp lại mã nguồn HTML. Sinh viên phải
   tách các thành phần dùng chung (như Header, Footer) thành các mảnh (Fragment)
   riêng biệt và thực hiện nhúng vào các trang chính.
   ● Trang danh sách: Hiển thị dữ liệu dưới dạng bảng. Mỗi dòng dữ liệu phải có liên kết
   động dẫn đến trang chi tiết của chính cuốn sách đó.
   ● Trang chi tiết: Trình bày toàn bộ thông tin của cuốn sách được chọn và có liên kết
   để quay ngược lại danh sách tổng.
5. Yêu cầu Nâng cao & Tư duy Logic (15 điểm)
   ● Fragment có tham số: Thành phần Header dùng chung phải có khả năng tiếp nhận
   tham số từ trang gọi nó để hiển thị tiêu đề trang tương ứng (Ví dụ: Trang danh sách
   truyền tiêu đề khác, trang chi tiết truyền tiêu đề khác).
   ● Định dạng điều kiện (Highlight): Thực hiện xử lý logic trên giao diện: Những cuốn
   sách có giá bán từ 300.000 trở lên phải được làm nổi bật (thay đổi màu sắc dòng,
   đổi font chữ, hoặc thêm Class CSS...). Sinh viên tự chọn phương thức thực hiện
   (Style trực tiếp hoặc Class bổ trợ) miễn là đảm bảo đúng logic nghiệp vụ.
   III. THANG ĐIỂM CHI TIẾT (100 ĐIỂM)
   STT Tiêu chí đánh giá Điểm tối
   đa
   1 Vận hành: Cấu hình đúng Spring MVC thuần, deploy và chạy được
   trên Tomcat.
   30 điểm
   2 Model: Xây dựng lớp Book đúng cấu trúc và yêu cầu kỹ thuật. 10 điểm
   3 Điều hướng: Xử lý thành thạo RequestMapping, PathVariable và
   truyền Model.
   25 điểm
   4 Tổ chức Layout: Tách và tái sử dụng thành công các Fragment
   (không copy-paste HTML).
   10 điểm
   5 Thành phần hiển thị: Render danh sách bằng bảng và sử dụng URL
   động chính xác.
   10 điểm
   6 Logic nâng cao 1: Truyền và hiển thị thành công tham số
   (Arguments) thông qua Fragment.
   10 điểm
   7 Logic nâng cao 2: Thực hiện đúng việc định dạng có điều kiện cho
   sách giá cao.
   5 điểm
   Lưu ý cho sinh viên: * Thời gian 45 phút yêu cầu sự tập trung cao vào các luồng xử lý dữ
   liệu chính, sinh viên không nên dành quá nhiều thời gian cho việc cấu hình mặc định.
   ● Điểm số sẽ được đánh giá dựa trên khả năng vận hành của ứng dụng và cách tổ
   chức mã nguồn khoa học.