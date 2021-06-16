-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for vnptpayc
CREATE DATABASE IF NOT EXISTS `vnptpayc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `vnptpayc`;

-- Dumping structure for table vnptpayc.admin_resource
CREATE TABLE IF NOT EXISTS `admin_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_hien_thi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `uri` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `show_menu` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `icon` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_resource_parent_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vnptpayc.admin_resource: ~228 rows (approximately)
/*!40000 ALTER TABLE `admin_resource` DISABLE KEYS */;
INSERT INTO `admin_resource` (`id`, `ten_hien_thi`, `resource`, `method`, `action`, `parameter`, `parameter_value`, `parent_id`, `created_at`, `updated_at`, `uri`, `status`, `show_menu`, `order`, `icon`) VALUES
	(1, 'Root', 'Root', 'GET', '#', '#', '#', NULL, '2021-02-01 09:49:23', '2021-02-02 08:33:17', '#', 1, 1, 0, NULL),
	(872, 'Đăng nhập', 'GET | App\\Http\\Controllers\\Auth\\LoginController@showLoginForm', 'GET', 'App\\Http\\Controllers\\Auth\\LoginController@showLoginForm', '', '', 1, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'login', 1, 2, 999, '<i class="fa fa-lock menu-icon"></i>'),
	(873, 'Nút đăng nhập', 'POST | App\\Http\\Controllers\\Auth\\LoginController@login', 'POST', 'App\\Http\\Controllers\\Auth\\LoginController@login', '', '', 872, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'login', 1, 2, 1000, NULL),
	(874, 'Đăng xuất', 'POST | App\\Http\\Controllers\\Auth\\LoginController@logout', 'POST', 'App\\Http\\Controllers\\Auth\\LoginController@logout', '', '', 1, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'logout', 1, 2, 999, '<i class="fa fa-unlock menu-icon"></i>'),
	(875, 'Đăng ký', 'GET | App\\Http\\Controllers\\Auth\\RegisterController@showRegistrationForm', 'GET', 'App\\Http\\Controllers\\Auth\\RegisterController@showRegistrationForm', '', '', 1, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'register', 1, 2, 999, '<i class="fa fa-vcard-o menu-icon"></i>'),
	(876, 'Nút đăng ký', 'POST | App\\Http\\Controllers\\Auth\\RegisterController@register', 'POST', 'App\\Http\\Controllers\\Auth\\RegisterController@register', '', '', 875, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'register', 1, 2, 1000, NULL),
	(877, 'Reset mật khẩu', 'GET | App\\Http\\Controllers\\Auth\\ForgotPasswordController@showLinkRequestForm', 'GET', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@showLinkRequestForm', '', '', 1, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'password/reset', 1, 2, 999, '<i class="fa fa-refresh menu-icon"></i>'),
	(878, 'password/email', 'POST | App\\Http\\Controllers\\Auth\\ForgotPasswordController@sendResetLinkEmail', 'POST', 'App\\Http\\Controllers\\Auth\\ForgotPasswordController@sendResetLinkEmail', '', '', 877, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'password/email', 1, 2, 1000, NULL),
	(879, 'Lấy token reset mật khẩu', 'GET | App\\Http\\Controllers\\Auth\\ResetPasswordController@showResetForm', 'GET', 'App\\Http\\Controllers\\Auth\\ResetPasswordController@showResetForm', '', '', 877, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'password/reset/{token}', 1, 2, 1000, NULL),
	(880, 'password/reset', 'POST | App\\Http\\Controllers\\Auth\\ResetPasswordController@reset', 'POST', 'App\\Http\\Controllers\\Auth\\ResetPasswordController@reset', '', '', 877, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'password/reset', 1, 2, 1000, NULL),
	(881, 'Xác nhận lại mật khẩu', 'GET | App\\Http\\Controllers\\Auth\\ConfirmPasswordController@showConfirmForm', 'GET', 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController@showConfirmForm', '', '', 877, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'password/confirm', 1, 2, 1000, NULL),
	(882, 'password/confirm', 'POST | App\\Http\\Controllers\\Auth\\ConfirmPasswordController@confirm', 'POST', 'App\\Http\\Controllers\\Auth\\ConfirmPasswordController@confirm', '', '', 877, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'password/confirm', 1, 2, 1000, NULL),
	(883, 'Danh mục phường xã', 'GET | App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXa', 'GET', 'App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXa', '', '', 1, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'dm-phuong-xa', 1, 1, 18, '<i class="menu-icon icon-location-pin"></i>'),
	(884, 'Import danh mục phường xã', 'POST | App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXaAndImport', 'POST', 'App\\Modules\\DmPhuongXa\\Controllers\\DmPhuongXaController@dmPhuongXaAndImport', '', '', 883, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'dm-phuong-xa/import', 1, 2, 1000, NULL),
	(885, 'Danh mục quận huyện', 'GET | App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyen', 'GET', 'App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyen', '', '', 1, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'dm-quan-huyen', 1, 1, 17, '<i class="menu-icon icon-location-pin"></i>'),
	(886, 'Import danh mục quận/huyện', 'POST | App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyenAndImport', 'POST', 'App\\Modules\\DmQuanHuyen\\Controllers\\DmQuanHuyenController@dmQuanHuyenAndImport', '', '', 885, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'dm-quan-huyen/import', 1, 2, 1000, NULL),
	(887, 'Đơn vị', 'GET | App\\Modules\\DonVi\\Controllers\\DonViController@donVi', 'GET', 'App\\Modules\\DonVi\\Controllers\\DonViController@donVi', '', '', 1, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'don-vi', 1, 1, 15, '<i class="fa fa-university menu-icon"></i>'),
	(888, 'Xem danh sách đơn vị', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@danhSachDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@danhSachDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'danh-sach-don-vi', 1, 2, 1000, NULL),
	(889, 'Thêm đơn vị', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@themDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@themDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'them-don-vi', 1, 2, 1000, NULL),
	(890, 'Load thông tin đơn vị', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@donViSingle', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@donViSingle', '', '', 887, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'don-vi-single', 1, 2, 1000, NULL),
	(891, 'Cập nhật đơn vị', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@capNhatDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@capNhatDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'cap-nhat-don-vi', 1, 2, 1000, NULL),
	(892, 'Xóa đơn vị', 'POST | App\\Modules\\DonVi\\Controllers\\DonViController@xoaDonVi', 'POST', 'App\\Modules\\DonVi\\Controllers\\DonViController@xoaDonVi', '', '', 887, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'xoa-don-vi', 1, 2, 1000, NULL),
	(893, 'Nhóm quyền', 'GET | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyen', 'GET', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyen', '', '', 1, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'nhom-quyen', 1, 1, 13, '<i class="fa fa-database menu-icon"></i>'),
	(894, 'Xem danh sách nhóm quyền', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@danhSachNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@danhSachNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'danh-sach-nhom-quyen', 1, 2, 1000, NULL),
	(895, 'Thêm nhóm quyền', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@themNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@themNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'them-nhom-quyen', 1, 2, 1000, NULL),
	(896, 'Load thông tin nhóm quyền', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyenSingle', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@nhomQuyenSingle', '', '', 893, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'nhom-quyen-single', 1, 2, 1000, NULL),
	(897, 'Cập nhật nhóm quyền', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@capNhatNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@capNhatNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'cap-nhat-nhom-quyen', 1, 2, 1000, NULL),
	(898, 'Xóa nhóm quyền', 'POST | App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@xoaNhomQuyen', 'POST', 'App\\Modules\\NhomQuyen\\Controllers\\NhomQuyenController@xoaNhomQuyen', '', '', 893, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'xoa-nhom-quyen', 1, 2, 1000, NULL),
	(899, 'Phân quyền', 'GET | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyen', 'GET', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyen', '', '', 1, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'phan-quyen', 1, 1, 14, '<i class="fa fa-cogs menu-icon"></i>'),
	(900, 'Lưu thông tin quyền', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenPost', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenPost', '', '', 899, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'phan-quyen-post', 1, 2, 1000, NULL),
	(901, 'Load danh sách nhóm quyền', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachNhomQuyen', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachNhomQuyen', '', '', 899, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'phan-quyen/danh-sach-nhom-quyen', 1, 2, 1000, NULL),
	(902, 'Load danh sách quyền', 'POST | App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachQuyenTheoNhomQuyenId', 'POST', 'App\\Modules\\PhanQuyen\\Controllers\\PhanQuyenController@phanQuyenDanhSachQuyenTheoNhomQuyenId', '', '', 899, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'phan-quyen/danh-sach-quyen-theo-nhom-quyen-id', 1, 2, 1000, NULL),
	(903, 'Danh mục chức năng', 'GET | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyen', 'GET', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyen', '', '', 1, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'tai-nguyen', 1, 1, 16, '<i class="menu-icon icon-list"></i>'),
	(904, 'Xem danh sách tài nguyên', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@danhSachTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@danhSachTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'danh-sach-tai-nguyen', 1, 2, 1000, NULL),
	(905, 'Quét tài nguyên hệ thống', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@quetTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@quetTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'quet-tai-nguyen', 1, 2, 1000, NULL),
	(906, 'Thêm tài nguyên', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@themTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@themTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'them-tai-nguyen', 1, 2, 1000, NULL),
	(907, 'Load thông tin tài nguyên', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyenSingle', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@taiNguyenSingle', '', '', 903, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'tai-nguyen-single', 1, 2, 1000, NULL),
	(908, 'Cập nhật tài nguyên', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@capNhatTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@capNhatTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'cap-nhat-tai-nguyen', 1, 2, 1000, NULL),
	(909, 'Xóa tài nguyên', 'POST | App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@xoaTaiNguyen', 'POST', 'App\\Modules\\TaiNguyen\\Controllers\\TaiNguyenController@xoaTaiNguyen', '', '', 903, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'xoa-tai-nguyen', 1, 2, 1000, NULL),
	(910, 'Trang chủ', 'GET | App\\Modules\\TrangChu\\Controllers\\TrangChuController@home', 'GET', 'App\\Modules\\TrangChu\\Controllers\\TrangChuController@home', '', '', 1, '2021-03-12 16:43:45', '2021-06-13 02:10:12', '/', 1, 2, 1, '<i class="fa fa-home menu-icon"></i>'),
	(912, 'Xem danh sách tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@danhSachUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@danhSachUser', '', '', 911, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'danh-sach-user', 1, 2, 1000, NULL),
	(913, 'Tạo tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@themUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@themUser', '', '', 911, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'them-user', 1, 2, 1000, NULL),
	(914, 'Load thông tin tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@userSingle', 'POST', 'App\\Modules\\User\\Controllers\\UserController@userSingle', '', '', 911, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'user-single', 1, 2, 1000, NULL),
	(915, 'Cập nhật tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@capNhatUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@capNhatUser', '', '', 911, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'cap-nhat-user', 1, 2, 1000, NULL),
	(916, 'Xóa tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@xoaUser', 'POST', 'App\\Modules\\User\\Controllers\\UserController@xoaUser', '', '', 911, '2021-03-12 16:43:45', '2021-06-13 02:10:12', 'xoa-user', 1, 2, 1000, NULL),
	(964, 'Gửi PAKN', 'GET | App\\Modules\\Payc\\Controllers\\PaycController@payc', 'GET', 'App\\Modules\\Payc\\Controllers\\PaycController@payc', '', '', 1, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'payc', 1, 1, 2, '<i class="fa fa-paper-plane menu-icon"></i>'),
	(965, 'PAKN của tôi', 'GET | App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycCuaToi', 'GET', 'App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycCuaToi', '', '', 1, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'danh-sach-payc-cua-toi', 1, 1, 4, '<i class="fa fa-shield menu-icon"></i>'),
	(966, 'PAKN chờ tiếp nhận', 'GET | App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycChoTiepNhan', 'GET', 'App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycChoTiepNhan', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'danh-sach-payc-cho-tiep-nhan', 1, 1, 1000, NULL),
	(967, 'Form tiếp nhận và chuyển xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmTiepNhanVaChuyenXuLy', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmTiepNhanVaChuyenXuLy', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'frm-tiep-nhan-va-chuyen-xu-ly', 1, 2, 1000, NULL),
	(968, 'Tiếp nhận và chuyển xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@tiepNhanVaChuyenXuLy', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@tiepNhanVaChuyenXuLy', '', '', 967, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'tiep-nhan-va-chuyen-xu-ly', 1, 2, 1000, NULL),
	(969, 'PAKN chờ xử lý', 'GET | App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycChoXuLy', 'GET', 'App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycChoXuLy', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'danh-sach-payc-cho-xu-ly', 1, 1, 1000, NULL),
	(970, 'Form xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmXuLy', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmXuLy', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'frm-xu-ly', 1, 2, 1000, NULL),
	(971, 'Xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@xuLy', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@xuLy', '', '', 970, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'xu-ly', 1, 2, 1000, NULL),
	(972, 'PAKN chờ duyệt', 'GET | App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycChoDuyet', 'GET', 'App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycChoDuyet', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'danh-sach-payc-cho-duyet', 1, 1, 1000, NULL),
	(973, 'Frm duyệt', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmDuyet', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmDuyet', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'frm-duyet', 1, 2, 1000, NULL),
	(974, 'Duyệt', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@duyet', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@duyet', '', '', 973, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'duyet', 1, 2, 1000, NULL),
	(975, 'Form chuyển bộ phận tiếp nhận & xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmChuyenBoPhanTiepNhanVaXuLyPayc', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmChuyenBoPhanTiepNhanVaXuLyPayc', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'frm-chuyen-bo-phan-tiep-nhan-va-xu-ly-payc', 1, 2, 1000, NULL),
	(976, 'Chuyển bộ phận tiếp nhận & xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@chuyenBoPhanTiepNhanVaXuLyPayc', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@chuyenBoPhanTiepNhanVaXuLyPayc', '', '', 975, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'chuyen-bo-phan-tiep-nhan-va-xu-ly-payc', 1, 2, 1000, NULL),
	(977, 'Form chuyển lãnh đạo', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmChuyenLanhDao', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmChuyenLanhDao', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'frm-chuyen-lanh-dao', 1, 2, 1000, NULL),
	(978, 'Chuyển lãnh đạo', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@chuyenLanhDao', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@chuyenLanhDao', '', '', 977, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'chuyen-lanh-dao', 1, 2, 1000, NULL),
	(979, 'Form chuyển cấp trên', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmChuyenCapTren', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmChuyenCapTren', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'frm-chuyen-cap-tren', 1, 2, 1000, NULL),
	(980, 'Chuyển cấp trên', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@chuyenCapTren', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@chuyenCapTren', '', '', 979, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'chuyen-cap-tren', 1, 2, 1000, NULL),
	(981, 'Form hoàn tất xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmHoanTat', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmHoanTat', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'frm-hoan-tat', 1, 2, 1000, NULL),
	(982, 'Hoàn tất xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@hoanTat', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@hoanTat', '', '', 981, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'hoan-tat', 1, 2, 1000, NULL),
	(983, 'From trả PAKN lại (Không xử lý)', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmTraLaiKhongXuLy', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmTraLaiKhongXuLy', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'frm-tra-lai-khong-xu-ly', 1, 2, 1000, NULL),
	(984, 'Trả lại PAKN không xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@traLaiKhongXuLy', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@traLaiKhongXuLy', '', '', 983, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'tra-lai-khong-xu-ly', 1, 2, 1000, NULL),
	(985, 'Form hủy PAKN', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmHuy', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmHuy', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'frm-huy', 1, 2, 1000, NULL),
	(986, 'Hủy PAKN', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@huy', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@huy', '', '', 985, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'huy', 1, 2, 1000, NULL),
	(987, 'Form cập nhật PAKN', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmCapNhatPayc', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmCapNhatPayc', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'frm-cap-nhat-payc', 1, 2, 1000, NULL),
	(988, 'Cập nhật PAKN', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@capNhatPayc', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@capNhatPayc', '', '', 987, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'cap-nhat-payc', 1, 2, 1000, NULL),
	(989, 'PAKN đã hoàn tất xử lý', 'GET | App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycDaHoanTat', 'GET', 'App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycDaHoanTat', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'danh-sach-payc-da-hoan-tat', 1, 1, 1000, NULL),
	(990, 'Chuyển khách hàng đánh giá', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@chuyenKHDanhGia', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@chuyenKHDanhGia', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'chuyen-kh-danh-gia', 1, 2, 1000, NULL),
	(991, 'Đánh giá PAKN', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@danhGia', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@danhGia', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'danh-gia', 1, 2, 1000, NULL),
	(992, 'Quá trình xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@qtxl', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@qtxl', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'qtxl', 1, 2, 1000, NULL),
	(993, 'Thêm PAKN', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@themPayc', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@themPayc', '', '', 964, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'them-payc', 1, 2, 1000, NULL),
	(994, 'PAKN theo tài khoản', 'GET | App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycTheoTaiKhoan', 'GET', 'App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycTheoTaiKhoan', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'danh-sach-payc-theo-tai-khoan', 1, 1, 1000, NULL),
	(995, 'PAKN chưa thụ lý', 'GET | App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycChuaCoCanBoNhan', 'GET', 'App\\Modules\\Payc\\Controllers\\PaycController@danhSachPaycChuaCoCanBoNhan', '', '', 1006, '2021-03-17 08:35:39', '2021-06-13 02:10:12', 'danh-sach-payc-chua-co-can-bo-nhan', 1, 1, 1000, NULL),
	(996, 'To do', 'GET | App\\Modules\\ToDo\\Controllers\\ToDoController@toDo', 'GET', 'App\\Modules\\ToDo\\Controllers\\ToDoController@toDo', '', '', 1, '2021-03-17 08:35:40', '2021-06-13 02:10:12', 'to-do', 1, 1, 6, '<i class="fa fa-clock-o menu-icon"></i>'),
	(997, 'Xem danh sách ghi chú', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@danhSachToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@danhSachToDo', '', '', 996, '2021-03-17 08:35:40', '2021-06-13 02:10:12', 'danh-sach-to-do', 1, 2, 1000, NULL),
	(998, 'Thêm ghi chú', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@themToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@themToDo', '', '', 996, '2021-03-17 08:35:40', '2021-06-13 02:10:12', 'them-to-do', 1, 2, 1000, NULL),
	(999, 'Load thông tin ghi chú', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@toDoSingle', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@toDoSingle', '', '', 996, '2021-03-17 08:35:40', '2021-06-13 02:10:12', 'to-do-single', 1, 2, 1000, NULL),
	(1000, 'Cập nhật ghi chú', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@capNhatToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@capNhatToDo', '', '', 996, '2021-03-17 08:35:40', '2021-06-13 02:10:12', 'cap-nhat-to-do', 1, 2, 1000, NULL),
	(1001, 'Xóa ghi chú', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@xoaToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@xoaToDo', '', '', 996, '2021-03-17 08:35:40', '2021-06-13 02:10:12', 'xoa-to-do', 1, 2, 1000, NULL),
	(1003, 'Gạch ghi chú', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@checkToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@checkToDo', '', '', 996, '2021-03-17 08:35:40', '2021-06-13 02:10:12', 'check-to-do', 1, 2, 1000, NULL),
	(1004, 'Bỏ gạch ghi chú', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@uncheckToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@uncheckToDo', '', '', 996, '2021-03-17 08:35:40', '2021-06-13 02:10:12', 'uncheck-to-do', 1, 2, 1000, NULL),
	(1005, 'Sắp xếp lại ghi chú', 'POST | App\\Modules\\ToDo\\Controllers\\ToDoController@sortToDo', 'POST', 'App\\Modules\\ToDo\\Controllers\\ToDoController@sortToDo', '', '', 996, '2021-03-17 08:35:40', '2021-06-13 02:10:12', 'sort-to-do', 1, 2, 1000, NULL),
	(1006, 'Xử lý PAKN', NULL, 'GET', NULL, NULL, NULL, 1, '2021-03-17 08:52:37', '2021-04-09 16:38:54', NULL, 1, 1, 3, '<i class="fa fa-keyboard-o menu-icon"></i>'),
	(1025, 'API đăng nhập', 'POST | App\\Modules\\API\\Controllers\\PassportAuthController@apiDangNhap', 'POST', 'App\\Modules\\API\\Controllers\\PassportAuthController@apiDangNhap', '', '', 1064, '2021-03-25 10:19:24', '2021-06-13 02:10:12', 'api/auth/api-dang-nhap', 1, 1, 1000, NULL),
	(1026, 'API tạo tài khoản', 'POST | App\\Modules\\API\\Controllers\\PassportAuthController@apiTaoTaiKhoan', 'POST', 'App\\Modules\\API\\Controllers\\PassportAuthController@apiTaoTaiKhoan', '', '', 1064, '2021-03-25 10:19:24', '2021-06-13 02:10:12', 'api/auth/api-tao-tai-khoan', 1, 1, 1000, NULL),
	(1027, 'API đăng xuất', 'GET | App\\Modules\\API\\Controllers\\PassportAuthController@apiDangXuat', 'GET', 'App\\Modules\\API\\Controllers\\PassportAuthController@apiDangXuat', '', '', 1064, '2021-03-25 10:19:24', '2021-06-13 02:10:12', 'api/auth/api-dang-xuat', 1, 1, 1000, NULL),
	(1028, 'API lấy thông tin tài khoản', 'GET | App\\Modules\\API\\Controllers\\PassportAuthController@apiGetUser', 'GET', 'App\\Modules\\API\\Controllers\\PassportAuthController@apiGetUser', '', '', 1064, '2021-03-25 10:19:24', '2021-06-13 02:10:12', 'api/auth/api-get-user', 1, 1, 1000, NULL),
	(1030, 'API gửi PAKN', 'POST | App\\Modules\\API\\Controllers\\ApiPaycController@apiGuiPakn', 'POST', 'App\\Modules\\API\\Controllers\\ApiPaycController@apiGuiPakn', '', '', 1064, '2021-03-25 10:19:24', '2021-06-13 02:10:12', 'api/api-gui-pakn', 1, 1, 1000, NULL),
	(1031, 'API lấy danh mục dịch vụ', 'GET | App\\Modules\\API\\Controllers\\ApiDichVuController@layDanhMucDichVu', 'GET', 'App\\Modules\\API\\Controllers\\ApiDichVuController@layDanhMucDichVu', '', '', 1064, '2021-03-25 10:19:25', '2021-06-13 02:10:12', 'api/api-lay-danh-muc-dich-vu', 1, 1, 1000, NULL),
	(1032, 'API lấy danh mục quận/huyện', 'GET | App\\Modules\\API\\Controllers\\ApiDmQuanHuyenController@layDanhMucQuanHuyen', 'GET', 'App\\Modules\\API\\Controllers\\ApiDmQuanHuyenController@layDanhMucQuanHuyen', '', '', 1064, '2021-03-25 10:19:25', '2021-06-13 02:10:12', 'api/api-lay-danh-muc-quan-huyen', 1, 1, 1000, NULL),
	(1033, 'API lấy danh mục phường/xã', 'GET | App\\Modules\\API\\Controllers\\ApiDmPhuongXaController@layDanhMucPhuongXa', 'GET', 'App\\Modules\\API\\Controllers\\ApiDmPhuongXaController@layDanhMucPhuongXa', '', '', 1064, '2021-03-25 10:19:25', '2021-06-13 02:10:12', 'api/api-lay-danh-muc-phuong-xa', 1, 1, 1000, NULL),
	(1034, 'API lấy danh mục phường/xã theo quận/huyện', 'GET | App\\Modules\\API\\Controllers\\ApiDmPhuongXaController@layDanhMucPhuongXaTheoMaQuanHuyen', 'GET', 'App\\Modules\\API\\Controllers\\ApiDmPhuongXaController@layDanhMucPhuongXaTheoMaQuanHuyen', '', '', 1064, '2021-03-25 10:19:25', '2021-06-13 02:10:12', 'api/api-lay-danh-muc-phuong-xa-theo-ma-quan-huyen', 1, 1, 1000, NULL),
	(1035, 'Đăng ký PAKN', 'GET | App\\Modules\\Payc\\Controllers\\PaycController@dangKyPayc', 'GET', 'App\\Modules\\Payc\\Controllers\\PaycController@dangKyPayc', '', '', 1006, '2021-03-25 10:19:27', '2021-06-13 02:10:12', 'dang-ky-payc', 1, 1, 1000, NULL),
	(1036, 'Lưu đăng ký PAKN', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@luuDangKyPayc', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@luuDangKyPayc', '', '', 1035, '2021-03-25 10:19:27', '2021-06-13 02:10:12', 'luu-dang-ky-payc', 1, 2, 1000, NULL),
	(1038, 'Lưu thông tin đơn vị cho user', 'POST | App\\Modules\\User\\Controllers\\UserController@luuUserDonVi', 'POST', 'App\\Modules\\User\\Controllers\\UserController@luuUserDonVi', '', '', 1037, '2021-03-25 10:19:29', '2021-06-13 02:10:12', 'luu-user-dv', 1, 2, 1000, NULL),
	(1039, 'Load danh sách đơn vị theo User', 'POST | App\\Modules\\User\\Controllers\\UserController@loadDsUserDonvi', 'POST', 'App\\Modules\\User\\Controllers\\UserController@loadDsUserDonvi', '', '', 1037, '2021-03-25 10:19:29', '2021-06-13 02:10:12', 'load-danh-sach-user-donvi', 1, 2, 1000, NULL),
	(1040, 'Xóa đơn vị theo User', 'POST | App\\Modules\\User\\Controllers\\UserController@xoaUserDonVi', 'POST', 'App\\Modules\\User\\Controllers\\UserController@xoaUserDonVi', '', '', 1037, '2021-03-25 10:19:29', '2021-06-13 02:10:12', 'xoa-user-donvi', 1, 2, 1000, NULL),
	(1041, 'API xem danh sách PAKN đã gửi', 'POST | App\\Modules\\API\\Controllers\\ApiPaycController@layPaycCuaToi', 'POST', 'App\\Modules\\API\\Controllers\\ApiPaycController@layPaycCuaToi', '', '', 1064, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'api/api-payc-cua-toi', 1, 1, 1000, NULL),
	(1042, 'Frm duyệt và chuyển xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmDuyetVaChuyenXuLyPayc', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmDuyetVaChuyenXuLyPayc', '', '', 1006, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'frm-duyet-va-chuyen-xu-ly-payc', 1, 2, 1000, NULL),
	(1043, 'Duyệt và chuyển xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@duyetVaChuyenXuLyPayc', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@duyetVaChuyenXuLyPayc', '', '', 1042, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'duyet-va-chuyen-xu-ly-payc', 1, 2, 1000, NULL),
	(1044, 'Frm xử lý và chuyển lạnh đạo', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmXuLyVaChuyenLanhDao', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmXuLyVaChuyenLanhDao', '', '', 1006, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'frm-xu-ly-va-chuyen-lanh-dao', 1, 2, 1000, NULL),
	(1045, 'Xử lý và chuyển lãnh đạo', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@xuLyVaChuyenLanhDao', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@xuLyVaChuyenLanhDao', '', '', 1044, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'xu-ly-va-chuyen-lanh-dao', 1, 2, 1000, NULL),
	(1046, 'Frm duyệt và hoàn tất xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@frmDuyetVaHoanTatXuLy', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@frmDuyetVaHoanTatXuLy', '', '', 1006, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'frm-duyet-va-hoan-tat-xu-ly', 1, 2, 1000, NULL),
	(1047, 'Duyệt và hoàn tất xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@duyetVahoanTatXuLy', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@duyetVahoanTatXuLy', '', '', 1046, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'duyet-va-hoan-tat-xu-ly', 1, 2, 1000, NULL),
	(1048, 'Xem chi tiết PAKN', 'GET | App\\Modules\\Payc\\Controllers\\PaycController@chiTietPayc', 'GET', 'App\\Modules\\Payc\\Controllers\\PaycController@chiTietPayc', '', '', 1, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'chi-tiet-payc', 1, 1, 4, '<i class="fa fa-eye menu-icon"></i>'),
	(1049, 'Xem chi tiết nội dung PAKN', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@chiTietPaycNoiDungSingle', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@chiTietPaycNoiDungSingle', '', '', 1048, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'chi-tiet-payc-noi-dung-single', 1, 2, 1000, NULL),
	(1050, 'Bình luận PAKN', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@chiTietPaycFrmBinhLuanSingle', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@chiTietPaycFrmBinhLuanSingle', '', '', 1048, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'chi-tiet-payc-frm-binh-luan-single', 1, 2, 1000, NULL),
	(1051, 'Gửi bình luận', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@guiBinhLuan', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@guiBinhLuan', '', '', 1050, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'gui-binh-luan', 1, 2, 1000, NULL),
	(1052, 'Danh sách bình luận', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@danhSachBinhLuan', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@danhSachBinhLuan', '', '', 1048, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'danh-sach-binh-luan', 1, 2, 1000, NULL),
	(1053, 'Đánh giá hài lòng', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@haiLong', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@haiLong', '', '', 1052, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'hai-long', 1, 2, 1000, NULL),
	(1054, 'Không hài lòng', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@khongHaiLong', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@khongHaiLong', '', '', 1052, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'khong-hai-long', 1, 2, 1000, NULL),
	(1055, 'Frm phản hồi bình luận', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@chiTietPaycFrmCanBoPhanHoiBinhLuanSingle', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@chiTietPaycFrmCanBoPhanHoiBinhLuanSingle', '', '', 1006, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'chi-tiet-payc-frm-can-bo-phan-hoi-binh-luan-single', 1, 2, 1000, NULL),
	(1056, 'Phản hồi bình luận', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@traLoiBinhLuan', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@traLoiBinhLuan', '', '', 1055, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'tra-loi-binh-luan', 1, 2, 1000, NULL),
	(1058, 'Tài khoản', 'GET | App\\Modules\\User\\Controllers\\UserController@user', 'GET', 'App\\Modules\\User\\Controllers\\UserController@user', '', '', 1, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'tai-khoan', 1, 1, 5, '<i class="fa fa-address-book menu-icon"></i>'),
	(1059, 'Load thông tin đơn vị theo tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@userDonViSingle', 'POST', 'App\\Modules\\User\\Controllers\\UserController@userDonViSingle', '', '', 1058, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'user-don-vi-single', 1, 2, 1000, NULL),
	(1060, 'Load thông tin nhóm quyền theo tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@userRoleSingle', 'POST', 'App\\Modules\\User\\Controllers\\UserController@userRoleSingle', '', '', 1058, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'user-role-single', 1, 2, 1000, NULL),
	(1061, 'Phân nhóm quyền cho tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@phanQuyenUserRole', 'POST', 'App\\Modules\\User\\Controllers\\UserController@phanQuyenUserRole', '', '', 1058, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'phan-quyen-user-role', 1, 2, 1000, NULL),
	(1062, 'Xem thông tin cá nhân', 'GET | App\\Modules\\User\\Controllers\\UserController@thongTinCaNhan', 'GET', 'App\\Modules\\User\\Controllers\\UserController@thongTinCaNhan', '', '', 1058, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'thong-tin-ca-nhan', 1, 2, 1000, NULL),
	(1063, 'Cập nhật thông tin cá nhân', 'POST | App\\Modules\\User\\Controllers\\UserController@capNhatThongTinCaNhan', 'POST', 'App\\Modules\\User\\Controllers\\UserController@capNhatThongTinCaNhan', '', '', 1058, '2021-04-09 16:27:21', '2021-06-13 02:10:12', 'cap-nhat-thong-tin-ca-nhan', 1, 2, 1000, NULL),
	(1064, 'API', '#', 'GET', NULL, NULL, NULL, 1, '2021-04-09 16:45:39', '2021-05-28 09:23:48', NULL, 1, 1, 25, '<i class="fa fa-globe menu-icon"></i>'),
	(1065, 'Danh mục dịch vụ', 'GET | App\\Modules\\DichVu\\Controllers\\DichVuController@dichVu', 'GET', 'App\\Modules\\DichVu\\Controllers\\DichVuController@dichVu', '', '', 1, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'dich-vu', 1, 1, 19, '<i class="menu-icon icon-list"></i>'),
	(1066, 'Xem danh sách dịch vụ', 'POST | App\\Modules\\DichVu\\Controllers\\DichVuController@danhSachDichVu', 'POST', 'App\\Modules\\DichVu\\Controllers\\DichVuController@danhSachDichVu', '', '', 1065, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'danh-sach-dich-vu', 1, 2, 1000, NULL),
	(1067, 'Thêm mới danh mục dịch vụ', 'POST | App\\Modules\\DichVu\\Controllers\\DichVuController@themDichVu', 'POST', 'App\\Modules\\DichVu\\Controllers\\DichVuController@themDichVu', '', '', 1065, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'them-dich-vu', 1, 2, 1000, NULL),
	(1068, 'Load chi tiết danh mục dịch vụ', 'POST | App\\Modules\\DichVu\\Controllers\\DichVuController@dichVuSingle', 'POST', 'App\\Modules\\DichVu\\Controllers\\DichVuController@dichVuSingle', '', '', 1065, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'dich-vu-single', 1, 2, 1000, NULL),
	(1069, 'Cập nhật danh mục dịch vụ', 'POST | App\\Modules\\DichVu\\Controllers\\DichVuController@capNhatDichVu', 'POST', 'App\\Modules\\DichVu\\Controllers\\DichVuController@capNhatDichVu', '', '', 1065, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'cap-nhat-dich-vu', 1, 2, 1000, NULL),
	(1070, 'Xóa danh mục dịch vụ', 'POST | App\\Modules\\DichVu\\Controllers\\DichVuController@xoaDichVu', 'POST', 'App\\Modules\\DichVu\\Controllers\\DichVuController@xoaDichVu', '', '', 1065, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'xoa-dich-vu', 1, 2, 1000, NULL),
	(1071, 'Hoàn tất đã xem', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@hoanTatDaXem', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@hoanTatDaXem', '', '', 969, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'hoan-tat-da-xem', 1, 2, 1000, NULL),
	(1072, 'Hoàn tất phối hợp xử lý', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@hoanTatPhoiHop', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@hoanTatPhoiHop', '', '', 969, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'hoan-tat-phoi-hop', 1, 2, 1000, NULL),
	(1073, 'Đánh dấu đã xem bình luận', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@danhDauDaXemBinhLuan', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@danhDauDaXemBinhLuan', '', '', 1052, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'danh-dau-da-xem-binh-luan', 1, 2, 1000, NULL),
	(1074, 'Đánh dấu đã xem PAKN', 'POST | App\\Modules\\Payc\\Controllers\\PaycController@danhDauDaXemPakn', 'POST', 'App\\Modules\\Payc\\Controllers\\PaycController@danhDauDaXemPakn', '', '', 1049, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'danh-dau-da-xem-pakn', 1, 2, 1000, NULL),
	(1075, 'Xem chi tiết dịch vụ từng tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@userDichVuSingle', 'POST', 'App\\Modules\\User\\Controllers\\UserController@userDichVuSingle', '', '', 1058, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'user-dich-vu-single', 1, 2, 1000, NULL),
	(1076, 'Danh sách dịch vụ từng tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@danhSachDichVuTheoTaiKhoan', 'POST', 'App\\Modules\\User\\Controllers\\UserController@danhSachDichVuTheoTaiKhoan', '', '', 1058, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'danh-sach-dich-vu-theo-tai-khoan', 1, 2, 1000, NULL),
	(1077, 'Phân dịch vụ cho tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@themUserDichVu', 'POST', 'App\\Modules\\User\\Controllers\\UserController@themUserDichVu', '', '', 1058, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'them-user-dich-vu', 1, 2, 1000, NULL),
	(1078, 'Xóa dịch vụ theo tài khoản', 'POST | App\\Modules\\User\\Controllers\\UserController@xoaUserDichVu', 'POST', 'App\\Modules\\User\\Controllers\\UserController@xoaUserDichVu', '', '', 1058, '2021-05-26 15:35:27', '2021-06-13 02:10:12', 'xoa-user-dich-vu', 1, 2, 1000, NULL),
	(1079, 'Nhóm dịch vụ', 'GET | App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@nhomDichVu', 'GET', 'App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@nhomDichVu', '', '', 1, '2021-05-26 16:03:56', '2021-06-13 02:10:12', 'nhom-dich-vu', 1, 1, 20, '<i class="menu-icon icon-list"></i>'),
	(1080, 'Xem danh sách nhóm dịch vu', 'POST | App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@danhSachNhomDichVu', 'POST', 'App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@danhSachNhomDichVu', '', '', 1079, '2021-05-26 16:03:56', '2021-06-13 02:10:12', 'danh-sach-nhom-dich-vu', 1, 2, 1000, NULL),
	(1081, 'Thêm nhóm dịch vụ', 'POST | App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@themNhomDichVu', 'POST', 'App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@themNhomDichVu', '', '', 1079, '2021-05-26 16:03:56', '2021-06-13 02:10:12', 'them-nhom-dich-vu', 1, 2, 1000, NULL),
	(1082, 'Chi tiết nhóm dịch vụ', 'POST | App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@nhomDichVuSingle', 'POST', 'App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@nhomDichVuSingle', '', '', 1079, '2021-05-26 16:03:56', '2021-06-13 02:10:12', 'nhom-dich-vu-single', 1, 2, 1000, NULL),
	(1083, 'Cập nhật nhóm dịch vu', 'POST | App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@capNhatNhomDichVu', 'POST', 'App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@capNhatNhomDichVu', '', '', 1079, '2021-05-26 16:03:56', '2021-06-13 02:10:12', 'cap-nhat-nhom-dich-vu', 1, 2, 1000, NULL),
	(1084, 'Xóa nhóm dịch vụ', 'POST | App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@xoaNhomDichVu', 'POST', 'App\\Modules\\NhomDichVu\\Controllers\\NhomDichVuController@xoaNhomDichVu', '', '', 1079, '2021-05-26 16:03:56', '2021-06-13 02:10:12', 'xoa-nhom-dich-vu', 1, 2, 1000, NULL),
	(1085, 'Danh mục chức danh', 'GET | App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@chucDanh', 'GET', 'App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@chucDanh', '', '', 1, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'chuc-danh', 1, 1, 21, '<i class="menu-icon icon-list"></i>'),
	(1086, 'Xem danh sách chức danh', 'POST | App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@danhSachChucDanh', 'POST', 'App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@danhSachChucDanh', '', '', 1085, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'danh-sach-chuc-danh', 1, 2, 1000, NULL),
	(1087, 'Thêm chức danh', 'POST | App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@themChucDanh', 'POST', 'App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@themChucDanh', '', '', 1085, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'them-chuc-danh', 1, 2, 1000, NULL),
	(1088, 'Xem chi tiết chức danh', 'POST | App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@chucDanhSingle', 'POST', 'App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@chucDanhSingle', '', '', 1085, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'chuc-danh-single', 1, 2, 1000, NULL),
	(1089, 'Cập nhật chức danh', 'POST | App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@capNhatChucDanh', 'POST', 'App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@capNhatChucDanh', '', '', 1085, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'cap-nhat-chuc-danh', 1, 2, 1000, NULL),
	(1090, 'Xóa chức danh', 'POST | App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@xoaChucDanh', 'POST', 'App\\Modules\\ChucDanh\\Controllers\\ChucDanhController@xoaChucDanh', '', '', 1085, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'xoa-chuc-danh', 1, 2, 1000, NULL),
	(1091, 'Danh mục chức vụ', 'GET | App\\Modules\\ChucVu\\Controllers\\ChucVuController@chucVu', 'GET', 'App\\Modules\\ChucVu\\Controllers\\ChucVuController@chucVu', '', '', 1, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'chuc-vu', 1, 1, 22, '<i class="menu-icon icon-list"></i>'),
	(1092, 'Xem danh sách chức vụ', 'POST | App\\Modules\\ChucVu\\Controllers\\ChucVuController@danhSachChucVu', 'POST', 'App\\Modules\\ChucVu\\Controllers\\ChucVuController@danhSachChucVu', '', '', 1091, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'danh-sach-chuc-vu', 1, 2, 1000, NULL),
	(1093, 'Thêm chức vụ', 'POST | App\\Modules\\ChucVu\\Controllers\\ChucVuController@themChucVu', 'POST', 'App\\Modules\\ChucVu\\Controllers\\ChucVuController@themChucVu', '', '', 1091, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'them-chuc-vu', 1, 2, 1000, NULL),
	(1094, 'Xem chi tiết chức vụ', 'POST | App\\Modules\\ChucVu\\Controllers\\ChucVuController@chucVuSingle', 'POST', 'App\\Modules\\ChucVu\\Controllers\\ChucVuController@chucVuSingle', '', '', 1091, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'chuc-vu-single', 1, 2, 1000, NULL),
	(1095, 'Cập nhật chức vụ', 'POST | App\\Modules\\ChucVu\\Controllers\\ChucVuController@capNhatChucVu', 'POST', 'App\\Modules\\ChucVu\\Controllers\\ChucVuController@capNhatChucVu', '', '', 1091, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'cap-nhat-chuc-vu', 1, 2, 1000, NULL),
	(1096, 'Xóa chức vụ', 'POST | App\\Modules\\ChucVu\\Controllers\\ChucVuController@xoaChucVu', 'POST', 'App\\Modules\\ChucVu\\Controllers\\ChucVuController@xoaChucVu', '', '', 1091, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'xoa-chuc-vu', 1, 2, 1000, NULL),
	(1097, 'Nhóm chức vụ', 'GET | App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@nhomChucVu', 'GET', 'App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@nhomChucVu', '', '', 1, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'nhom-chuc-vu', 1, 1, 23, '<i class="menu-icon icon-list"></i>'),
	(1098, 'Xem danh sách nhóm chức vụ', 'POST | App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@danhSachNhomChucVu', 'POST', 'App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@danhSachNhomChucVu', '', '', 1097, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'danh-sach-nhom-chuc-vu', 1, 2, 1000, NULL),
	(1099, 'Thêm nhóm chức vụ', 'POST | App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@themNhomChucVu', 'POST', 'App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@themNhomChucVu', '', '', 1097, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'them-nhom-chuc-vu', 1, 2, 1000, NULL),
	(1100, 'Xem chi tiết nhóm chức vụ', 'POST | App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@nhomChucVuSingle', 'POST', 'App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@nhomChucVuSingle', '', '', 1097, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'nhom-chuc-vu-single', 1, 2, 1000, NULL),
	(1101, 'Cập nhật nhóm chức vụ', 'POST | App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@capNhatNhomChucVu', 'POST', 'App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@capNhatNhomChucVu', '', '', 1097, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'cap-nhat-nhom-chuc-vu', 1, 2, 1000, NULL),
	(1102, 'Xóa nhóm chức vụ', 'POST | App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@xoaNhomChucVu', 'POST', 'App\\Modules\\NhomChucVu\\Controllers\\NhomChucVuController@xoaNhomChucVu', '', '', 1097, '2021-05-26 17:04:22', '2021-06-13 02:10:12', 'xoa-nhom-chuc-vu', 1, 2, 1000, NULL),
	(1103, 'Danh mục tham số hệ thống', 'GET | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@dmThamSoHeThong', 'GET', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@dmThamSoHeThong', '', '', 1, '2021-05-28 08:34:03', '2021-06-13 02:10:12', 'dm-tham-so-he-thong', 1, 1, 24, '<i class="menu-icon icon-list"></i>'),
	(1104, 'danh-sach-dm-tham-so-he-thong', 'POST | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@danhSachDmThamSoHeThong', 'POST', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@danhSachDmThamSoHeThong', '', '', 1103, '2021-05-28 08:34:03', '2021-06-13 02:10:12', 'danh-sach-dm-tham-so-he-thong', 1, 2, 1000, NULL),
	(1105, 'Thêm danh mục tham số hệ thống', 'POST | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@themDmThamSoHeThong', 'POST', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@themDmThamSoHeThong', '', '', 1103, '2021-05-28 08:34:03', '2021-06-13 02:10:12', 'them-dm-tham-so-he-thong', 1, 2, 1000, NULL),
	(1106, 'Xem chi tiết dm tham số hệ thống', 'POST | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@dmThamSoHeThongSingle', 'POST', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@dmThamSoHeThongSingle', '', '', 1103, '2021-05-28 08:34:03', '2021-06-13 02:10:12', 'dm-tham-so-he-thong-single', 1, 2, 1000, NULL),
	(1107, 'Cập nhật dm tham số hệ thống', 'POST | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@capNhatDmThamSoHeThong', 'POST', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@capNhatDmThamSoHeThong', '', '', 1103, '2021-05-28 08:34:03', '2021-06-13 02:10:12', 'cap-nhat-dm-tham-so-he-thong', 1, 2, 1000, NULL),
	(1108, 'Xóa dm tham số hệ thống', 'POST | App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@xoaDmThamSoHeThong', 'POST', 'App\\Modules\\DmThamSoHeThong\\Controllers\\DmThamSoHeThongController@xoaDmThamSoHeThong', '', '', 1103, '2021-05-28 08:34:03', '2021-06-13 02:10:12', 'xoa-dm-tham-so-he-thong', 1, 2, 1000, NULL),
	(1109, 'Báo cáo tuần', '#', 'GET', '#', NULL, NULL, 1, '2021-05-28 09:42:49', '2021-05-28 09:46:30', '#', 1, 1, 5, '<i class="fa fa-bar-chart-o menu-icon"></i>'),
	(1122, 'Viễn thông huyện', 'GET | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@baoCaoTuanVienThongHuyen', 'GET', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@baoCaoTuanVienThongHuyen', '', '', 1109, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen', 1, 1, 1000, NULL),
	(1123, 'bao-cao-tuan/vien-thong-huyen/bao-cao-tuan-vien-thong-huyen-chot-so-lieu', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@baoCaoTuanVienThongHuyenChotSoLieu', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@baoCaoTuanVienThongHuyenChotSoLieu', '', '', 1, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/bao-cao-tuan-vien-thong-huyen-chot-so-lieu', 1, 2, 1000, NULL),
	(1124, 'bao-cao-tuan/vien-thong-huyen/danh-sach-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@danhSachBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@danhSachBaoCaoTuanHienTai', '', '', 1, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/danh-sach-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1125, 'bao-cao-tuan/vien-thong-huyen/them-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@themBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@themBaoCaoTuanHienTai', '', '', 1, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/them-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1126, 'bao-cao-tuan/vien-thong-huyen/xoa-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@xoaBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@xoaBaoCaoTuanHienTai', '', '', 1, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/xoa-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1127, 'bao-cao-tuan/vien-thong-huyen/bc-is-group-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@bcIsGroupTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@bcIsGroupTuanHienTai', '', '', 1, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/bc-is-group-tuan-hien-tai', 1, 2, 1000, NULL),
	(1128, 'bao-cao-tuan/vien-thong-huyen/danh-sach-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@danhSachBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@danhSachBaoCaoKeHoachTuan', '', '', 1, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/danh-sach-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1129, 'bao-cao-tuan/vien-thong-huyen/them-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@themBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@themBaoCaoKeHoachTuan', '', '', 1, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/them-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1130, 'bao-cao-tuan/vien-thong-huyen/xoa-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@xoaBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@xoaBaoCaoKeHoachTuan', '', '', 1, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/xoa-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1131, 'bao-cao-tuan/vien-thong-huyen/bc-is-group-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@bcIsGroupKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@bcIsGroupKeHoachTuan', '', '', 1, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/bc-is-group-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1132, 'bao-cao-tuan/vien-thong-huyen/danh-sach-bao-cao-tong-hop', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@danhSachBaoCaoTongHop', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@danhSachBaoCaoTongHop', '', '', 1, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/danh-sach-bao-cao-tong-hop', 1, 2, 1000, NULL),
	(1133, 'Phòng ban/Trung tâm', 'GET | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@baoCaoTuanVienThongHuyen', 'GET', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@baoCaoTuanVienThongHuyen', '', '', 1109, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac', 1, 1, 1000, NULL),
	(1144, 'Danh mục chỉ số ĐHSXKD', 'GET | App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@dmChiSo', 'GET', 'App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@dmChiSo', '', '', 1, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'dm-chi-so-dhsxkd', 1, 1, 24, '<i class="menu-icon icon-list"></i>'),
	(1145, 'Xem danh sách chỉ số', 'POST | App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@danhSachDmChiSo', 'POST', 'App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@danhSachDmChiSo', '', '', 1144, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'danh-sach-dm-chi-so', 1, 2, 1000, NULL),
	(1146, 'Thêm chỉ số', 'POST | App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@themDmChiSo', 'POST', 'App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@themDmChiSo', '', '', 1144, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'them-dm-chi-so', 1, 2, 1000, NULL),
	(1147, 'Chi tiết chỉ số', 'POST | App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@dmChiSoSingle', 'POST', 'App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@dmChiSoSingle', '', '', 1144, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'dm-chi-so-single', 1, 2, 1000, NULL),
	(1148, 'Cập nhật danh mục chỉ số', 'POST | App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@capNhatDmChiSo', 'POST', 'App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@capNhatDmChiSo', '', '', 1144, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'cap-nhat-dm-chi-so', 1, 2, 1000, NULL),
	(1149, 'Xóa danh mục chỉ số', 'POST | App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@xoaDmChiSo', 'POST', 'App\\Modules\\DmChiSo\\Controllers\\DmChiSoController@xoaDmChiSo', '', '', 1144, '2021-06-03 14:00:10', '2021-06-13 02:10:12', 'xoa-dm-chi-so', 1, 2, 1000, NULL),
	(1150, 'bao-cao-tuan/vien-thong-huyen/danh-sach-bao-cao-dhsxkd', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@danhSachBaoCaoDhsxkd', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@danhSachBaoCaoDhsxkd', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/danh-sach-bao-cao-dhsxkd', 1, 2, 1000, NULL),
	(1151, 'bao-cao-tuan/vien-thong-huyen/vien-thong-huyen-cap-nhat-ghi-chu-bao-cao-dhsxkd', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@capNhatGhiChuBaoCaoDhsxkd', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@capNhatGhiChuBaoCaoDhsxkd', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/vien-thong-huyen-cap-nhat-ghi-chu-bao-cao-dhsxkd', 1, 2, 1000, NULL),
	(1152, 'bao-cao-tuan/vien-thong-huyen/vien-thong-huyen-lay-so-lieu-bao-cao-dhsxkd', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@laySoLieuBaoCaoDhsxkd', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@laySoLieuBaoCaoDhsxkd', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/vien-thong-huyen-lay-so-lieu-bao-cao-dhsxkd', 1, 2, 1000, NULL),
	(1153, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-bao-cao-tuan-chot-so-lieu', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@baoCaoTuanChotSoLieu', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@baoCaoTuanChotSoLieu', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-bao-cao-tuan-chot-so-lieu', 1, 2, 1000, NULL),
	(1154, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-danh-sach-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@danhSachBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@danhSachBaoCaoTuanHienTai', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-danh-sach-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1155, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-them-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@themBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@themBaoCaoTuanHienTai', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-them-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1156, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-xoa-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@xoaBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@xoaBaoCaoTuanHienTai', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-xoa-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1157, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-bc-is-group-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@bcIsGroupTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@bcIsGroupTuanHienTai', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-bc-is-group-tuan-hien-tai', 1, 2, 1000, NULL),
	(1158, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-danh-sach-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@danhSachBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@danhSachBaoCaoKeHoachTuan', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-danh-sach-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1159, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-them-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@themBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@themBaoCaoKeHoachTuan', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-them-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1160, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-xoa-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@xoaBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@xoaBaoCaoKeHoachTuan', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-xoa-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1161, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-bc-is-group-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@bcIsGroupKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@bcIsGroupKeHoachTuan', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-bc-is-group-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1162, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-danh-sach-bao-cao-dhsxkd', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@danhSachBaoCaoDhsxkd', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@danhSachBaoCaoDhsxkd', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-danh-sach-bao-cao-dhsxkd', 1, 2, 1000, NULL),
	(1163, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-cap-nhat-ghi-chu-bao-cao-dhsxkd', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@capNhatGhiChuBaoCaoDhsxkd', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@capNhatGhiChuBaoCaoDhsxkd', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-cap-nhat-ghi-chu-bao-cao-dhsxkd', 1, 2, 1000, NULL),
	(1164, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-lay-so-lieu-bao-cao-dhsxkd', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@laySoLieuBaoCaoDhsxkd', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@laySoLieuBaoCaoDhsxkd', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-lay-so-lieu-bao-cao-dhsxkd', 1, 2, 1000, NULL),
	(1165, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-danh-sach-bao-cao-tong-hop', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@danhSachBaoCaoTongHop', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@danhSachBaoCaoTongHop', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-danh-sach-bao-cao-tong-hop', 1, 2, 1000, NULL),
	(1166, 'Trung tâm Viễn Thông', 'GET | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@baoCaoTuan', 'GET', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@baoCaoTuan', '', '', 1109, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong', 1, 1, 1000, NULL),
	(1167, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-bao-cao-tuan-chot-so-lieu', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@baoCaoTuanChotSoLieu', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@baoCaoTuanChotSoLieu', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-bao-cao-tuan-chot-so-lieu', 1, 2, 1000, NULL),
	(1168, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-danh-sach-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@danhSachBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@danhSachBaoCaoTuanHienTai', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-danh-sach-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1169, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-them-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@themBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@themBaoCaoTuanHienTai', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-them-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1170, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-xoa-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@xoaBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@xoaBaoCaoTuanHienTai', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-xoa-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1171, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-bc-is-group-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@bcIsGroupTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@bcIsGroupTuanHienTai', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-bc-is-group-tuan-hien-tai', 1, 2, 1000, NULL),
	(1172, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-danh-sach-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@danhSachBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@danhSachBaoCaoKeHoachTuan', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-danh-sach-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1173, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-them-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@themBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@themBaoCaoKeHoachTuan', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-them-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1174, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-xoa-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@xoaBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@xoaBaoCaoKeHoachTuan', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-xoa-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1175, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-bc-is-group-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@bcIsGroupKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@bcIsGroupKeHoachTuan', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-bc-is-group-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1176, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-danh-sach-bao-cao-dhsxkd', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@danhSachBaoCaoDhsxkd', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@danhSachBaoCaoDhsxkd', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-danh-sach-bao-cao-dhsxkd', 1, 2, 1000, NULL),
	(1177, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-cap-nhat-ghi-chu-bao-cao-dhsxkd', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@capNhatGhiChuBaoCaoDhsxkd', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@capNhatGhiChuBaoCaoDhsxkd', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-cap-nhat-ghi-chu-bao-cao-dhsxkd', 1, 2, 1000, NULL),
	(1178, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-lay-so-lieu-bao-cao-dhsxkd', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@laySoLieuBaoCaoDhsxkd', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@laySoLieuBaoCaoDhsxkd', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-lay-so-lieu-bao-cao-dhsxkd', 1, 2, 1000, NULL),
	(1179, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-danh-sach-bao-cao-tong-hop', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@danhSachBaoCaoTongHop', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@danhSachBaoCaoTongHop', '', '', 1, '2021-06-04 14:03:53', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-danh-sach-bao-cao-tong-hop', 1, 2, 1000, NULL),
	(1180, 'bao-cao-tuan/vien-thong-huyen/cap-nhat-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@capNhatBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@capNhatBaoCaoTuanHienTai', '', '', 1, '2021-06-13 02:10:12', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/cap-nhat-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1181, 'bao-cao-tuan/vien-thong-huyen/lay-du-lieu-tu-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@layDuLieuTuKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@layDuLieuTuKeHoachTuan', '', '', 1, '2021-06-13 02:10:12', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/lay-du-lieu-tu-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1182, 'bao-cao-tuan/vien-thong-huyen/cap-nhat-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@capNhatBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongHuyen\\VienThongHuyenController@capNhatBaoCaoKeHoachTuan', '', '', 1, '2021-06-13 02:10:12', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-huyen/cap-nhat-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1183, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-cap-nhat-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@capNhatBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@capNhatBaoCaoTuanHienTai', '', '', 1, '2021-06-13 02:10:12', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-cap-nhat-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1184, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-lay-du-lieu-tu-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@layDuLieuTuKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@layDuLieuTuKeHoachTuan', '', '', 1, '2021-06-13 02:10:12', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-lay-du-lieu-tu-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1185, 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-cap-nhat-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@capNhatBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\DonViTrucThuocKhac\\DonViTrucThuocKhacController@capNhatBaoCaoKeHoachTuan', '', '', 1, '2021-06-13 02:10:12', '2021-06-13 02:10:12', 'bao-cao-tuan/don-vi-truc-thuoc-khac/don-vi-truc-thuoc-khac-cap-nhat-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1186, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-cap-nhat-bao-cao-tuan-hien-tai', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@capNhatBaoCaoTuanHienTai', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@capNhatBaoCaoTuanHienTai', '', '', 1, '2021-06-13 02:10:12', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-cap-nhat-bao-cao-tuan-hien-tai', 1, 2, 1000, NULL),
	(1187, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-cap-nhat-bao-cao-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@capNhatBaoCaoKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@capNhatBaoCaoKeHoachTuan', '', '', 1, '2021-06-13 02:10:12', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-cap-nhat-bao-cao-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1188, 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-lay-du-lieu-tu-ke-hoach-tuan', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@layDuLieuTuKeHoachTuan', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\TrungTamVienThong\\TrungTamVienThongController@layDuLieuTuKeHoachTuan', '', '', 1, '2021-06-13 02:10:12', '2021-06-13 02:10:12', 'bao-cao-tuan/trung-tam-vien-thong/trung-tam-vien-thong-lay-du-lieu-tu-ke-hoach-tuan', 1, 2, 1000, NULL),
	(1189, 'Viễn thông tỉnh', 'GET | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongTinh\\VienThongTinhController@baoCaoTuan', 'GET', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongTinh\\VienThongTinhController@baoCaoTuan', '', '', 1109, '2021-06-13 02:10:12', '2021-06-13 02:10:51', 'bao-cao-tuan/vien-thong-tinh', 1, 1, 1000, NULL),
	(1190, 'bao-cao-tuan/vien-thong-tinh/vien-thong-tinh-danh-sach-bao-cao-tong-hop', 'POST | App\\Modules\\BaoCaoTuan\\Controllers\\VienThongTinh\\VienThongTinhController@danhSachBaoCaoTongHop', 'POST', 'App\\Modules\\BaoCaoTuan\\Controllers\\VienThongTinh\\VienThongTinhController@danhSachBaoCaoTongHop', '', '', 1, '2021-06-13 02:10:12', '2021-06-13 02:10:12', 'bao-cao-tuan/vien-thong-tinh/vien-thong-tinh-danh-sach-bao-cao-tong-hop', 1, 2, 1000, NULL);
/*!40000 ALTER TABLE `admin_resource` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.admin_role
CREATE TABLE IF NOT EXISTS `admin_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_don_vi` int(10) unsigned NOT NULL COMMENT 'id đơn vị cha có level = 0',
  `state` int(10) unsigned NOT NULL DEFAULT 1 COMMENT '0: ngừng hoạt động; 1: hoạt động',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_admin_role_don_vi` (`id_don_vi`),
  CONSTRAINT `FK_admin_role_don_vi` FOREIGN KEY (`id_don_vi`) REFERENCES `don_vi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vnptpayc.admin_role: ~2 rows (approximately)
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` (`id`, `role_name`, `id_don_vi`, `state`, `created_at`, `updated_at`) VALUES
	(1, 'Vãng lai', 1, 1, '2021-03-15 15:49:58', '2021-03-15 15:50:09'),
	(2, 'ADMIN', 1, 1, NULL, '2021-03-15 15:50:19');
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.admin_rule
CREATE TABLE IF NOT EXISTS `admin_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `resource_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `admin_rule_role_id_foreign` (`role_id`),
  KEY `admin_rule_resource_id_foreign` (`resource_id`),
  CONSTRAINT `admin_rule_resource_id_foreign` FOREIGN KEY (`resource_id`) REFERENCES `admin_resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `admin_rule_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=796 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vnptpayc.admin_rule: ~172 rows (approximately)
/*!40000 ALTER TABLE `admin_rule` DISABLE KEYS */;
INSERT INTO `admin_rule` (`id`, `role_id`, `resource_id`, `created_at`, `updated_at`) VALUES
	(446, 1, 964, '2021-03-25 10:41:49', '2021-03-25 10:41:49'),
	(447, 1, 993, '2021-03-25 10:41:49', '2021-03-25 10:41:49'),
	(448, 1, 965, '2021-03-25 10:41:50', '2021-03-25 10:41:50'),
	(498, 2, 899, '2021-03-25 10:42:01', '2021-03-25 10:42:01'),
	(499, 2, 900, '2021-03-25 10:42:01', '2021-03-25 10:42:01'),
	(500, 2, 901, '2021-03-25 10:42:01', '2021-03-25 10:42:01'),
	(501, 2, 902, '2021-03-25 10:42:01', '2021-03-25 10:42:01'),
	(575, 2, 912, '2021-04-06 10:53:47', '2021-04-06 10:53:47'),
	(576, 2, 913, '2021-04-06 10:53:47', '2021-04-06 10:53:47'),
	(577, 2, 914, '2021-04-06 10:53:47', '2021-04-06 10:53:47'),
	(578, 2, 915, '2021-04-06 10:53:47', '2021-04-06 10:53:47'),
	(579, 2, 916, '2021-04-06 10:53:47', '2021-04-06 10:53:47'),
	(581, 2, 1038, '2021-04-06 10:53:47', '2021-04-06 10:53:47'),
	(582, 2, 1039, '2021-04-06 10:53:47', '2021-04-06 10:53:47'),
	(583, 2, 1040, '2021-04-06 10:53:47', '2021-04-06 10:53:47'),
	(584, 2, 893, '2021-04-06 10:53:49', '2021-04-06 10:53:49'),
	(585, 2, 894, '2021-04-06 10:53:49', '2021-04-06 10:53:49'),
	(586, 2, 895, '2021-04-06 10:53:49', '2021-04-06 10:53:49'),
	(587, 2, 896, '2021-04-06 10:53:49', '2021-04-06 10:53:49'),
	(588, 2, 897, '2021-04-06 10:53:49', '2021-04-06 10:53:49'),
	(589, 2, 898, '2021-04-06 10:53:49', '2021-04-06 10:53:49'),
	(590, 2, 903, '2021-04-06 10:54:00', '2021-04-06 10:54:00'),
	(591, 2, 904, '2021-04-06 10:54:00', '2021-04-06 10:54:00'),
	(592, 2, 905, '2021-04-06 10:54:00', '2021-04-06 10:54:00'),
	(593, 2, 906, '2021-04-06 10:54:00', '2021-04-06 10:54:00'),
	(594, 2, 907, '2021-04-06 10:54:00', '2021-04-06 10:54:00'),
	(595, 2, 908, '2021-04-06 10:54:00', '2021-04-06 10:54:00'),
	(596, 2, 909, '2021-04-06 10:54:00', '2021-04-06 10:54:00'),
	(597, 2, 887, '2021-04-06 10:54:03', '2021-04-06 10:54:03'),
	(598, 2, 888, '2021-04-06 10:54:03', '2021-04-06 10:54:03'),
	(599, 2, 889, '2021-04-06 10:54:03', '2021-04-06 10:54:03'),
	(600, 2, 890, '2021-04-06 10:54:03', '2021-04-06 10:54:03'),
	(601, 2, 891, '2021-04-06 10:54:03', '2021-04-06 10:54:03'),
	(602, 2, 892, '2021-04-06 10:54:03', '2021-04-06 10:54:03'),
	(603, 2, 885, '2021-04-06 10:54:04', '2021-04-06 10:54:04'),
	(604, 2, 886, '2021-04-06 10:54:04', '2021-04-06 10:54:04'),
	(605, 2, 883, '2021-04-06 10:54:06', '2021-04-06 10:54:06'),
	(606, 2, 884, '2021-04-06 10:54:06', '2021-04-06 10:54:06'),
	(607, 2, 996, '2021-04-06 10:54:13', '2021-04-06 10:54:13'),
	(608, 2, 997, '2021-04-06 10:54:13', '2021-04-06 10:54:13'),
	(609, 2, 998, '2021-04-06 10:54:13', '2021-04-06 10:54:13'),
	(610, 2, 999, '2021-04-06 10:54:13', '2021-04-06 10:54:13'),
	(611, 2, 1000, '2021-04-06 10:54:13', '2021-04-06 10:54:13'),
	(612, 2, 1001, '2021-04-06 10:54:13', '2021-04-06 10:54:13'),
	(613, 2, 1003, '2021-04-06 10:54:13', '2021-04-06 10:54:13'),
	(614, 2, 1004, '2021-04-06 10:54:13', '2021-04-06 10:54:13'),
	(615, 2, 1005, '2021-04-06 10:54:13', '2021-04-06 10:54:13'),
	(626, 2, 965, '2021-04-09 15:31:30', '2021-04-09 15:31:30'),
	(631, 2, 910, '2021-04-09 16:37:50', '2021-04-09 16:37:50'),
	(635, 2, 964, '2021-04-09 16:37:55', '2021-04-09 16:37:55'),
	(636, 2, 993, '2021-04-09 16:37:55', '2021-04-09 16:37:55'),
	(643, 2, 1048, '2021-04-09 16:38:02', '2021-04-09 16:38:02'),
	(645, 2, 872, '2021-04-09 16:38:04', '2021-04-09 16:38:04'),
	(646, 2, 873, '2021-04-09 16:38:04', '2021-04-09 16:38:04'),
	(647, 2, 875, '2021-04-09 16:38:05', '2021-04-09 16:38:05'),
	(648, 2, 876, '2021-04-09 16:38:05', '2021-04-09 16:38:05'),
	(649, 2, 877, '2021-04-09 16:38:05', '2021-04-09 16:38:05'),
	(650, 2, 878, '2021-04-09 16:38:05', '2021-04-09 16:38:05'),
	(651, 2, 879, '2021-04-09 16:38:05', '2021-04-09 16:38:05'),
	(652, 2, 880, '2021-04-09 16:38:05', '2021-04-09 16:38:05'),
	(653, 2, 881, '2021-04-09 16:38:05', '2021-04-09 16:38:05'),
	(654, 2, 882, '2021-04-09 16:38:05', '2021-04-09 16:38:05'),
	(666, 2, 1064, '2021-04-19 15:11:12', '2021-04-19 15:11:12'),
	(667, 2, 1025, '2021-04-19 15:11:12', '2021-04-19 15:11:12'),
	(668, 2, 1026, '2021-04-19 15:11:12', '2021-04-19 15:11:12'),
	(669, 2, 1027, '2021-04-19 15:11:12', '2021-04-19 15:11:12'),
	(670, 2, 1028, '2021-04-19 15:11:12', '2021-04-19 15:11:12'),
	(671, 2, 1030, '2021-04-19 15:11:12', '2021-04-19 15:11:12'),
	(672, 2, 1031, '2021-04-19 15:11:12', '2021-04-19 15:11:12'),
	(673, 2, 1032, '2021-04-19 15:11:12', '2021-04-19 15:11:12'),
	(674, 2, 1033, '2021-04-19 15:11:12', '2021-04-19 15:11:12'),
	(675, 2, 1034, '2021-04-19 15:11:12', '2021-04-19 15:11:12'),
	(676, 2, 1041, '2021-04-19 15:11:12', '2021-04-19 15:11:12'),
	(677, 2, 1058, '2021-05-26 15:47:55', '2021-05-26 15:47:55'),
	(678, 2, 1059, '2021-05-26 15:47:55', '2021-05-26 15:47:55'),
	(679, 2, 1060, '2021-05-26 15:47:55', '2021-05-26 15:47:55'),
	(680, 2, 1061, '2021-05-26 15:47:55', '2021-05-26 15:47:55'),
	(681, 2, 1062, '2021-05-26 15:47:55', '2021-05-26 15:47:55'),
	(682, 2, 1063, '2021-05-26 15:47:55', '2021-05-26 15:47:55'),
	(683, 2, 1075, '2021-05-26 15:47:55', '2021-05-26 15:47:55'),
	(684, 2, 1076, '2021-05-26 15:47:55', '2021-05-26 15:47:55'),
	(685, 2, 1077, '2021-05-26 15:47:55', '2021-05-26 15:47:55'),
	(686, 2, 1078, '2021-05-26 15:47:55', '2021-05-26 15:47:55'),
	(697, 2, 1006, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(698, 2, 966, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(699, 2, 967, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(700, 2, 968, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(701, 2, 969, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(702, 2, 1071, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(703, 2, 1072, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(704, 2, 970, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(705, 2, 971, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(706, 2, 972, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(707, 2, 973, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(708, 2, 974, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(709, 2, 975, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(710, 2, 976, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(711, 2, 977, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(712, 2, 978, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(713, 2, 979, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(714, 2, 980, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(715, 2, 981, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(716, 2, 982, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(717, 2, 983, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(718, 2, 984, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(719, 2, 985, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(720, 2, 986, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(721, 2, 987, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(722, 2, 988, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(723, 2, 989, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(724, 2, 990, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(725, 2, 991, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(726, 2, 992, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(727, 2, 994, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(728, 2, 995, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(729, 2, 1035, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(730, 2, 1036, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(731, 2, 1042, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(732, 2, 1043, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(733, 2, 1044, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(734, 2, 1045, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(735, 2, 1046, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(736, 2, 1047, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(737, 2, 1055, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(738, 2, 1056, '2021-05-26 15:48:15', '2021-05-26 15:48:15'),
	(739, 2, 1065, '2021-05-26 15:49:34', '2021-05-26 15:49:34'),
	(740, 2, 1066, '2021-05-26 15:49:34', '2021-05-26 15:49:34'),
	(741, 2, 1067, '2021-05-26 15:49:34', '2021-05-26 15:49:34'),
	(742, 2, 1068, '2021-05-26 15:49:34', '2021-05-26 15:49:34'),
	(743, 2, 1069, '2021-05-26 15:49:34', '2021-05-26 15:49:34'),
	(744, 2, 1070, '2021-05-26 15:49:34', '2021-05-26 15:49:34'),
	(745, 2, 1079, '2021-05-26 16:08:03', '2021-05-26 16:08:03'),
	(746, 2, 1080, '2021-05-26 16:08:03', '2021-05-26 16:08:03'),
	(747, 2, 1081, '2021-05-26 16:08:03', '2021-05-26 16:08:03'),
	(748, 2, 1082, '2021-05-26 16:08:03', '2021-05-26 16:08:03'),
	(749, 2, 1083, '2021-05-26 16:08:03', '2021-05-26 16:08:03'),
	(750, 2, 1084, '2021-05-26 16:08:03', '2021-05-26 16:08:03'),
	(751, 2, 1085, '2021-05-28 08:48:21', '2021-05-28 08:48:21'),
	(752, 2, 1086, '2021-05-28 08:48:21', '2021-05-28 08:48:21'),
	(753, 2, 1087, '2021-05-28 08:48:21', '2021-05-28 08:48:21'),
	(754, 2, 1088, '2021-05-28 08:48:21', '2021-05-28 08:48:21'),
	(755, 2, 1089, '2021-05-28 08:48:21', '2021-05-28 08:48:21'),
	(756, 2, 1090, '2021-05-28 08:48:21', '2021-05-28 08:48:21'),
	(757, 2, 1091, '2021-05-28 08:48:22', '2021-05-28 08:48:22'),
	(758, 2, 1092, '2021-05-28 08:48:22', '2021-05-28 08:48:22'),
	(759, 2, 1093, '2021-05-28 08:48:22', '2021-05-28 08:48:22'),
	(760, 2, 1094, '2021-05-28 08:48:22', '2021-05-28 08:48:22'),
	(761, 2, 1095, '2021-05-28 08:48:22', '2021-05-28 08:48:22'),
	(762, 2, 1096, '2021-05-28 08:48:22', '2021-05-28 08:48:22'),
	(763, 2, 1097, '2021-05-28 08:48:23', '2021-05-28 08:48:23'),
	(764, 2, 1098, '2021-05-28 08:48:23', '2021-05-28 08:48:23'),
	(765, 2, 1099, '2021-05-28 08:48:23', '2021-05-28 08:48:23'),
	(766, 2, 1100, '2021-05-28 08:48:23', '2021-05-28 08:48:23'),
	(767, 2, 1101, '2021-05-28 08:48:23', '2021-05-28 08:48:23'),
	(768, 2, 1102, '2021-05-28 08:48:23', '2021-05-28 08:48:23'),
	(769, 2, 1103, '2021-05-28 08:48:24', '2021-05-28 08:48:24'),
	(770, 2, 1104, '2021-05-28 08:48:24', '2021-05-28 08:48:24'),
	(771, 2, 1105, '2021-05-28 08:48:24', '2021-05-28 08:48:24'),
	(772, 2, 1106, '2021-05-28 08:48:24', '2021-05-28 08:48:24'),
	(773, 2, 1107, '2021-05-28 08:48:24', '2021-05-28 08:48:24'),
	(774, 2, 1108, '2021-05-28 08:48:24', '2021-05-28 08:48:24'),
	(785, 2, 1144, '2021-06-04 14:08:04', '2021-06-04 14:08:04'),
	(786, 2, 1145, '2021-06-04 14:08:04', '2021-06-04 14:08:04'),
	(787, 2, 1146, '2021-06-04 14:08:04', '2021-06-04 14:08:04'),
	(788, 2, 1147, '2021-06-04 14:08:04', '2021-06-04 14:08:04'),
	(789, 2, 1148, '2021-06-04 14:08:04', '2021-06-04 14:08:04'),
	(790, 2, 1149, '2021-06-04 14:08:04', '2021-06-04 14:08:04'),
	(791, 2, 1109, '2021-06-13 02:11:20', '2021-06-13 02:11:20'),
	(792, 2, 1122, '2021-06-13 02:11:20', '2021-06-13 02:11:20'),
	(793, 2, 1133, '2021-06-13 02:11:20', '2021-06-13 02:11:20'),
	(794, 2, 1166, '2021-06-13 02:11:20', '2021-06-13 02:11:20'),
	(795, 2, 1189, '2021-06-13 02:11:20', '2021-06-13 02:11:20');
/*!40000 ALTER TABLE `admin_rule` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.bc_dhsxkd
CREATE TABLE IF NOT EXISTS `bc_dhsxkd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_don_vi` varchar(50) DEFAULT NULL,
  `ma_dinh_danh` varchar(50) DEFAULT NULL,
  `id_thoigian_baocao` int(11) DEFAULT NULL,
  `id_user_bao_cao` int(10) unsigned NOT NULL,
  `chi_so` varchar(250) DEFAULT NULL,
  `gia_tri` varchar(50) DEFAULT NULL,
  `is_group` int(11) NOT NULL COMMENT '0 là không phải group; 1 là group',
  `ghi_chu` varchar(50) DEFAULT NULL,
  `loai_chi_so` varchar(250) DEFAULT 'PHAT_TRIEN_MOI' COMMENT 'PHAT_TRIEN_MOI, XU_LY_SUY_HAO, PAKN,...',
  `suy_hao` varchar(50) DEFAULT NULL,
  `suy_hao_con_lai` varchar(50) DEFAULT NULL,
  `trang_thai` int(11) NOT NULL COMMENT '0 chưa chốt; 1 đã chốt',
  `sap_xep` int(11) NOT NULL COMMENT 'Sắp xếp theo tuần',
  PRIMARY KEY (`id`),
  KEY `FK_bc_dhsxkd_users` (`id_user_bao_cao`),
  KEY `FK_bc_dhsxkd_bc_dm_thoi_gian_bao_cao` (`id_thoigian_baocao`),
  CONSTRAINT `FK_bc_dhsxkd_bc_dm_thoi_gian_bao_cao` FOREIGN KEY (`id_thoigian_baocao`) REFERENCES `bc_dm_thoi_gian_bao_cao` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_bc_dhsxkd_users` FOREIGN KEY (`id_user_bao_cao`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.bc_dhsxkd: ~15 rows (approximately)
/*!40000 ALTER TABLE `bc_dhsxkd` DISABLE KEYS */;
INSERT INTO `bc_dhsxkd` (`id`, `ma_don_vi`, `ma_dinh_danh`, `id_thoigian_baocao`, `id_user_bao_cao`, `chi_so`, `gia_tri`, `is_group`, `ghi_chu`, `loai_chi_so`, `suy_hao`, `suy_hao_con_lai`, `trang_thai`, `sap_xep`) VALUES
	(306, 'VT_TPO', '001.02.01.H59', 44, 41, 'MyTV', '10', 0, '', 'PHAT_TRIEN_MOI', NULL, NULL, 2, 0),
	(307, 'VT_TPO', '001.02.01.H59', 44, 41, 'G0', '11', 0, '', 'PHAT_TRIEN_MOI', NULL, NULL, 2, 0),
	(308, 'VT_TPO', '001.02.01.H59', 44, 41, 'G1', '14', 0, '', 'PHAT_TRIEN_MOI', NULL, NULL, 2, 0),
	(309, 'VT_TPO', '001.02.01.H59', 44, 41, 'G2', '13', 0, '', 'PHAT_TRIEN_MOI', NULL, NULL, 2, 0),
	(310, 'VT_TPO', '001.02.01.H59', 44, 41, 'Phan Văn Thanh', '0', 0, '', 'XU_LY_SUY_HAO', '10', '12', 2, 0),
	(311, 'VT_TPO', '001.02.01.H59', 44, 41, 'Nguyễn Minh Vương', '14', 0, '', 'XU_LY_SUY_HAO', '10', '12', 2, 0),
	(312, 'VT_TPO', '001.02.01.H59', 44, 41, 'Nguyễn Thanh Tùng', '13', 0, '', 'XU_LY_SUY_HAO', '10', '12', 2, 0),
	(313, 'TTVT1', '000.02.01.H59', 45, 41, 'XU_LY_PAKN', '10', 0, '', 'PAKN', NULL, NULL, 2, 0),
	(314, 'TTVT1', '000.02.01.H59', 45, 41, 'PAKN_CHUA_XU_LY', '11', 0, '', 'PAKN', NULL, NULL, 2, 0),
	(315, 'TTVT1', '000.02.01.H59', 45, 41, 'PAKN_DANG_XU_LY', '11', 0, '', 'PAKN', NULL, NULL, 2, 0),
	(316, 'TTVT1', '000.02.01.H59', 45, 41, 'PAKN_DA_XU_LY', '11', 0, '', 'PAKN', NULL, NULL, 2, 0),
	(317, 'TTCNTT', '000.01.01.H59', 46, 48, 'XU_LY_PAKN', '10', 0, '', 'PAKN', NULL, NULL, 0, 0),
	(318, 'TTCNTT', '000.01.01.H59', 46, 48, 'PAKN_CHUA_XU_LY', '11', 0, '', 'PAKN', NULL, NULL, 0, 0),
	(319, 'TTCNTT', '000.01.01.H59', 46, 48, 'PAKN_DANG_XU_LY', '11', 0, 'Số liệu này không đúng', 'PAKN', NULL, NULL, 0, 0),
	(320, 'TTCNTT', '000.01.01.H59', 46, 48, 'PAKN_DA_XU_LY', '11', 0, '', 'PAKN', NULL, NULL, 0, 0);
/*!40000 ALTER TABLE `bc_dhsxkd` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.bc_dm_chi_so
CREATE TABLE IF NOT EXISTS `bc_dm_chi_so` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chi_so` varchar(250) NOT NULL,
  `mo_ta` varchar(250) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `ngay_cap_nhat` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `chi_so` (`chi_so`),
  KEY `FK_bc_dm_chi_so_bc_dm_chi_so` (`parent_id`),
  CONSTRAINT `FK_bc_dm_chi_so_bc_dm_chi_so` FOREIGN KEY (`parent_id`) REFERENCES `bc_dm_chi_so` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.bc_dm_chi_so: ~0 rows (approximately)
/*!40000 ALTER TABLE `bc_dm_chi_so` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_dm_chi_so` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.bc_dm_thoi_gian_bao_cao
CREATE TABLE IF NOT EXISTS `bc_dm_thoi_gian_bao_cao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_don_vi` varchar(50) DEFAULT NULL,
  `ma_dinh_danh` varchar(50) DEFAULT NULL,
  `id_tuan` int(11) DEFAULT NULL,
  `thoi_gian_lay_so_lieu` datetime DEFAULT NULL,
  `thoi_gian_chot_so_lieu` datetime DEFAULT NULL,
  `ghi_chu` varchar(250) DEFAULT NULL,
  `trang_thai` int(11) NOT NULL COMMENT '0 chưa chốt; 1 đã chốt',
  PRIMARY KEY (`id`),
  KEY `FK_bc_thoigian_bc_donvi_bc_dm_tuan` (`id_tuan`),
  CONSTRAINT `FK_bc_thoigian_bc_donvi_bc_dm_tuan` FOREIGN KEY (`id_tuan`) REFERENCES `bc_dm_tuan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.bc_dm_thoi_gian_bao_cao: ~13 rows (approximately)
/*!40000 ALTER TABLE `bc_dm_thoi_gian_bao_cao` DISABLE KEYS */;
INSERT INTO `bc_dm_thoi_gian_bao_cao` (`id`, `ma_don_vi`, `ma_dinh_danh`, `id_tuan`, `thoi_gian_lay_so_lieu`, `thoi_gian_chot_so_lieu`, `ghi_chu`, `trang_thai`) VALUES
	(44, 'VT_TPO', '001.02.01.H59', 574, '2021-06-14 15:25:22', '2021-06-14 15:25:21', NULL, 2),
	(45, 'TTVT1', '000.02.01.H59', 574, '2021-06-14 21:14:58', '2021-06-14 15:25:29', NULL, 2),
	(46, 'TTCNTT', '000.01.01.H59', 574, '2021-06-14 21:14:58', NULL, NULL, 0),
	(47, 'TTKD', '000.01.01.H59', 574, '2021-06-14 21:14:58', NULL, NULL, 0),
	(48, 'TTDHTT', '000.01.01.H59', 574, '2021-06-14 21:14:58', NULL, NULL, 0),
	(49, 'NSTH', NULL, 574, '2021-06-14 21:14:58', NULL, NULL, 0),
	(50, 'KTDT', NULL, 574, '2021-06-14 21:14:58', NULL, NULL, 0),
	(51, 'KHKT', NULL, 574, '2021-06-14 21:14:58', NULL, NULL, 0),
	(52, 'KCTD', NULL, 574, '2021-06-14 21:14:58', NULL, NULL, 0),
	(53, 'CD', NULL, 574, '2021-06-14 21:14:58', NULL, NULL, 0),
	(54, 'DTN', NULL, 574, '2021-06-14 21:14:58', NULL, NULL, 0),
	(55, 'TTVT2', '000.03.01.H59', 574, '2021-06-14 21:14:58', NULL, NULL, 0),
	(56, 'TTVT3', '000.04.01.H59', 574, '2021-06-14 21:14:58', NULL, NULL, 0);
/*!40000 ALTER TABLE `bc_dm_thoi_gian_bao_cao` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.bc_dm_tuan
CREATE TABLE IF NOT EXISTS `bc_dm_tuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nam` int(11) DEFAULT NULL,
  `thang` int(11) DEFAULT NULL,
  `tuan` int(11) DEFAULT NULL,
  `tu_ngay` date DEFAULT NULL,
  `den_ngay` date DEFAULT NULL,
  `trang_thai` int(11) NOT NULL DEFAULT 0 COMMENT '0 không hoạt động; 1 hoạt động',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1072 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.bc_dm_tuan: ~521 rows (approximately)
/*!40000 ALTER TABLE `bc_dm_tuan` DISABLE KEYS */;
INSERT INTO `bc_dm_tuan` (`id`, `nam`, `thang`, `tuan`, `tu_ngay`, `den_ngay`, `trang_thai`) VALUES
	(551, 2021, NULL, 1, '2021-01-04', '2021-01-08', 1),
	(552, 2021, NULL, 2, '2021-01-11', '2021-01-15', 1),
	(553, 2021, NULL, 3, '2021-01-18', '2021-01-22', 1),
	(554, 2021, NULL, 4, '2021-01-25', '2021-01-29', 1),
	(555, 2021, NULL, 5, '2021-02-01', '2021-02-05', 1),
	(556, 2021, NULL, 6, '2021-02-08', '2021-02-12', 1),
	(557, 2021, NULL, 7, '2021-02-15', '2021-02-19', 1),
	(558, 2021, NULL, 8, '2021-02-22', '2021-02-26', 1),
	(559, 2021, NULL, 9, '2021-03-01', '2021-03-05', 1),
	(560, 2021, NULL, 10, '2021-03-08', '2021-03-12', 1),
	(561, 2021, NULL, 11, '2021-03-15', '2021-03-19', 1),
	(562, 2021, NULL, 12, '2021-03-22', '2021-03-26', 1),
	(563, 2021, NULL, 13, '2021-03-29', '2021-04-02', 1),
	(564, 2021, NULL, 14, '2021-04-05', '2021-04-09', 1),
	(565, 2021, NULL, 15, '2021-04-12', '2021-04-16', 1),
	(566, 2021, NULL, 16, '2021-04-19', '2021-04-23', 1),
	(567, 2021, NULL, 17, '2021-04-26', '2021-04-30', 1),
	(568, 2021, NULL, 18, '2021-05-03', '2021-05-07', 1),
	(569, 2021, NULL, 19, '2021-05-10', '2021-05-14', 1),
	(570, 2021, NULL, 20, '2021-05-17', '2021-05-21', 1),
	(571, 2021, NULL, 21, '2021-05-24', '2021-05-28', 1),
	(572, 2021, NULL, 22, '2021-05-31', '2021-06-04', 1),
	(573, 2021, NULL, 23, '2021-06-07', '2021-06-11', 1),
	(574, 2021, NULL, 24, '2021-06-14', '2021-06-18', 1),
	(575, 2021, NULL, 25, '2021-06-21', '2021-06-25', 1),
	(576, 2021, NULL, 26, '2021-06-28', '2021-07-02', 1),
	(577, 2021, NULL, 27, '2021-07-05', '2021-07-09', 1),
	(578, 2021, NULL, 28, '2021-07-12', '2021-07-16', 1),
	(579, 2021, NULL, 29, '2021-07-19', '2021-07-23', 1),
	(580, 2021, NULL, 30, '2021-07-26', '2021-07-30', 1),
	(581, 2021, NULL, 31, '2021-08-02', '2021-08-06', 1),
	(582, 2021, NULL, 32, '2021-08-09', '2021-08-13', 1),
	(583, 2021, NULL, 33, '2021-08-16', '2021-08-20', 1),
	(584, 2021, NULL, 34, '2021-08-23', '2021-08-27', 1),
	(585, 2021, NULL, 35, '2021-08-30', '2021-09-03', 1),
	(586, 2021, NULL, 36, '2021-09-06', '2021-09-10', 1),
	(587, 2021, NULL, 37, '2021-09-13', '2021-09-17', 1),
	(588, 2021, NULL, 38, '2021-09-20', '2021-09-24', 1),
	(589, 2021, NULL, 39, '2021-09-27', '2021-10-01', 1),
	(590, 2021, NULL, 40, '2021-10-04', '2021-10-08', 1),
	(591, 2021, NULL, 41, '2021-10-11', '2021-10-15', 1),
	(592, 2021, NULL, 42, '2021-10-18', '2021-10-22', 1),
	(593, 2021, NULL, 43, '2021-10-25', '2021-10-29', 1),
	(594, 2021, NULL, 44, '2021-11-01', '2021-11-05', 1),
	(595, 2021, NULL, 45, '2021-11-08', '2021-11-12', 1),
	(596, 2021, NULL, 46, '2021-11-15', '2021-11-19', 1),
	(597, 2021, NULL, 47, '2021-11-22', '2021-11-26', 1),
	(598, 2021, NULL, 48, '2021-11-29', '2021-12-03', 1),
	(599, 2021, NULL, 49, '2021-12-06', '2021-12-10', 1),
	(600, 2021, NULL, 50, '2021-12-13', '2021-12-17', 1),
	(601, 2021, NULL, 51, '2021-12-20', '2021-12-24', 1),
	(602, 2021, NULL, 52, '2021-12-27', '2021-12-31', 1),
	(603, 2022, NULL, 1, '2022-01-03', '2022-01-07', 1),
	(604, 2022, NULL, 2, '2022-01-10', '2022-01-14', 1),
	(605, 2022, NULL, 3, '2022-01-17', '2022-01-21', 1),
	(606, 2022, NULL, 4, '2022-01-24', '2022-01-28', 1),
	(607, 2022, NULL, 5, '2022-01-31', '2022-02-04', 1),
	(608, 2022, NULL, 6, '2022-02-07', '2022-02-11', 1),
	(609, 2022, NULL, 7, '2022-02-14', '2022-02-18', 1),
	(610, 2022, NULL, 8, '2022-02-21', '2022-02-25', 1),
	(611, 2022, NULL, 9, '2022-02-28', '2022-03-04', 1),
	(612, 2022, NULL, 10, '2022-03-07', '2022-03-11', 1),
	(613, 2022, NULL, 11, '2022-03-14', '2022-03-18', 1),
	(614, 2022, NULL, 12, '2022-03-21', '2022-03-25', 1),
	(615, 2022, NULL, 13, '2022-03-28', '2022-04-01', 1),
	(616, 2022, NULL, 14, '2022-04-04', '2022-04-08', 1),
	(617, 2022, NULL, 15, '2022-04-11', '2022-04-15', 1),
	(618, 2022, NULL, 16, '2022-04-18', '2022-04-22', 1),
	(619, 2022, NULL, 17, '2022-04-25', '2022-04-29', 1),
	(620, 2022, NULL, 18, '2022-05-02', '2022-05-06', 1),
	(621, 2022, NULL, 19, '2022-05-09', '2022-05-13', 1),
	(622, 2022, NULL, 20, '2022-05-16', '2022-05-20', 1),
	(623, 2022, NULL, 21, '2022-05-23', '2022-05-27', 1),
	(624, 2022, NULL, 22, '2022-05-30', '2022-06-03', 1),
	(625, 2022, NULL, 23, '2022-06-06', '2022-06-10', 1),
	(626, 2022, NULL, 24, '2022-06-13', '2022-06-17', 1),
	(627, 2022, NULL, 25, '2022-06-20', '2022-06-24', 1),
	(628, 2022, NULL, 26, '2022-06-27', '2022-07-01', 1),
	(629, 2022, NULL, 27, '2022-07-04', '2022-07-08', 1),
	(630, 2022, NULL, 28, '2022-07-11', '2022-07-15', 1),
	(631, 2022, NULL, 29, '2022-07-18', '2022-07-22', 1),
	(632, 2022, NULL, 30, '2022-07-25', '2022-07-29', 1),
	(633, 2022, NULL, 31, '2022-08-01', '2022-08-05', 1),
	(634, 2022, NULL, 32, '2022-08-08', '2022-08-12', 1),
	(635, 2022, NULL, 33, '2022-08-15', '2022-08-19', 1),
	(636, 2022, NULL, 34, '2022-08-22', '2022-08-26', 1),
	(637, 2022, NULL, 35, '2022-08-29', '2022-09-02', 1),
	(638, 2022, NULL, 36, '2022-09-05', '2022-09-09', 1),
	(639, 2022, NULL, 37, '2022-09-12', '2022-09-16', 1),
	(640, 2022, NULL, 38, '2022-09-19', '2022-09-23', 1),
	(641, 2022, NULL, 39, '2022-09-26', '2022-09-30', 1),
	(642, 2022, NULL, 40, '2022-10-03', '2022-10-07', 1),
	(643, 2022, NULL, 41, '2022-10-10', '2022-10-14', 1),
	(644, 2022, NULL, 42, '2022-10-17', '2022-10-21', 1),
	(645, 2022, NULL, 43, '2022-10-24', '2022-10-28', 1),
	(646, 2022, NULL, 44, '2022-10-31', '2022-11-04', 1),
	(647, 2022, NULL, 45, '2022-11-07', '2022-11-11', 1),
	(648, 2022, NULL, 46, '2022-11-14', '2022-11-18', 1),
	(649, 2022, NULL, 47, '2022-11-21', '2022-11-25', 1),
	(650, 2022, NULL, 48, '2022-11-28', '2022-12-02', 1),
	(651, 2022, NULL, 49, '2022-12-05', '2022-12-09', 1),
	(652, 2022, NULL, 50, '2022-12-12', '2022-12-16', 1),
	(653, 2022, NULL, 51, '2022-12-19', '2022-12-23', 1),
	(654, 2022, NULL, 52, '2022-12-26', '2022-12-30', 1),
	(655, 2023, NULL, 1, '2023-01-02', '2023-01-06', 1),
	(656, 2023, NULL, 2, '2023-01-09', '2023-01-13', 1),
	(657, 2023, NULL, 3, '2023-01-16', '2023-01-20', 1),
	(658, 2023, NULL, 4, '2023-01-23', '2023-01-27', 1),
	(659, 2023, NULL, 5, '2023-01-30', '2023-02-03', 1),
	(660, 2023, NULL, 6, '2023-02-06', '2023-02-10', 1),
	(661, 2023, NULL, 7, '2023-02-13', '2023-02-17', 1),
	(662, 2023, NULL, 8, '2023-02-20', '2023-02-24', 1),
	(663, 2023, NULL, 9, '2023-02-27', '2023-03-03', 1),
	(664, 2023, NULL, 10, '2023-03-06', '2023-03-10', 1),
	(665, 2023, NULL, 11, '2023-03-13', '2023-03-17', 1),
	(666, 2023, NULL, 12, '2023-03-20', '2023-03-24', 1),
	(667, 2023, NULL, 13, '2023-03-27', '2023-03-31', 1),
	(668, 2023, NULL, 14, '2023-04-03', '2023-04-07', 1),
	(669, 2023, NULL, 15, '2023-04-10', '2023-04-14', 1),
	(670, 2023, NULL, 16, '2023-04-17', '2023-04-21', 1),
	(671, 2023, NULL, 17, '2023-04-24', '2023-04-28', 1),
	(672, 2023, NULL, 18, '2023-05-01', '2023-05-05', 1),
	(673, 2023, NULL, 19, '2023-05-08', '2023-05-12', 1),
	(674, 2023, NULL, 20, '2023-05-15', '2023-05-19', 1),
	(675, 2023, NULL, 21, '2023-05-22', '2023-05-26', 1),
	(676, 2023, NULL, 22, '2023-05-29', '2023-06-02', 1),
	(677, 2023, NULL, 23, '2023-06-05', '2023-06-09', 1),
	(678, 2023, NULL, 24, '2023-06-12', '2023-06-16', 1),
	(679, 2023, NULL, 25, '2023-06-19', '2023-06-23', 1),
	(680, 2023, NULL, 26, '2023-06-26', '2023-06-30', 1),
	(681, 2023, NULL, 27, '2023-07-03', '2023-07-07', 1),
	(682, 2023, NULL, 28, '2023-07-10', '2023-07-14', 1),
	(683, 2023, NULL, 29, '2023-07-17', '2023-07-21', 1),
	(684, 2023, NULL, 30, '2023-07-24', '2023-07-28', 1),
	(685, 2023, NULL, 31, '2023-07-31', '2023-08-04', 1),
	(686, 2023, NULL, 32, '2023-08-07', '2023-08-11', 1),
	(687, 2023, NULL, 33, '2023-08-14', '2023-08-18', 1),
	(688, 2023, NULL, 34, '2023-08-21', '2023-08-25', 1),
	(689, 2023, NULL, 35, '2023-08-28', '2023-09-01', 1),
	(690, 2023, NULL, 36, '2023-09-04', '2023-09-08', 1),
	(691, 2023, NULL, 37, '2023-09-11', '2023-09-15', 1),
	(692, 2023, NULL, 38, '2023-09-18', '2023-09-22', 1),
	(693, 2023, NULL, 39, '2023-09-25', '2023-09-29', 1),
	(694, 2023, NULL, 40, '2023-10-02', '2023-10-06', 1),
	(695, 2023, NULL, 41, '2023-10-09', '2023-10-13', 1),
	(696, 2023, NULL, 42, '2023-10-16', '2023-10-20', 1),
	(697, 2023, NULL, 43, '2023-10-23', '2023-10-27', 1),
	(698, 2023, NULL, 44, '2023-10-30', '2023-11-03', 1),
	(699, 2023, NULL, 45, '2023-11-06', '2023-11-10', 1),
	(700, 2023, NULL, 46, '2023-11-13', '2023-11-17', 1),
	(701, 2023, NULL, 47, '2023-11-20', '2023-11-24', 1),
	(702, 2023, NULL, 48, '2023-11-27', '2023-12-01', 1),
	(703, 2023, NULL, 49, '2023-12-04', '2023-12-08', 1),
	(704, 2023, NULL, 50, '2023-12-11', '2023-12-15', 1),
	(705, 2023, NULL, 51, '2023-12-18', '2023-12-22', 1),
	(706, 2023, NULL, 52, '2023-12-25', '2023-12-29', 1),
	(707, 2024, NULL, 1, '2024-01-01', '2024-01-05', 1),
	(708, 2024, NULL, 2, '2024-01-08', '2024-01-12', 1),
	(709, 2024, NULL, 3, '2024-01-15', '2024-01-19', 1),
	(710, 2024, NULL, 4, '2024-01-22', '2024-01-26', 1),
	(711, 2024, NULL, 5, '2024-01-29', '2024-02-02', 1),
	(712, 2024, NULL, 6, '2024-02-05', '2024-02-09', 1),
	(713, 2024, NULL, 7, '2024-02-12', '2024-02-16', 1),
	(714, 2024, NULL, 8, '2024-02-19', '2024-02-23', 1),
	(715, 2024, NULL, 9, '2024-02-26', '2024-03-01', 1),
	(716, 2024, NULL, 10, '2024-03-04', '2024-03-08', 1),
	(717, 2024, NULL, 11, '2024-03-11', '2024-03-15', 1),
	(718, 2024, NULL, 12, '2024-03-18', '2024-03-22', 1),
	(719, 2024, NULL, 13, '2024-03-25', '2024-03-29', 1),
	(720, 2024, NULL, 14, '2024-04-01', '2024-04-05', 1),
	(721, 2024, NULL, 15, '2024-04-08', '2024-04-12', 1),
	(722, 2024, NULL, 16, '2024-04-15', '2024-04-19', 1),
	(723, 2024, NULL, 17, '2024-04-22', '2024-04-26', 1),
	(724, 2024, NULL, 18, '2024-04-29', '2024-05-03', 1),
	(725, 2024, NULL, 19, '2024-05-06', '2024-05-10', 1),
	(726, 2024, NULL, 20, '2024-05-13', '2024-05-17', 1),
	(727, 2024, NULL, 21, '2024-05-20', '2024-05-24', 1),
	(728, 2024, NULL, 22, '2024-05-27', '2024-05-31', 1),
	(729, 2024, NULL, 23, '2024-06-03', '2024-06-07', 1),
	(730, 2024, NULL, 24, '2024-06-10', '2024-06-14', 1),
	(731, 2024, NULL, 25, '2024-06-17', '2024-06-21', 1),
	(732, 2024, NULL, 26, '2024-06-24', '2024-06-28', 1),
	(733, 2024, NULL, 27, '2024-07-01', '2024-07-05', 1),
	(734, 2024, NULL, 28, '2024-07-08', '2024-07-12', 1),
	(735, 2024, NULL, 29, '2024-07-15', '2024-07-19', 1),
	(736, 2024, NULL, 30, '2024-07-22', '2024-07-26', 1),
	(737, 2024, NULL, 31, '2024-07-29', '2024-08-02', 1),
	(738, 2024, NULL, 32, '2024-08-05', '2024-08-09', 1),
	(739, 2024, NULL, 33, '2024-08-12', '2024-08-16', 1),
	(740, 2024, NULL, 34, '2024-08-19', '2024-08-23', 1),
	(741, 2024, NULL, 35, '2024-08-26', '2024-08-30', 1),
	(742, 2024, NULL, 36, '2024-09-02', '2024-09-06', 1),
	(743, 2024, NULL, 37, '2024-09-09', '2024-09-13', 1),
	(744, 2024, NULL, 38, '2024-09-16', '2024-09-20', 1),
	(745, 2024, NULL, 39, '2024-09-23', '2024-09-27', 1),
	(746, 2024, NULL, 40, '2024-09-30', '2024-10-04', 1),
	(747, 2024, NULL, 41, '2024-10-07', '2024-10-11', 1),
	(748, 2024, NULL, 42, '2024-10-14', '2024-10-18', 1),
	(749, 2024, NULL, 43, '2024-10-21', '2024-10-25', 1),
	(750, 2024, NULL, 44, '2024-10-28', '2024-11-01', 1),
	(751, 2024, NULL, 45, '2024-11-04', '2024-11-08', 1),
	(752, 2024, NULL, 46, '2024-11-11', '2024-11-15', 1),
	(753, 2024, NULL, 47, '2024-11-18', '2024-11-22', 1),
	(754, 2024, NULL, 48, '2024-11-25', '2024-11-29', 1),
	(755, 2024, NULL, 49, '2024-12-02', '2024-12-06', 1),
	(756, 2024, NULL, 50, '2024-12-09', '2024-12-13', 1),
	(757, 2024, NULL, 51, '2024-12-16', '2024-12-20', 1),
	(758, 2024, NULL, 52, '2024-12-23', '2024-12-27', 1),
	(759, 2025, NULL, 1, '2024-12-30', '2025-01-03', 1),
	(760, 2025, NULL, 2, '2025-01-06', '2025-01-10', 1),
	(761, 2025, NULL, 3, '2025-01-13', '2025-01-17', 1),
	(762, 2025, NULL, 4, '2025-01-20', '2025-01-24', 1),
	(763, 2025, NULL, 5, '2025-01-27', '2025-01-31', 1),
	(764, 2025, NULL, 6, '2025-02-03', '2025-02-07', 1),
	(765, 2025, NULL, 7, '2025-02-10', '2025-02-14', 1),
	(766, 2025, NULL, 8, '2025-02-17', '2025-02-21', 1),
	(767, 2025, NULL, 9, '2025-02-24', '2025-02-28', 1),
	(768, 2025, NULL, 10, '2025-03-03', '2025-03-07', 1),
	(769, 2025, NULL, 11, '2025-03-10', '2025-03-14', 1),
	(770, 2025, NULL, 12, '2025-03-17', '2025-03-21', 1),
	(771, 2025, NULL, 13, '2025-03-24', '2025-03-28', 1),
	(772, 2025, NULL, 14, '2025-03-31', '2025-04-04', 1),
	(773, 2025, NULL, 15, '2025-04-07', '2025-04-11', 1),
	(774, 2025, NULL, 16, '2025-04-14', '2025-04-18', 1),
	(775, 2025, NULL, 17, '2025-04-21', '2025-04-25', 1),
	(776, 2025, NULL, 18, '2025-04-28', '2025-05-02', 1),
	(777, 2025, NULL, 19, '2025-05-05', '2025-05-09', 1),
	(778, 2025, NULL, 20, '2025-05-12', '2025-05-16', 1),
	(779, 2025, NULL, 21, '2025-05-19', '2025-05-23', 1),
	(780, 2025, NULL, 22, '2025-05-26', '2025-05-30', 1),
	(781, 2025, NULL, 23, '2025-06-02', '2025-06-06', 1),
	(782, 2025, NULL, 24, '2025-06-09', '2025-06-13', 1),
	(783, 2025, NULL, 25, '2025-06-16', '2025-06-20', 1),
	(784, 2025, NULL, 26, '2025-06-23', '2025-06-27', 1),
	(785, 2025, NULL, 27, '2025-06-30', '2025-07-04', 1),
	(786, 2025, NULL, 28, '2025-07-07', '2025-07-11', 1),
	(787, 2025, NULL, 29, '2025-07-14', '2025-07-18', 1),
	(788, 2025, NULL, 30, '2025-07-21', '2025-07-25', 1),
	(789, 2025, NULL, 31, '2025-07-28', '2025-08-01', 1),
	(790, 2025, NULL, 32, '2025-08-04', '2025-08-08', 1),
	(791, 2025, NULL, 33, '2025-08-11', '2025-08-15', 1),
	(792, 2025, NULL, 34, '2025-08-18', '2025-08-22', 1),
	(793, 2025, NULL, 35, '2025-08-25', '2025-08-29', 1),
	(794, 2025, NULL, 36, '2025-09-01', '2025-09-05', 1),
	(795, 2025, NULL, 37, '2025-09-08', '2025-09-12', 1),
	(796, 2025, NULL, 38, '2025-09-15', '2025-09-19', 1),
	(797, 2025, NULL, 39, '2025-09-22', '2025-09-26', 1),
	(798, 2025, NULL, 40, '2025-09-29', '2025-10-03', 1),
	(799, 2025, NULL, 41, '2025-10-06', '2025-10-10', 1),
	(800, 2025, NULL, 42, '2025-10-13', '2025-10-17', 1),
	(801, 2025, NULL, 43, '2025-10-20', '2025-10-24', 1),
	(802, 2025, NULL, 44, '2025-10-27', '2025-10-31', 1),
	(803, 2025, NULL, 45, '2025-11-03', '2025-11-07', 1),
	(804, 2025, NULL, 46, '2025-11-10', '2025-11-14', 1),
	(805, 2025, NULL, 47, '2025-11-17', '2025-11-21', 1),
	(806, 2025, NULL, 48, '2025-11-24', '2025-11-28', 1),
	(807, 2025, NULL, 49, '2025-12-01', '2025-12-05', 1),
	(808, 2025, NULL, 50, '2025-12-08', '2025-12-12', 1),
	(809, 2025, NULL, 51, '2025-12-15', '2025-12-19', 1),
	(810, 2025, NULL, 52, '2025-12-22', '2025-12-26', 1),
	(811, 2026, NULL, 1, '2025-12-29', '2026-01-02', 1),
	(812, 2026, NULL, 2, '2026-01-05', '2026-01-09', 1),
	(813, 2026, NULL, 3, '2026-01-12', '2026-01-16', 1),
	(814, 2026, NULL, 4, '2026-01-19', '2026-01-23', 1),
	(815, 2026, NULL, 5, '2026-01-26', '2026-01-30', 1),
	(816, 2026, NULL, 6, '2026-02-02', '2026-02-06', 1),
	(817, 2026, NULL, 7, '2026-02-09', '2026-02-13', 1),
	(818, 2026, NULL, 8, '2026-02-16', '2026-02-20', 1),
	(819, 2026, NULL, 9, '2026-02-23', '2026-02-27', 1),
	(820, 2026, NULL, 10, '2026-03-02', '2026-03-06', 1),
	(821, 2026, NULL, 11, '2026-03-09', '2026-03-13', 1),
	(822, 2026, NULL, 12, '2026-03-16', '2026-03-20', 1),
	(823, 2026, NULL, 13, '2026-03-23', '2026-03-27', 1),
	(824, 2026, NULL, 14, '2026-03-30', '2026-04-03', 1),
	(825, 2026, NULL, 15, '2026-04-06', '2026-04-10', 1),
	(826, 2026, NULL, 16, '2026-04-13', '2026-04-17', 1),
	(827, 2026, NULL, 17, '2026-04-20', '2026-04-24', 1),
	(828, 2026, NULL, 18, '2026-04-27', '2026-05-01', 1),
	(829, 2026, NULL, 19, '2026-05-04', '2026-05-08', 1),
	(830, 2026, NULL, 20, '2026-05-11', '2026-05-15', 1),
	(831, 2026, NULL, 21, '2026-05-18', '2026-05-22', 1),
	(832, 2026, NULL, 22, '2026-05-25', '2026-05-29', 1),
	(833, 2026, NULL, 23, '2026-06-01', '2026-06-05', 1),
	(834, 2026, NULL, 24, '2026-06-08', '2026-06-12', 1),
	(835, 2026, NULL, 25, '2026-06-15', '2026-06-19', 1),
	(836, 2026, NULL, 26, '2026-06-22', '2026-06-26', 1),
	(837, 2026, NULL, 27, '2026-06-29', '2026-07-03', 1),
	(838, 2026, NULL, 28, '2026-07-06', '2026-07-10', 1),
	(839, 2026, NULL, 29, '2026-07-13', '2026-07-17', 1),
	(840, 2026, NULL, 30, '2026-07-20', '2026-07-24', 1),
	(841, 2026, NULL, 31, '2026-07-27', '2026-07-31', 1),
	(842, 2026, NULL, 32, '2026-08-03', '2026-08-07', 1),
	(843, 2026, NULL, 33, '2026-08-10', '2026-08-14', 1),
	(844, 2026, NULL, 34, '2026-08-17', '2026-08-21', 1),
	(845, 2026, NULL, 35, '2026-08-24', '2026-08-28', 1),
	(846, 2026, NULL, 36, '2026-08-31', '2026-09-04', 1),
	(847, 2026, NULL, 37, '2026-09-07', '2026-09-11', 1),
	(848, 2026, NULL, 38, '2026-09-14', '2026-09-18', 1),
	(849, 2026, NULL, 39, '2026-09-21', '2026-09-25', 1),
	(850, 2026, NULL, 40, '2026-09-28', '2026-10-02', 1),
	(851, 2026, NULL, 41, '2026-10-05', '2026-10-09', 1),
	(852, 2026, NULL, 42, '2026-10-12', '2026-10-16', 1),
	(853, 2026, NULL, 43, '2026-10-19', '2026-10-23', 1),
	(854, 2026, NULL, 44, '2026-10-26', '2026-10-30', 1),
	(855, 2026, NULL, 45, '2026-11-02', '2026-11-06', 1),
	(856, 2026, NULL, 46, '2026-11-09', '2026-11-13', 1),
	(857, 2026, NULL, 47, '2026-11-16', '2026-11-20', 1),
	(858, 2026, NULL, 48, '2026-11-23', '2026-11-27', 1),
	(859, 2026, NULL, 49, '2026-11-30', '2026-12-04', 1),
	(860, 2026, NULL, 50, '2026-12-07', '2026-12-11', 1),
	(861, 2026, NULL, 51, '2026-12-14', '2026-12-18', 1),
	(862, 2026, NULL, 52, '2026-12-21', '2026-12-25', 1),
	(863, 2026, NULL, 53, '2026-12-28', '2027-01-01', 1),
	(864, 2027, NULL, 1, '2027-01-04', '2027-01-08', 1),
	(865, 2027, NULL, 2, '2027-01-11', '2027-01-15', 1),
	(866, 2027, NULL, 3, '2027-01-18', '2027-01-22', 1),
	(867, 2027, NULL, 4, '2027-01-25', '2027-01-29', 1),
	(868, 2027, NULL, 5, '2027-02-01', '2027-02-05', 1),
	(869, 2027, NULL, 6, '2027-02-08', '2027-02-12', 1),
	(870, 2027, NULL, 7, '2027-02-15', '2027-02-19', 1),
	(871, 2027, NULL, 8, '2027-02-22', '2027-02-26', 1),
	(872, 2027, NULL, 9, '2027-03-01', '2027-03-05', 1),
	(873, 2027, NULL, 10, '2027-03-08', '2027-03-12', 1),
	(874, 2027, NULL, 11, '2027-03-15', '2027-03-19', 1),
	(875, 2027, NULL, 12, '2027-03-22', '2027-03-26', 1),
	(876, 2027, NULL, 13, '2027-03-29', '2027-04-02', 1),
	(877, 2027, NULL, 14, '2027-04-05', '2027-04-09', 1),
	(878, 2027, NULL, 15, '2027-04-12', '2027-04-16', 1),
	(879, 2027, NULL, 16, '2027-04-19', '2027-04-23', 1),
	(880, 2027, NULL, 17, '2027-04-26', '2027-04-30', 1),
	(881, 2027, NULL, 18, '2027-05-03', '2027-05-07', 1),
	(882, 2027, NULL, 19, '2027-05-10', '2027-05-14', 1),
	(883, 2027, NULL, 20, '2027-05-17', '2027-05-21', 1),
	(884, 2027, NULL, 21, '2027-05-24', '2027-05-28', 1),
	(885, 2027, NULL, 22, '2027-05-31', '2027-06-04', 1),
	(886, 2027, NULL, 23, '2027-06-07', '2027-06-11', 1),
	(887, 2027, NULL, 24, '2027-06-14', '2027-06-18', 1),
	(888, 2027, NULL, 25, '2027-06-21', '2027-06-25', 1),
	(889, 2027, NULL, 26, '2027-06-28', '2027-07-02', 1),
	(890, 2027, NULL, 27, '2027-07-05', '2027-07-09', 1),
	(891, 2027, NULL, 28, '2027-07-12', '2027-07-16', 1),
	(892, 2027, NULL, 29, '2027-07-19', '2027-07-23', 1),
	(893, 2027, NULL, 30, '2027-07-26', '2027-07-30', 1),
	(894, 2027, NULL, 31, '2027-08-02', '2027-08-06', 1),
	(895, 2027, NULL, 32, '2027-08-09', '2027-08-13', 1),
	(896, 2027, NULL, 33, '2027-08-16', '2027-08-20', 1),
	(897, 2027, NULL, 34, '2027-08-23', '2027-08-27', 1),
	(898, 2027, NULL, 35, '2027-08-30', '2027-09-03', 1),
	(899, 2027, NULL, 36, '2027-09-06', '2027-09-10', 1),
	(900, 2027, NULL, 37, '2027-09-13', '2027-09-17', 1),
	(901, 2027, NULL, 38, '2027-09-20', '2027-09-24', 1),
	(902, 2027, NULL, 39, '2027-09-27', '2027-10-01', 1),
	(903, 2027, NULL, 40, '2027-10-04', '2027-10-08', 1),
	(904, 2027, NULL, 41, '2027-10-11', '2027-10-15', 1),
	(905, 2027, NULL, 42, '2027-10-18', '2027-10-22', 1),
	(906, 2027, NULL, 43, '2027-10-25', '2027-10-29', 1),
	(907, 2027, NULL, 44, '2027-11-01', '2027-11-05', 1),
	(908, 2027, NULL, 45, '2027-11-08', '2027-11-12', 1),
	(909, 2027, NULL, 46, '2027-11-15', '2027-11-19', 1),
	(910, 2027, NULL, 47, '2027-11-22', '2027-11-26', 1),
	(911, 2027, NULL, 48, '2027-11-29', '2027-12-03', 1),
	(912, 2027, NULL, 49, '2027-12-06', '2027-12-10', 1),
	(913, 2027, NULL, 50, '2027-12-13', '2027-12-17', 1),
	(914, 2027, NULL, 51, '2027-12-20', '2027-12-24', 1),
	(915, 2027, NULL, 52, '2027-12-27', '2027-12-31', 1),
	(916, 2028, NULL, 1, '2028-01-03', '2028-01-07', 1),
	(917, 2028, NULL, 2, '2028-01-10', '2028-01-14', 1),
	(918, 2028, NULL, 3, '2028-01-17', '2028-01-21', 1),
	(919, 2028, NULL, 4, '2028-01-24', '2028-01-28', 1),
	(920, 2028, NULL, 5, '2028-01-31', '2028-02-04', 1),
	(921, 2028, NULL, 6, '2028-02-07', '2028-02-11', 1),
	(922, 2028, NULL, 7, '2028-02-14', '2028-02-18', 1),
	(923, 2028, NULL, 8, '2028-02-21', '2028-02-25', 1),
	(924, 2028, NULL, 9, '2028-02-28', '2028-03-03', 1),
	(925, 2028, NULL, 10, '2028-03-06', '2028-03-10', 1),
	(926, 2028, NULL, 11, '2028-03-13', '2028-03-17', 1),
	(927, 2028, NULL, 12, '2028-03-20', '2028-03-24', 1),
	(928, 2028, NULL, 13, '2028-03-27', '2028-03-31', 1),
	(929, 2028, NULL, 14, '2028-04-03', '2028-04-07', 1),
	(930, 2028, NULL, 15, '2028-04-10', '2028-04-14', 1),
	(931, 2028, NULL, 16, '2028-04-17', '2028-04-21', 1),
	(932, 2028, NULL, 17, '2028-04-24', '2028-04-28', 1),
	(933, 2028, NULL, 18, '2028-05-01', '2028-05-05', 1),
	(934, 2028, NULL, 19, '2028-05-08', '2028-05-12', 1),
	(935, 2028, NULL, 20, '2028-05-15', '2028-05-19', 1),
	(936, 2028, NULL, 21, '2028-05-22', '2028-05-26', 1),
	(937, 2028, NULL, 22, '2028-05-29', '2028-06-02', 1),
	(938, 2028, NULL, 23, '2028-06-05', '2028-06-09', 1),
	(939, 2028, NULL, 24, '2028-06-12', '2028-06-16', 1),
	(940, 2028, NULL, 25, '2028-06-19', '2028-06-23', 1),
	(941, 2028, NULL, 26, '2028-06-26', '2028-06-30', 1),
	(942, 2028, NULL, 27, '2028-07-03', '2028-07-07', 1),
	(943, 2028, NULL, 28, '2028-07-10', '2028-07-14', 1),
	(944, 2028, NULL, 29, '2028-07-17', '2028-07-21', 1),
	(945, 2028, NULL, 30, '2028-07-24', '2028-07-28', 1),
	(946, 2028, NULL, 31, '2028-07-31', '2028-08-04', 1),
	(947, 2028, NULL, 32, '2028-08-07', '2028-08-11', 1),
	(948, 2028, NULL, 33, '2028-08-14', '2028-08-18', 1),
	(949, 2028, NULL, 34, '2028-08-21', '2028-08-25', 1),
	(950, 2028, NULL, 35, '2028-08-28', '2028-09-01', 1),
	(951, 2028, NULL, 36, '2028-09-04', '2028-09-08', 1),
	(952, 2028, NULL, 37, '2028-09-11', '2028-09-15', 1),
	(953, 2028, NULL, 38, '2028-09-18', '2028-09-22', 1),
	(954, 2028, NULL, 39, '2028-09-25', '2028-09-29', 1),
	(955, 2028, NULL, 40, '2028-10-02', '2028-10-06', 1),
	(956, 2028, NULL, 41, '2028-10-09', '2028-10-13', 1),
	(957, 2028, NULL, 42, '2028-10-16', '2028-10-20', 1),
	(958, 2028, NULL, 43, '2028-10-23', '2028-10-27', 1),
	(959, 2028, NULL, 44, '2028-10-30', '2028-11-03', 1),
	(960, 2028, NULL, 45, '2028-11-06', '2028-11-10', 1),
	(961, 2028, NULL, 46, '2028-11-13', '2028-11-17', 1),
	(962, 2028, NULL, 47, '2028-11-20', '2028-11-24', 1),
	(963, 2028, NULL, 48, '2028-11-27', '2028-12-01', 1),
	(964, 2028, NULL, 49, '2028-12-04', '2028-12-08', 1),
	(965, 2028, NULL, 50, '2028-12-11', '2028-12-15', 1),
	(966, 2028, NULL, 51, '2028-12-18', '2028-12-22', 1),
	(967, 2028, NULL, 52, '2028-12-25', '2028-12-29', 1),
	(968, 2029, NULL, 1, '2029-01-01', '2029-01-05', 1),
	(969, 2029, NULL, 2, '2029-01-08', '2029-01-12', 1),
	(970, 2029, NULL, 3, '2029-01-15', '2029-01-19', 1),
	(971, 2029, NULL, 4, '2029-01-22', '2029-01-26', 1),
	(972, 2029, NULL, 5, '2029-01-29', '2029-02-02', 1),
	(973, 2029, NULL, 6, '2029-02-05', '2029-02-09', 1),
	(974, 2029, NULL, 7, '2029-02-12', '2029-02-16', 1),
	(975, 2029, NULL, 8, '2029-02-19', '2029-02-23', 1),
	(976, 2029, NULL, 9, '2029-02-26', '2029-03-02', 1),
	(977, 2029, NULL, 10, '2029-03-05', '2029-03-09', 1),
	(978, 2029, NULL, 11, '2029-03-12', '2029-03-16', 1),
	(979, 2029, NULL, 12, '2029-03-19', '2029-03-23', 1),
	(980, 2029, NULL, 13, '2029-03-26', '2029-03-30', 1),
	(981, 2029, NULL, 14, '2029-04-02', '2029-04-06', 1),
	(982, 2029, NULL, 15, '2029-04-09', '2029-04-13', 1),
	(983, 2029, NULL, 16, '2029-04-16', '2029-04-20', 1),
	(984, 2029, NULL, 17, '2029-04-23', '2029-04-27', 1),
	(985, 2029, NULL, 18, '2029-04-30', '2029-05-04', 1),
	(986, 2029, NULL, 19, '2029-05-07', '2029-05-11', 1),
	(987, 2029, NULL, 20, '2029-05-14', '2029-05-18', 1),
	(988, 2029, NULL, 21, '2029-05-21', '2029-05-25', 1),
	(989, 2029, NULL, 22, '2029-05-28', '2029-06-01', 1),
	(990, 2029, NULL, 23, '2029-06-04', '2029-06-08', 1),
	(991, 2029, NULL, 24, '2029-06-11', '2029-06-15', 1),
	(992, 2029, NULL, 25, '2029-06-18', '2029-06-22', 1),
	(993, 2029, NULL, 26, '2029-06-25', '2029-06-29', 1),
	(994, 2029, NULL, 27, '2029-07-02', '2029-07-06', 1),
	(995, 2029, NULL, 28, '2029-07-09', '2029-07-13', 1),
	(996, 2029, NULL, 29, '2029-07-16', '2029-07-20', 1),
	(997, 2029, NULL, 30, '2029-07-23', '2029-07-27', 1),
	(998, 2029, NULL, 31, '2029-07-30', '2029-08-03', 1),
	(999, 2029, NULL, 32, '2029-08-06', '2029-08-10', 1),
	(1000, 2029, NULL, 33, '2029-08-13', '2029-08-17', 1),
	(1001, 2029, NULL, 34, '2029-08-20', '2029-08-24', 1),
	(1002, 2029, NULL, 35, '2029-08-27', '2029-08-31', 1),
	(1003, 2029, NULL, 36, '2029-09-03', '2029-09-07', 1),
	(1004, 2029, NULL, 37, '2029-09-10', '2029-09-14', 1),
	(1005, 2029, NULL, 38, '2029-09-17', '2029-09-21', 1),
	(1006, 2029, NULL, 39, '2029-09-24', '2029-09-28', 1),
	(1007, 2029, NULL, 40, '2029-10-01', '2029-10-05', 1),
	(1008, 2029, NULL, 41, '2029-10-08', '2029-10-12', 1),
	(1009, 2029, NULL, 42, '2029-10-15', '2029-10-19', 1),
	(1010, 2029, NULL, 43, '2029-10-22', '2029-10-26', 1),
	(1011, 2029, NULL, 44, '2029-10-29', '2029-11-02', 1),
	(1012, 2029, NULL, 45, '2029-11-05', '2029-11-09', 1),
	(1013, 2029, NULL, 46, '2029-11-12', '2029-11-16', 1),
	(1014, 2029, NULL, 47, '2029-11-19', '2029-11-23', 1),
	(1015, 2029, NULL, 48, '2029-11-26', '2029-11-30', 1),
	(1016, 2029, NULL, 49, '2029-12-03', '2029-12-07', 1),
	(1017, 2029, NULL, 50, '2029-12-10', '2029-12-14', 1),
	(1018, 2029, NULL, 51, '2029-12-17', '2029-12-21', 1),
	(1019, 2029, NULL, 52, '2029-12-24', '2029-12-28', 1),
	(1020, 2030, NULL, 1, '2029-12-31', '2030-01-04', 1),
	(1021, 2030, NULL, 2, '2030-01-07', '2030-01-11', 1),
	(1022, 2030, NULL, 3, '2030-01-14', '2030-01-18', 1),
	(1023, 2030, NULL, 4, '2030-01-21', '2030-01-25', 1),
	(1024, 2030, NULL, 5, '2030-01-28', '2030-02-01', 1),
	(1025, 2030, NULL, 6, '2030-02-04', '2030-02-08', 1),
	(1026, 2030, NULL, 7, '2030-02-11', '2030-02-15', 1),
	(1027, 2030, NULL, 8, '2030-02-18', '2030-02-22', 1),
	(1028, 2030, NULL, 9, '2030-02-25', '2030-03-01', 1),
	(1029, 2030, NULL, 10, '2030-03-04', '2030-03-08', 1),
	(1030, 2030, NULL, 11, '2030-03-11', '2030-03-15', 1),
	(1031, 2030, NULL, 12, '2030-03-18', '2030-03-22', 1),
	(1032, 2030, NULL, 13, '2030-03-25', '2030-03-29', 1),
	(1033, 2030, NULL, 14, '2030-04-01', '2030-04-05', 1),
	(1034, 2030, NULL, 15, '2030-04-08', '2030-04-12', 1),
	(1035, 2030, NULL, 16, '2030-04-15', '2030-04-19', 1),
	(1036, 2030, NULL, 17, '2030-04-22', '2030-04-26', 1),
	(1037, 2030, NULL, 18, '2030-04-29', '2030-05-03', 1),
	(1038, 2030, NULL, 19, '2030-05-06', '2030-05-10', 1),
	(1039, 2030, NULL, 20, '2030-05-13', '2030-05-17', 1),
	(1040, 2030, NULL, 21, '2030-05-20', '2030-05-24', 1),
	(1041, 2030, NULL, 22, '2030-05-27', '2030-05-31', 1),
	(1042, 2030, NULL, 23, '2030-06-03', '2030-06-07', 1),
	(1043, 2030, NULL, 24, '2030-06-10', '2030-06-14', 1),
	(1044, 2030, NULL, 25, '2030-06-17', '2030-06-21', 1),
	(1045, 2030, NULL, 26, '2030-06-24', '2030-06-28', 1),
	(1046, 2030, NULL, 27, '2030-07-01', '2030-07-05', 1),
	(1047, 2030, NULL, 28, '2030-07-08', '2030-07-12', 1),
	(1048, 2030, NULL, 29, '2030-07-15', '2030-07-19', 1),
	(1049, 2030, NULL, 30, '2030-07-22', '2030-07-26', 1),
	(1050, 2030, NULL, 31, '2030-07-29', '2030-08-02', 1),
	(1051, 2030, NULL, 32, '2030-08-05', '2030-08-09', 1),
	(1052, 2030, NULL, 33, '2030-08-12', '2030-08-16', 1),
	(1053, 2030, NULL, 34, '2030-08-19', '2030-08-23', 1),
	(1054, 2030, NULL, 35, '2030-08-26', '2030-08-30', 1),
	(1055, 2030, NULL, 36, '2030-09-02', '2030-09-06', 1),
	(1056, 2030, NULL, 37, '2030-09-09', '2030-09-13', 1),
	(1057, 2030, NULL, 38, '2030-09-16', '2030-09-20', 1),
	(1058, 2030, NULL, 39, '2030-09-23', '2030-09-27', 1),
	(1059, 2030, NULL, 40, '2030-09-30', '2030-10-04', 1),
	(1060, 2030, NULL, 41, '2030-10-07', '2030-10-11', 1),
	(1061, 2030, NULL, 42, '2030-10-14', '2030-10-18', 1),
	(1062, 2030, NULL, 43, '2030-10-21', '2030-10-25', 1),
	(1063, 2030, NULL, 44, '2030-10-28', '2030-11-01', 1),
	(1064, 2030, NULL, 45, '2030-11-04', '2030-11-08', 1),
	(1065, 2030, NULL, 46, '2030-11-11', '2030-11-15', 1),
	(1066, 2030, NULL, 47, '2030-11-18', '2030-11-22', 1),
	(1067, 2030, NULL, 48, '2030-11-25', '2030-11-29', 1),
	(1068, 2030, NULL, 49, '2030-12-02', '2030-12-06', 1),
	(1069, 2030, NULL, 50, '2030-12-09', '2030-12-13', 1),
	(1070, 2030, NULL, 51, '2030-12-16', '2030-12-20', 1),
	(1071, 2030, NULL, 52, '2030-12-23', '2030-12-27', 1);
/*!40000 ALTER TABLE `bc_dm_tuan` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.bc_ke_hoach_tuan
CREATE TABLE IF NOT EXISTS `bc_ke_hoach_tuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_don_vi` varchar(50) DEFAULT NULL,
  `ma_dinh_danh` varchar(50) DEFAULT NULL,
  `id_tuan` int(11) DEFAULT NULL,
  `id_user_bao_cao` int(10) unsigned NOT NULL,
  `noi_dung` longtext DEFAULT NULL,
  `ghi_chu` varchar(250) DEFAULT NULL,
  `thoi_gian_bao_cao` datetime NOT NULL DEFAULT current_timestamp(),
  `is_group` int(11) NOT NULL COMMENT '0 không phải là group; 1 là group',
  `trang_thai` int(11) NOT NULL COMMENT '0 chưa chốt; 1 đã chốt',
  `sap_xep` int(11) NOT NULL COMMENT 'Sắp xếp theo tuần',
  PRIMARY KEY (`id`),
  KEY `FK_bc_ke_hoach_tuan_users` (`id_user_bao_cao`),
  KEY `FK_bc_ke_hoach_tuan_bc_dm_tuan` (`id_tuan`),
  CONSTRAINT `FK_bc_ke_hoach_tuan_bc_dm_tuan` FOREIGN KEY (`id_tuan`) REFERENCES `bc_dm_tuan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_bc_ke_hoach_tuan_users` FOREIGN KEY (`id_user_bao_cao`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.bc_ke_hoach_tuan: ~10 rows (approximately)
/*!40000 ALTER TABLE `bc_ke_hoach_tuan` DISABLE KEYS */;
INSERT INTO `bc_ke_hoach_tuan` (`id`, `ma_don_vi`, `ma_dinh_danh`, `id_tuan`, `id_user_bao_cao`, `noi_dung`, `ghi_chu`, `thoi_gian_bao_cao`, `is_group`, `trang_thai`, `sap_xep`) VALUES
	(355, 'VT_TPO', '001.02.01.H59', 574, 41, 'test', NULL, '2021-06-14 15:24:21', 0, 2, 410),
	(357, 'VT_TPO', '001.02.01.H59', 574, 41, 'test', NULL, '2021-06-14 15:24:26', 0, 2, 410),
	(358, 'VT_TPO', '001.02.01.H59', 574, 41, 'test', NULL, '2021-06-14 15:24:31', 0, 2, 410),
	(359, 'TTVT1', '000.02.01.H59', 574, 41, 'Xây dựng api các module ATVSLĐ, 5S, sửa chữa TBĐC, QLTS và tích hợp vào app VNPT-TVH-CO;', NULL, '2021-06-14 15:25:07', 0, 2, 410),
	(360, 'TTVT1', '000.02.01.H59', 574, 41, 'Hỗ trợ cập nhật thông tin địa bàn do luân chuyển nhân sự Lê Vũ Phong từ TTVT3 sang TTVT2 tiếp nhận địa bàn mới.', NULL, '2021-06-14 15:25:09', 0, 2, 410),
	(361, 'TTVT1', '000.02.01.H59', 574, 41, 'Xây dựng api các module ATVSLĐ, 5S, sửa chữa TBĐC, QLTS và tích hợp vào app VNPT-TVH-CO; 2', NULL, '2021-06-14 15:25:12', 0, 2, 410),
	(362, 'TTCNTT', '000.01.01.H59', 574, 48, 'Xây dựng api các module ATVSLĐ, 5S, sửa chữa TBĐC, QLTS và tích hợp vào app VNPT-TVH-CO;', NULL, '2021-06-14 15:27:50', 0, 0, 480),
	(363, 'TTCNTT', '000.01.01.H59', 574, 48, 'Hỗ trợ cập nhật thông tin địa bàn do luân chuyển nhân sự Lê Vũ Phong từ TTVT3 sang TTVT2 tiếp nhận địa bàn mới.', NULL, '2021-06-14 15:27:54', 0, 0, 480),
	(364, 'TTCNTT', '000.01.01.H59', 574, 48, 'Hỗ trợ cập nhật thông tin địa bàn do luân chuyển nhân sự Lê Vũ Phong từ TTVT3 sang TTVT2 tiếp nhận địa bàn mới.', NULL, '2021-06-14 15:27:57', 0, 0, 480),
	(365, 'TTCNTT', '000.01.01.H59', 574, 48, 'Xây dựng api các module ATVSLĐ, 5S, sửa chữa TBĐC, QLTS và tích hợp vào app VNPT-TVH-CO; 2', NULL, '2021-06-14 15:27:59', 0, 0, 480);
/*!40000 ALTER TABLE `bc_ke_hoach_tuan` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.bc_tuan_hien_tai
CREATE TABLE IF NOT EXISTS `bc_tuan_hien_tai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_don_vi` varchar(50) DEFAULT NULL,
  `ma_dinh_danh` varchar(50) DEFAULT NULL,
  `id_tuan` int(11) DEFAULT NULL,
  `id_user_bao_cao` int(10) unsigned NOT NULL,
  `noi_dung` longtext DEFAULT NULL,
  `ghi_chu` varchar(250) DEFAULT NULL,
  `thoi_gian_bao_cao` datetime NOT NULL DEFAULT current_timestamp(),
  `is_group` int(11) NOT NULL COMMENT '0 là không phải group; 1 là group',
  `trang_thai` int(11) NOT NULL COMMENT '0 chưa chốt; 1 đã chốt',
  `sap_xep` int(11) NOT NULL COMMENT 'Sắp xếp theo tuần',
  PRIMARY KEY (`id`),
  KEY `FK_bc_tuan_hien_tai_bc_dm_tuan` (`id_tuan`),
  KEY `FK_bc_tuan_hien_tai_users` (`id_user_bao_cao`),
  CONSTRAINT `FK_bc_tuan_hien_tai_bc_dm_tuan` FOREIGN KEY (`id_tuan`) REFERENCES `bc_dm_tuan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_bc_tuan_hien_tai_users` FOREIGN KEY (`id_user_bao_cao`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=492 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.bc_tuan_hien_tai: ~11 rows (approximately)
/*!40000 ALTER TABLE `bc_tuan_hien_tai` DISABLE KEYS */;
INSERT INTO `bc_tuan_hien_tai` (`id`, `ma_don_vi`, `ma_dinh_danh`, `id_tuan`, `id_user_bao_cao`, `noi_dung`, `ghi_chu`, `thoi_gian_bao_cao`, `is_group`, `trang_thai`, `sap_xep`) VALUES
	(481, 'VT_TPO', '001.02.01.H59', 574, 41, 'test', NULL, '2021-06-14 15:24:16', 0, 2, 410),
	(482, 'VT_TPO', '001.02.01.H59', 574, 41, 'test', NULL, '2021-06-14 15:24:35', 0, 2, 410),
	(483, 'VT_TPO', '001.02.01.H59', 574, 41, 'Xây dựng api các module ATVSLĐ, 5S, sửa chữa TBĐC, QLTS và tích hợp vào app VNPT-TVH-CO;', NULL, '2021-06-14 15:24:37', 0, 2, 410),
	(484, 'VT_TPO', '001.02.01.H59', 574, 41, 'Xây dựng api các module ATVSLĐ, 5S, sửa chữa TBĐC, QLTS và tích hợp vào app VNPT-TVH-CO;', NULL, '2021-06-14 15:24:39', 0, 2, 410),
	(485, 'TTVT1', '000.02.01.H59', 574, 41, 'Xây dựng api các module ATVSLĐ, 5S, sửa chữa TBĐC, QLTS và tích hợp vào app VNPT-TVH-CO;', NULL, '2021-06-14 15:24:58', 0, 2, 410),
	(486, 'TTVT1', '000.02.01.H59', 574, 41, 'test thanh nè 2', NULL, '2021-06-14 15:25:00', 0, 2, 410),
	(487, 'TTVT1', '000.02.01.H59', 574, 41, 'Hỗ trợ cập nhật thông tin địa bàn do luân chuyển nhân sự Lê Vũ Phong từ TTVT3 sang TTVT2 tiếp nhận địa bàn mới.', NULL, '2021-06-14 15:25:03', 0, 2, 410),
	(488, 'TTCNTT', '000.01.01.H59', 574, 48, 'test', NULL, '2021-06-14 15:27:47', 0, 0, 480),
	(489, 'TTCNTT', '000.01.01.H59', 574, 48, 'Hỗ trợ cập nhật thông tin địa bàn do luân chuyển nhân sự Lê Vũ Phong từ TTVT3 sang TTVT2 tiếp nhận địa bàn mới.', NULL, '2021-06-14 15:28:03', 0, 0, 480),
	(490, 'TTCNTT', '000.01.01.H59', 574, 48, 'Xây dựng api các module ATVSLĐ, 5S, sửa chữa TBĐC, QLTS và tích hợp vào app VNPT-TVH-CO;', NULL, '2021-06-14 15:28:05', 0, 0, 480),
	(491, 'TTCNTT', '000.01.01.H59', 574, 48, 'Xây dựng api các module ATVSLĐ, 5S, sửa chữa TBĐC, QLTS và tích hợp vào app VNPT-TVH-CO; 2', NULL, '2021-06-14 15:28:07', 0, 0, 480);
/*!40000 ALTER TABLE `bc_tuan_hien_tai` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.chuc_danh
CREATE TABLE IF NOT EXISTS `chuc_danh` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_chuc_danh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table vnptpayc.chuc_danh: ~3 rows (approximately)
/*!40000 ALTER TABLE `chuc_danh` DISABLE KEYS */;
INSERT INTO `chuc_danh` (`id`, `ten_chuc_danh`, `state`) VALUES
	(1, 'Kỹ sư', 1),
	(2, 'Thạc sỹ', 1),
	(6, 'Tiến sỹ', 1);
/*!40000 ALTER TABLE `chuc_danh` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.chuc_vu
CREATE TABLE IF NOT EXISTS `chuc_vu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_nhom_chuc_vu` int(10) unsigned NOT NULL DEFAULT 1,
  `ten_chuc_vu` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1 COMMENT '0 nghỉ sử dụng; 1 còn sử dụng',
  PRIMARY KEY (`id`),
  KEY `FK_chuc_vu_nhom_chuc_vu` (`id_nhom_chuc_vu`),
  CONSTRAINT `FK_chuc_vu_nhom_chuc_vu` FOREIGN KEY (`id_nhom_chuc_vu`) REFERENCES `nhom_chuc_vu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table vnptpayc.chuc_vu: ~4 rows (approximately)
/*!40000 ALTER TABLE `chuc_vu` DISABLE KEYS */;
INSERT INTO `chuc_vu` (`id`, `id_nhom_chuc_vu`, `ten_chuc_vu`, `state`) VALUES
	(1, 1, 'Khách hàng', 1),
	(2, 2, 'Lãnh đạo', 1),
	(3, 3, 'Chuyên viên tiếp nhận', 1),
	(4, 4, 'Chuyên viên xử lý', 1);
/*!40000 ALTER TABLE `chuc_vu` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.dich_vu
CREATE TABLE IF NOT EXISTS `dich_vu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nhom_dich_vu` int(11) DEFAULT NULL,
  `ten_dich_vu` varchar(50) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `FK_dich_vu_nhom_dich_vu` (`id_nhom_dich_vu`),
  CONSTRAINT `FK_dich_vu_nhom_dich_vu` FOREIGN KEY (`id_nhom_dich_vu`) REFERENCES `nhom_dich_vu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.dich_vu: ~2 rows (approximately)
/*!40000 ALTER TABLE `dich_vu` DISABLE KEYS */;
INSERT INTO `dich_vu` (`id`, `id_nhom_dich_vu`, `ten_dich_vu`, `state`) VALUES
	(1, 1, 'Dịch vụ viễn thông', 1),
	(2, 7, 'Dịch vụ CNTT', 1);
/*!40000 ALTER TABLE `dich_vu` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.dm_cap_don_vi
CREATE TABLE IF NOT EXISTS `dm_cap_don_vi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_cap` varchar(50) DEFAULT NULL,
  `ten_cap` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.dm_cap_don_vi: ~9 rows (approximately)
/*!40000 ALTER TABLE `dm_cap_don_vi` DISABLE KEYS */;
INSERT INTO `dm_cap_don_vi` (`id`, `ma_cap`, `ten_cap`) VALUES
	(1, 'UBT', 'UBND Tỉnh'),
	(2, 'VTT', 'VIỄN THÔNG TỈNH TRÀ VINH'),
	(3, 'TTCNTT', 'Trung tâm công nghệ thông tin'),
	(4, 'TTDHTT', 'Trung tâm Điều hành thông tin'),
	(5, 'TTKDTT', 'Trung tâm Kinh doanh thông tin'),
	(6, 'TTVT', 'Trung tâm Viễn thông'),
	(7, 'HUYEN', 'Viễn thông cấp huyện'),
	(8, 'XA', 'Viễn thông cấp xã'),
	(9, 'PHONG', 'Phòng trực thuộc Viễn Thông Trà Vinh - TVH');
/*!40000 ALTER TABLE `dm_cap_don_vi` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.dm_phuong_xa
CREATE TABLE IF NOT EXISTS `dm_phuong_xa` (
  `ma_phuong_xa` int(10) unsigned NOT NULL,
  `ten_phuong_xa` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_quan_huyen` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ma_phuong_xa`),
  KEY `FK_dm_xaphuong_DM_quanhuyen` (`ma_quan_huyen`),
  CONSTRAINT `FK_dm_xaphuong_DM_quanhuyen` FOREIGN KEY (`ma_quan_huyen`) REFERENCES `dm_quan_huyen` (`ma_quan_huyen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table vnptpayc.dm_phuong_xa: ~106 rows (approximately)
/*!40000 ALTER TABLE `dm_phuong_xa` DISABLE KEYS */;
INSERT INTO `dm_phuong_xa` (`ma_phuong_xa`, `ten_phuong_xa`, `loai`, `ma_quan_huyen`, `created_at`, `updated_at`) VALUES
	(29236, 'Phường 4', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29239, 'Phường 1', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29242, 'Phường 3', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29245, 'Phường 2', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29248, 'Phường 5', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29251, 'Phường 6', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29254, 'Phường 7', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29257, 'Phường 8', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29260, 'Phường 9', 'Phuong', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29263, 'Xã Long Đức', 'Xa', 842, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29266, 'Thị trấn Càng Long', 'TT', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29269, 'Xã Mỹ Cẩm', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29272, 'Xã An Trường A', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29275, 'Xã An Trường', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29278, 'Xã Huyền Hội', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29281, 'Xã Tân An', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29284, 'Xã Tân Bình', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29287, 'Xã Bình Phú', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29290, 'Xã Phương Thạnh', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29293, 'Xã Đại Phúc', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29296, 'Xã Đại Phước', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29299, 'Xã Nhị Long Phú', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29302, 'Xã Nhị Long', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29305, 'Xã Đức Mỹ', 'Xa', 844, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29308, 'Thị trấn Cầu Kè', 'TT', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29311, 'Xã Hòa Ân', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29314, 'Xã Châu Điền', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29317, 'Xã An Phú Tân', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29320, 'Xã Hoà Tân', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29323, 'Xã Ninh Thới', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29326, 'Xã Phong Phú', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29329, 'Xã Phong Thạnh', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29332, 'Xã Tam Ngãi', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29335, 'Xã Thông Hòa', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29338, 'Xã Thạnh Phú', 'Xa', 845, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29341, 'Thị trấn Tiểu Cần', 'TT', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29344, 'Thị trấn Cầu Quan', 'TT', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29347, 'Xã Phú Cần', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29350, 'Xã Hiếu Tử', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29353, 'Xã Hiếu Trung', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29356, 'Xã Long Thới', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29359, 'Xã Hùng Hòa', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29362, 'Xã Tân Hùng', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29365, 'Xã Tập Ngãi', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29368, 'Xã Ngãi Hùng', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29371, 'Xã Tân Hòa', 'Xa', 846, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29374, 'Thị trấn Châu Thành', 'TT', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29377, 'Xã Đa Lộc', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29380, 'Xã Mỹ Chánh', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29383, 'Xã Thanh Mỹ', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29386, 'Xã Lương Hoà A', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29389, 'Xã Lương Hòa', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29392, 'Xã Song Lộc', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29395, 'Xã Nguyệt Hóa', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29398, 'Xã Hòa Thuận', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29401, 'Xã Hòa Lợi', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29404, 'Xã Phước Hảo', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29407, 'Xã Hưng Mỹ', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29410, 'Xã Hòa Minh', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29413, 'Xã Long Hòa', 'Xa', 847, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29416, 'Thị trấn Cầu Ngang', 'TT', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29419, 'Thị trấn Mỹ Long', 'TT', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29422, 'Xã Mỹ Long Bắc', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29425, 'Xã Mỹ Long Nam', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29428, 'Xã Mỹ Hòa', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29431, 'Xã Vĩnh Kim', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29434, 'Xã Kim Hòa', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29437, 'Xã Hiệp Hòa', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29440, 'Xã Thuận Hòa', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29443, 'Xã Long Sơn', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29446, 'Xã Nhị Trường', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29449, 'Xã Trường Thọ', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29452, 'Xã Hiệp Mỹ Đông', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29455, 'Xã Hiệp Mỹ Tây', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29458, 'Xã Thạnh Hòa Sơn', 'Xa', 848, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29461, 'Thị trấn Trà Cú', 'TT', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29462, 'Thị trấn Định An', 'TT', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29464, 'Xã Phước Hưng', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29467, 'Xã Tập Sơn', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29470, 'Xã Tân Sơn', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29473, 'Xã An Quảng Hữu', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29476, 'Xã Lưu Nghiệp Anh', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29479, 'Xã Ngãi Xuyên', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29482, 'Xã Kim Sơn', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29485, 'Xã Thanh Sơn', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29488, 'Xã Hàm Giang', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29489, 'Xã Hàm Tân', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29491, 'Xã Đại An', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29494, 'Thị trấn Định An', 'TT', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29497, 'Xã Đôn Xuân', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29500, 'Xã Đôn Châu', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29503, 'Xã Ngọc Biên', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29506, 'Xã Long Hiệp', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29509, 'Xã Tân Hiệp', 'Xa', 849, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29512, 'Phường 1', 'Phuong', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29513, 'Thị trấn Long Thành', 'TT', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29515, 'Xã Long Toàn', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29516, 'Phường 2', 'Phuong', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29518, 'Xã Long Hữu', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29521, 'Xã Long Khánh', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29524, 'Xã Dân Thành', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29527, 'Xã Trường Long Hòa', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29530, 'Xã Ngũ Lạc', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29533, 'Xã Long Vĩnh', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29536, 'Xã Đông Hải', 'Xa', 850, '2020-08-13 02:48:54', '2020-08-13 02:48:54'),
	(29539, 'Xã Hiệp Thạnh', 'Xa', 851, '2020-08-13 02:48:54', '2020-08-13 02:48:54');
/*!40000 ALTER TABLE `dm_phuong_xa` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.dm_quan_huyen
CREATE TABLE IF NOT EXISTS `dm_quan_huyen` (
  `ma_quan_huyen` int(10) unsigned NOT NULL,
  `ten_quan_huyen` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_tinh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ma_quan_huyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table vnptpayc.dm_quan_huyen: ~9 rows (approximately)
/*!40000 ALTER TABLE `dm_quan_huyen` DISABLE KEYS */;
INSERT INTO `dm_quan_huyen` (`ma_quan_huyen`, `ten_quan_huyen`, `ma_tinh`, `loai`, `updated_at`, `created_at`) VALUES
	(842, 'Thành phố Trà Vinh', '84', 'TP', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(844, 'Huyện Càng Long', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(845, 'Huyện Cầu Kè', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(846, 'Huyện Tiểu Cần', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(847, 'Huyện Châu Thành', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(848, 'Huyện Cầu Ngang', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(849, 'Huyện Trà Cú', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(850, 'Huyện Duyên Hải', '84', 'Huyen', '2020-08-13 02:00:55', '2020-08-13 02:00:55'),
	(851, 'Thị xã Duyên Hải', '84', 'TX', '2020-08-13 02:00:55', '2020-08-13 02:00:55');
/*!40000 ALTER TABLE `dm_quan_huyen` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.dm_tham_so_he_thong
CREATE TABLE IF NOT EXISTS `dm_tham_so_he_thong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_tham_so` varchar(250) DEFAULT NULL,
  `ten_tham_so` varchar(250) DEFAULT NULL,
  `loai_tham_so` varchar(250) DEFAULT NULL,
  `gia_tri_tham_so` varchar(250) DEFAULT NULL,
  `mo_ta_tham_so` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.dm_tham_so_he_thong: ~13 rows (approximately)
/*!40000 ALTER TABLE `dm_tham_so_he_thong` DISABLE KEYS */;
INSERT INTO `dm_tham_so_he_thong` (`id`, `ma_tham_so`, `ten_tham_so`, `loai_tham_so`, `gia_tri_tham_so`, `mo_ta_tham_so`) VALUES
	(1, 'CAP_TIEP_NHAN_MAC_DINH', 'Cấp tiếp nhận yêu cầu mặc định', 'Nvarchar2', 'HUYEN', 'XA cấp xã; \r\nHUYEN cấp huyện;\r\n TTVT cấp Trung tâm viễn thông; \r\nTTCNTT cấp trung tâm CNTT; \r\nTTDHTT cấp Trung tâm DHTT; \r\nTTKD cấp Trung tâm kinh doanh; \r\nVTT cấp viễn thông tỉnh; \r\nUBT cấp Ủy ban tỉnh'),
	(2, 'MA_NHOM_CHUC_VU_NHAN_PAKN', 'Nhóm chức vụ nhận PAKN', 'Nvarchar2', 'TIEP_NHAN', 'LANH_DAO là lãnh đạo nhận PAKN, XU_LY là chuyên viên xử lý sẽ nhận PAKN; ngược lại là nhóm tiếp nhận'),
	(3, 'SECRET_KEY_API_TAO_TAI_KHOAN', 'Khóa bảo mật khi gọi API tạo tài khoản', 'Nvarchar2', 'GDMpLecTjBD1USC5qkPFdiRu7nNtgHuK7JIMXZOi', 'Là khóa bảo mật truyền vào khi gọi API tạo tài khoản'),
	(4, 'MA_NHOM_CHUC_VU_DUYET_DANG_KY_PAKN', 'Mã nhóm chức vụ duyệt các phản ánh, yêu cầu do cán bộ đăng ký', 'Nvarchar2', 'LANH_DAO', 'Mã nhóm chức vụ duyệt các phản ánh, yêu cầu do cán bộ đăng ký'),
	(5, 'TRA_LOI_KHI_HOAN_TAT', 'Cho phép hệ thống tự gửi nội dung hoàn tất vào mục trả lời yêu cầu', 'Nvarchar2', '1', '1 cho phép; 0 không cho phép'),
	(7, 'CHO_PHEP_TRA_LAI_KH_KHI_TIEP_NHAN', 'Cho phép cán bộ trả yêu cầu lại cho khách hàng khi tiếp nhận hồ sơ', 'Nvarchar2', '0', '1 cho phép; 0 không cho phép'),
	(8, 'CHO_PHEP_TRA_LAI_KH_KHI_LANH_DAO_DUYET', 'Cho phép trả lại người dân trong chức năng danh sách chờ lãnh đạo duyệt', 'Nvarchar2', '1', '1 cho phép; 0 không cho phép'),
	(9, 'CHO_PHEP_HUY_YC_KHI_TIEP_NHAN', 'Cho phép cán bộ tiếp nhận hủy yêu cầu  khi tiếp nhận hồ sơ', 'Nvarchar2', '0', '1 cho phép; 0 không cho phép'),
	(10, 'CHO_PHEP_HUY_YC_KHI_LANH_DAO_DUYET', 'Cho phép cán bộ tiếp nhận hủy yêu cầu  khi tiếp nhận hồ sơ', 'Nvarchar2', '1', '1 cho phép; 0 không cho phép'),
	(13, 'BC_BAO_CAO_THEO_MA_DINH_DANH', 'Báo cáo số liệu theo mã định danh', 'Nvarchar2', '0', 'Trong đơn vị có 2 mã: Mã đơn vị và Mã định danh.\r\n- Nếu chưa có mã định danh cho Viễn thông thì giá trị tham số là 0\r\n- Nếu đã có mã định danh thì giá trị tham số là 1\r\n<b>*** Chú ý*** </b>Mặc định là <B>0</B> (Sử dụng cột mã đơn vị)'),
	(14, 'BC_THOI_GIAN_CHOT_BAO_CAO', 'Báo cáo số liệu theo mã định danh', 'Nvarchar2', '16:30:00', 'Thời gian chốt báo cáo H:i:s'),
	(15, 'BC_DM_MA_CAP_DON_VI_TRUC_THUOC_KHAC', 'Danh sách các mã cấp trực thuộc viễn thông tỉnh', 'Nvarchar2', 'TTCNTT,TTDHTT,TTKD,PHONG', 'Danh sách các mã cấp trực thuộc viễn thông tỉnh\r\nLà các đơn vị khác các đơn vị sau: TTYT, Viễn thông huyện, thành phố, thị xã, VTT\r\nCách nhau bởi dấu ,'),
	(16, 'BC_NOI_DUNG_NHAC_NHO_MAC_DINH', 'Nội dung nhắc nhở các đơn vị nộp báo cáo', 'Nvarchar2', '- Đã sắp hết thời gian báo cáo các đơn vị vui lòng tranh thủ hoàn thành báo cáo.\r\n- Danh sách các đơn vị chưa hoàn hoàn thành báo cáo gồm:', 'Nội dung nhắc nhở các đơn vị nộp báo cáo');
/*!40000 ALTER TABLE `dm_tham_so_he_thong` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.don_vi
CREATE TABLE IF NOT EXISTS `don_vi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ma_don_vi` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten_don_vi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ma_phuong_xa` int(10) unsigned NOT NULL,
  `ma_cap` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_dinh_danh` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_dinh` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `di_dong` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `la_don_vi_xu_ly` int(11) NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1 COMMENT '0: không hoạt động; 1: hoạt động',
  PRIMARY KEY (`id`),
  KEY `FK_don_vi_don_vi` (`parent_id`),
  KEY `order` (`order`),
  KEY `FK_don_vi_dm_phuong_xa` (`ma_phuong_xa`),
  CONSTRAINT `FK_don_vi_dm_phuong_xa` FOREIGN KEY (`ma_phuong_xa`) REFERENCES `dm_phuong_xa` (`ma_phuong_xa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_don_vi_don_vi` FOREIGN KEY (`parent_id`) REFERENCES `don_vi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table vnptpayc.don_vi: ~28 rows (approximately)
/*!40000 ALTER TABLE `don_vi` DISABLE KEYS */;
INSERT INTO `don_vi` (`id`, `ma_don_vi`, `ten_don_vi`, `ma_phuong_xa`, `ma_cap`, `ma_dinh_danh`, `email`, `co_dinh`, `di_dong`, `fax`, `parent_id`, `order`, `la_don_vi_xu_ly`, `state`) VALUES
	(1, NULL, 'Tỉnh Trà Vinh', 29239, 'UBT', '000.00.00.H59', NULL, NULL, NULL, NULL, NULL, 0, 1, 1),
	(2, 'VTT', 'Viễn thông Trà Vinh', 29236, 'VTT', '000.00.01.H59', NULL, NULL, NULL, NULL, 1, 1, 1, 1),
	(12, 'TTCNTT', 'Trung tâm Công nghệ Thông tin', 29236, 'TTCNTT', '000.01.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1, 1),
	(13, 'TTVT1', 'Trung tâm Viễn Thông 1 - TVH', 29236, 'TTVT', '000.02.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1, 1),
	(14, 'TTVT2', 'Trung tâm Viễn Thông 2 - TVH', 29236, 'TTVT', '000.03.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1, 1),
	(15, 'TTVT3', 'Trung tâm Viễn Thông 3 - TVH', 29236, 'TTVT', '000.04.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1, 1),
	(16, 'VT_TPO', 'Khu vực Thành phố Trà Vinh', 29239, 'HUYEN', '001.02.01.H59', NULL, NULL, NULL, NULL, 13, 1, 1, 1),
	(17, 'VT_CTH', 'Khu vực Châu Thành - TVH', 29374, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 13, 1, 1, 1),
	(18, NULL, 'Phòng giải pháp', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1, 1),
	(19, NULL, 'Phòng tổng hợp', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1, 1),
	(20, 'VT_CKE', 'Khu vực Cầu Kè', 29308, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 14, 1, 1, 1),
	(21, 'VT_CLG', 'Khu vực Càng Long', 29266, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 14, 1, 1, 1),
	(22, 'VT_TCU', 'Khu vực Trà Cú', 29461, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1, 1),
	(24, 'VT_CNG', 'Khu vực Cầu Ngang', 29416, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1, 1),
	(25, 'VT_DHI', 'Khu vực huyện Duyên Hải', 29497, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1, 1),
	(26, 'VT_TXDHI', 'Khu vực thị xã Duyên Hải', 29512, 'HUYEN', '001.03.01.H59', NULL, NULL, NULL, NULL, 15, 1, 1, 1),
	(33, NULL, 'Ban giám đốc', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 1, 1),
	(34, NULL, 'Ban giám đốc - TVH', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 1),
	(37, 'TTKD', 'Trung tâm Kinh doanh', 29236, 'TTKD', '000.01.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1, 1),
	(38, 'TTDHTT', 'Trung tâm Điều hành Thông tin', 29236, 'TTDHTT', '000.01.01.H59', NULL, NULL, NULL, NULL, 2, 1, 1, 1),
	(39, 'NSTH', 'Phòng Nhân sự - Tổng hợp - TVH', 29236, 'PHONG', NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 1),
	(40, 'KTDT', 'Phòng Kỹ thuật - Đầu tư - TVH', 29236, 'PHONG', NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 1),
	(41, 'KHKT', 'Phòng Kế hoạch - Kế toán - TVH', 29236, 'PHONG', NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 1),
	(42, 'KCTD', 'Khối chuyên trách đảng - TVH', 29236, 'PHONG', NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 1),
	(43, 'CD', 'Công đoàn VNPT Trà Vinh - TVH', 29236, 'PHONG', NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 1),
	(44, '', 'Ban giám đốc', 29236, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 0, 1),
	(45, 'DTN', 'Đoàn thanh niên viễn thông Trà Vinh - TVH', 29236, 'PHONG', NULL, NULL, NULL, NULL, NULL, 2, 1, 0, 1),
	(46, 'VT_TCN', 'Khu vực Tiểu Cần', 29341, 'HUYEN', NULL, NULL, NULL, NULL, NULL, 14, 1, 1, 1);
/*!40000 ALTER TABLE `don_vi` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vnptpayc.migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(4, '2016_06_01_000004_create_oauth_clients_table', 1),
	(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.nhom_chuc_vu
CREATE TABLE IF NOT EXISTS `nhom_chuc_vu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ten_nhom_chuc_vu` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_nhom_chuc_vu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loai_nhom_chuc_vu` (`ma_nhom_chuc_vu`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table vnptpayc.nhom_chuc_vu: ~4 rows (approximately)
/*!40000 ALTER TABLE `nhom_chuc_vu` DISABLE KEYS */;
INSERT INTO `nhom_chuc_vu` (`id`, `ten_nhom_chuc_vu`, `ma_nhom_chuc_vu`, `state`) VALUES
	(1, 'Khách hàng', 'KHACH_HANG', 1),
	(2, 'Lãnh đạo', 'LANH_DAO', 1),
	(3, 'Chuyên viên tiếp nhận', 'TIEP_NHAN', 1),
	(4, 'Chuyên viên xử lý', 'XU_LY', 1);
/*!40000 ALTER TABLE `nhom_chuc_vu` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.nhom_dich_vu
CREATE TABLE IF NOT EXISTS `nhom_dich_vu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_nhom_dich_vu` varchar(200) DEFAULT NULL,
  `ten_nhom_dich_vu` varchar(200) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.nhom_dich_vu: ~7 rows (approximately)
/*!40000 ALTER TABLE `nhom_dich_vu` DISABLE KEYS */;
INSERT INTO `nhom_dich_vu` (`id`, `ma_nhom_dich_vu`, `ten_nhom_dich_vu`, `state`) VALUES
	(1, 'DV_VT', 'Dịch vụ Viễn Thông', 1),
	(2, 'DV_HUYEN', 'Dịch vụ cấp huyện', 1),
	(3, 'DV_XA', 'Dịch vụ cấp xã', 1),
	(4, 'DV_TTVT', 'Dịch vụ cấp TTVT', 1),
	(5, 'DV_DHTT', 'Dịch vụ ĐHTT', 1),
	(6, 'DV_KD', 'Dịch vụ hỗ trợ kinh doanh', 1),
	(7, 'DV_CNTT', 'Dịch vụ CNTT', 1);
/*!40000 ALTER TABLE `nhom_dich_vu` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vnptpayc.oauth_access_tokens: ~23 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('0722aea24ad957fb1448fc6528ba3013f2ed4efb44bfc1caf5c8c4e82251804bd0950c286db29ee5', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-19 11:07:08', '2021-03-19 11:07:08', '2021-03-26 11:07:08'),
	('176f111c2ce30d7486a9d9057920153c90bb82ef2faf069b4e4c1c7060327dfb5b21490541760be8', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-25 16:41:41', '2021-03-25 16:41:41', '2022-03-25 16:41:41'),
	('22edd3437e1d05ad0901b01237b7df55215bb93089bdea70eafe72a7b8f953da171bd651d193e64e', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-23 16:13:30', '2021-03-23 16:13:30', '2021-03-30 16:13:30'),
	('284251f273d739d53ca0fe403f9404827b04da62e45bddfcc7d06cc0280aebe6cb319d520fdd733f', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-24 09:04:51', '2021-03-24 09:04:51', '2021-03-31 09:04:51'),
	('3ee132edacb1e1f27e0cbc4dd3691cf037fdc1701a31fdf42c4292efd46e4355623bc0cb46851f1f', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-24 09:34:03', '2021-03-24 09:34:03', '2021-03-31 09:34:03'),
	('413b2bf7c2aa47445ba2db00c8edaac3073592066f4faf51c2724d691f358e069d46c59a82178e60', 35, 1, 'Personal Access Token', '[]', 0, '2021-05-27 10:16:00', '2021-05-27 10:16:00', '2021-06-03 10:16:00'),
	('444a3e10ad367e6f3fb95dc59f3237638696314ead9c71a178db8c6e9423847f577ceb94fceb2227', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-24 16:41:31', '2021-03-24 16:41:31', '2021-03-31 16:41:31'),
	('48aab5f6ec6fc6fd0614d04164a2443ce12da7edf0f1e953ec356fe7d9a502ddbf58e1c955a7701d', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-25 16:37:51', '2021-03-25 16:37:51', '2021-04-01 16:37:51'),
	('50ba85eb0affab0aaa3fb06d92476fe840a70ee1b309066058db6ffbc1be53e80cde4476839889a4', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-25 16:36:34', '2021-03-25 16:36:34', '2022-03-25 16:36:34'),
	('5686828bc20556864bd052738a401e2d0e895e00e16ab87c3f0705219f58b6ca00b5b08fbdc9d942', 9, 1, 'Personal Access Token', '[]', 0, '2021-03-18 10:33:58', '2021-03-18 10:33:58', '2022-03-18 10:33:58'),
	('5b86734b7c13af207eb1db1119d4a44d17056607197ddffe361912495b904263548dc3a2b0208b59', 36, 1, 'Personal Access Token', '[]', 0, '2021-05-27 10:15:52', '2021-05-27 10:15:52', '2021-06-03 10:15:52'),
	('77ce018aaa53c802abf194d4d6704745be07c3406ffbbc00e95a9b9e1360f95a3c9e58d53f21c88d', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-19 10:40:12', '2021-03-19 10:40:12', '2021-03-26 10:40:12'),
	('877cd02f5c4acd58baf85ac200d38c0535df43c5a7625cef75e25809176b7fb79cc3dbe33f44b8a3', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-19 08:12:07', '2021-03-19 08:12:07', '2021-03-26 08:12:07'),
	('990c04b07a5843586c46fff54f46e7f2b6392cd42406a3b8840a7ce7bdfd3ca82cfe0a237df0b890', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-23 16:10:19', '2021-03-23 16:10:19', '2021-03-30 16:10:19'),
	('9a29965f5024c73e086468fabdac6492b1c962a3803ab63f8922affdee4188aa0b83fc1c377040bd', 9, 1, 'Personal Access Token', '[]', 0, '2021-03-18 10:38:56', '2021-03-18 10:38:56', '2021-03-25 10:38:56'),
	('9ae100e46799c468a32d34bc57c61132d7590f22c0cb5007f02800aa8e13e3eb1d30a151bbe9e019', 11, 1, 'Personal Access Token', '[]', 1, '2021-03-19 08:34:02', '2021-03-19 08:34:02', '2021-03-26 08:34:02'),
	('ab6891a4beea688382369a90b1c08fb585964434c73f49aecd4e3d146b5cf3b2f5a7d70b48c0bd6c', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-26 08:34:11', '2021-03-26 08:34:11', '2022-03-26 08:34:11'),
	('aed24f6ecdec3a557c88aba2391958e580c4234115ff42b515ac5a84975def5865007c262af1ac0b', 10, 1, 'Personal Access Token', '[]', 0, '2021-03-18 10:44:37', '2021-03-18 10:44:37', '2021-03-25 10:44:37'),
	('c52ef8cbb9514919cb23ec7daca21f57ba072c58ae8e4285ff35918704402c037861cdb7fb72d65d', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-23 16:15:45', '2021-03-23 16:15:45', '2021-03-30 16:15:45'),
	('d1a1abd1b97ad4037e4094d86e7e27c0b1675928d7fa4a2e2e04a8aa96ac4e8d543f9bdbdb9f54be', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-25 16:38:55', '2021-03-25 16:38:55', '2022-03-25 16:38:55'),
	('e6a8b06ea0708cfd9552f270ff0346770a7d7a316df726255c995cf926e75db998bb34ee6502ec44', 9, 1, 'Personal Access Token', '[]', 1, '2021-03-18 10:37:52', '2021-03-18 10:37:52', '2021-03-25 10:37:52'),
	('ebf8f8380fa13a3405ea1145ecfc7731120c14b78ca0c928ef29a2db8153411f871beaa48a90ee89', 10, 1, 'Personal Access Token', '[]', 0, '2021-03-18 15:58:51', '2021-03-18 15:58:51', '2021-03-25 15:58:51'),
	('f328932f9379a5aa0bfca3b974dbbdd4f00a0f7e1c6340a9c701fad9c3266ae88628e4a013a1c282', 11, 1, 'Personal Access Token', '[]', 0, '2021-03-25 16:37:41', '2021-03-25 16:37:41', '2022-03-25 16:37:41');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vnptpayc.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vnptpayc.oauth_clients: ~2 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'GDMpLecTjBD1USC5qkPFdiRu7nNtgHuK7JIMXZOi', NULL, 'http://localhost', 1, 0, 0, '2021-03-18 09:02:45', '2021-03-18 09:02:45'),
	(2, NULL, 'Laravel Password Grant Client', '6eMBRuGn8LVJ2GIm5MrNGSZgLke36jBY5eq5uBHL', 'users', 'http://localhost', 0, 1, 0, '2021-03-18 09:02:45', '2021-03-18 09:02:45');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vnptpayc.oauth_personal_access_clients: ~1 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2021-03-18 09:02:45', '2021-03-18 09:02:45');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vnptpayc.oauth_refresh_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vnptpayc.password_resets: ~2 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('thanhpv.tvh', '$2y$10$GeJq5nbaNzdeY8UqlCnDIOIh6uSHYw5iZcRhpKuPxDrBtqBT4qAG.', '2019-06-20 02:17:07'),
	('p.thanhit@gmail.com', '$2y$10$Wfx0JhILSAPlPh3cft0SI.URV3epGiCzhxsZLostXaPcvYo2uwDE2', '2021-04-08 08:44:50');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.payc
CREATE TABLE IF NOT EXISTS `payc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_tao` int(10) unsigned NOT NULL,
  `id_dich_vu` int(11) DEFAULT NULL,
  `so_phieu` varchar(200) DEFAULT NULL,
  `tieu_de` varchar(200) NOT NULL,
  `noi_dung` longtext DEFAULT NULL,
  `file_payc` text DEFAULT NULL,
  `ma_phuong_xa` int(10) unsigned DEFAULT NULL,
  `vi_do` varchar(250) DEFAULT NULL,
  `kinh_do` varchar(250) DEFAULT NULL,
  `ngay_tao` datetime DEFAULT current_timestamp(),
  `han_xu_ly_mong_muon` datetime DEFAULT NULL,
  `han_xu_ly_duoc_giao` datetime DEFAULT NULL,
  `ngay_hoan_tat` datetime DEFAULT NULL,
  `trang_thai` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `FK_payc_users` (`id_user_tao`),
  KEY `FK_payc_dich_vu` (`id_dich_vu`),
  KEY `FK_payc_dm_phuong_xa` (`ma_phuong_xa`),
  CONSTRAINT `FK_payc_dich_vu` FOREIGN KEY (`id_dich_vu`) REFERENCES `dich_vu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_payc_dm_phuong_xa` FOREIGN KEY (`ma_phuong_xa`) REFERENCES `dm_phuong_xa` (`ma_phuong_xa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_payc_users` FOREIGN KEY (`id_user_tao`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.payc: ~2 rows (approximately)
/*!40000 ALTER TABLE `payc` DISABLE KEYS */;
INSERT INTO `payc` (`id`, `id_user_tao`, `id_dich_vu`, `so_phieu`, `tieu_de`, `noi_dung`, `file_payc`, `ma_phuong_xa`, `vi_do`, `kinh_do`, `ngay_tao`, `han_xu_ly_mong_muon`, `han_xu_ly_duoc_giao`, `ngay_hoan_tat`, `trang_thai`) VALUES
	(84, 2, 2, '140621-0001', 'Phan Văn Thanh kiểm thử phản ánh kiến nghị lần 1', '<p><br></p>', 'QuyếtđịnhthànhlậpnhómLantỏacủaMạnglướiĐạisứtruyềnthôngVNPTđịabàntỉnhTràVinh(1)_16236349800.pdf;', 29236, NULL, NULL, '2021-06-14 08:43:00', '2021-06-14 17:00:00', NULL, NULL, 1),
	(85, 47, 2, '140621-0002', 'Phan Văn Thanh kiểm thử phản ánh kiến nghị lần 2', '<p><br></p>', 'QuyếtđịnhthànhlậpnhómLantỏacủaMạnglướiĐạisứtruyềnthôngVNPTđịabàntỉnhTràVinh(1)_16236350950.pdf;', 29236, NULL, NULL, '2021-06-14 08:44:55', '2021-06-14 17:00:00', NULL, NULL, 1),
	(86, 2, 2, '160621-0001', 'Kiểm thử chức năng tải file  hệ thống trên điện thoại', '<p>Kiểm thử chức năng tải file&nbsp; hệ thống trên điện thoại<br></p>', 'QuyếtđịnhthànhlậpnhómLantỏacủaMạnglướiĐạisứtruyềnthôngVNPTđịabàntỉnhTràVinh(1)_16238086080.pdf;', 29236, NULL, NULL, '2021-06-16 08:56:48', '2021-06-16 17:00:00', NULL, NULL, 1),
	(87, 2, 2, '160621-0002', 'Kiểm tra chức năng thông báo khi gửi PAKN thành công.', '<p>Kiểm tra chức năng thông báo khi gửi PAKN thành công.<br></p>', 'QuyếtđịnhthànhlậpnhómLantỏacủaMạnglướiĐạisứtruyềnthôngVNPTđịabàntỉnhTràVinh(1)_16238089870.pdf;', 29236, NULL, NULL, '2021-06-16 09:03:07', '2021-06-16 17:00:00', NULL, NULL, 1);
/*!40000 ALTER TABLE `payc` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.payc_binh_luan
CREATE TABLE IF NOT EXISTS `payc_binh_luan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_payc` int(11) NOT NULL DEFAULT 1,
  `id_user` int(10) unsigned DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `ma_loai` varchar(50) NOT NULL DEFAULT 'BINH_LUAN' COMMENT 'BINH_LUAN; TRA_LOI',
  `ho_ten` varchar(250) DEFAULT NULL,
  `noi_dung` longtext DEFAULT NULL,
  `hai_long` int(11) NOT NULL DEFAULT 0,
  `khong_hai_long` int(11) NOT NULL DEFAULT 0,
  `trang_thai` int(11) NOT NULL DEFAULT 0,
  `ngay_binh_luan` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_payc_binh_luan_payc` (`id_payc`),
  KEY `FK_payc_binh_luan_users` (`id_user`),
  KEY `FK_payc_binh_luan_payc_binh_luan` (`parent_id`),
  CONSTRAINT `FK_payc_binh_luan_payc` FOREIGN KEY (`id_payc`) REFERENCES `payc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_payc_binh_luan_payc_binh_luan` FOREIGN KEY (`parent_id`) REFERENCES `payc_binh_luan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_payc_binh_luan_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.payc_binh_luan: ~1 rows (approximately)
/*!40000 ALTER TABLE `payc_binh_luan` DISABLE KEYS */;
INSERT INTO `payc_binh_luan` (`id`, `id_payc`, `id_user`, `parent_id`, `file`, `ma_loai`, `ho_ten`, `noi_dung`, `hai_long`, `khong_hai_long`, `trang_thai`, `ngay_binh_luan`) VALUES
	(76, 85, 37, NULL, 'danhsach_benhvien_chauthanh_16236357800.xls;loi_dong_bo_16236357801.jpg;loi_dong_bo_ho_so_16236357802.xlsx;', 'TRA_LOI', 'Nguyễn Chí Thanh', 'TTCNTT - VNPT TRÀ VINH đã hoàn tất xử lý yêu cầu của A/C.\r\nAnh chị vui lòng kiểm tra lại giúp em.\r\nCảm ơn anh/chị!', 0, 0, 0, '2021-06-14 08:56:20');
/*!40000 ALTER TABLE `payc_binh_luan` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.payc_can_bo_nhan
CREATE TABLE IF NOT EXISTS `payc_can_bo_nhan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_xu_ly_yeu_cau` int(11) NOT NULL,
  `id_user_nhan` int(10) unsigned NOT NULL,
  `ngay_nhan` datetime NOT NULL DEFAULT current_timestamp(),
  `han_xu_ly` datetime DEFAULT NULL,
  `ngay_hoan_tat` datetime DEFAULT NULL,
  `vai_tro` int(11) NOT NULL DEFAULT 0,
  `trang_thai` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_payc_can_bo_nhan_payc_canbo_xuly_yeucau` (`id_xu_ly_yeu_cau`),
  KEY `FK_payc_can_bo_nhan_users` (`id_user_nhan`),
  CONSTRAINT `FK_payc_can_bo_nhan_payc_canbo_xuly_yeucau` FOREIGN KEY (`id_xu_ly_yeu_cau`) REFERENCES `payc_xu_ly` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_payc_can_bo_nhan_users` FOREIGN KEY (`id_user_nhan`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.payc_can_bo_nhan: ~11 rows (approximately)
/*!40000 ALTER TABLE `payc_can_bo_nhan` DISABLE KEYS */;
INSERT INTO `payc_can_bo_nhan` (`id`, `id_xu_ly_yeu_cau`, `id_user_nhan`, `ngay_nhan`, `han_xu_ly`, `ngay_hoan_tat`, `vai_tro`, `trang_thai`) VALUES
	(197, 352, 47, '2021-06-14 08:43:00', NULL, '2021-06-14 08:46:58', 0, 2),
	(198, 353, 47, '2021-06-14 08:44:55', NULL, NULL, 0, 1),
	(199, 354, 37, '2021-06-14 08:46:46', NULL, '2021-06-14 08:50:08', 0, 1),
	(200, 355, 37, '2021-06-14 08:46:58', NULL, '2021-06-14 08:51:02', 0, 2),
	(201, 356, 47, '2021-06-14 08:50:08', '2021-06-18 08:49:00', NULL, 0, 1),
	(202, 356, 48, '2021-06-14 08:50:08', '2021-06-17 08:49:00', '2021-06-14 08:51:30', 1, 2),
	(203, 357, 47, '2021-06-14 08:51:02', NULL, '2021-06-14 08:53:06', 2, 2),
	(204, 357, 48, '2021-06-14 08:51:02', NULL, '2021-06-14 08:53:55', 1, 2),
	(205, 358, 37, '2021-06-14 08:51:30', NULL, NULL, 0, 1),
	(206, 359, 37, '2021-06-14 08:53:55', NULL, '2021-06-16 09:15:55', 0, 2),
	(207, 360, 47, '2021-06-14 08:56:20', NULL, NULL, 0, 0),
	(208, 361, 47, '2021-06-16 08:56:49', NULL, NULL, 0, 0),
	(209, 362, 47, '2021-06-16 09:03:07', NULL, NULL, 0, 0),
	(210, 363, 47, '2021-06-16 09:15:55', NULL, NULL, 0, 0),
	(211, 363, 48, '2021-06-16 09:15:55', NULL, NULL, 1, 0);
/*!40000 ALTER TABLE `payc_can_bo_nhan` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.payc_trang_thai_xu_ly
CREATE TABLE IF NOT EXISTS `payc_trang_thai_xu_ly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_trang_thai` varchar(200) DEFAULT NULL,
  `ten_trang_thai_xu_ly` varchar(200) DEFAULT NULL,
  `mo_ta` varchar(250) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `trang_thai` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ten_xu_ly` (`ten_trang_thai_xu_ly`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.payc_trang_thai_xu_ly: ~18 rows (approximately)
/*!40000 ALTER TABLE `payc_trang_thai_xu_ly` DISABLE KEYS */;
INSERT INTO `payc_trang_thai_xu_ly` (`id`, `ma_trang_thai`, `ten_trang_thai_xu_ly`, `mo_ta`, `order`, `trang_thai`) VALUES
	(1, 'TAO_MOI', 'Tạo mới PAKN', 'Khách hàng hoặc cán bộ tạo PAYC', 1, 1),
	(2, 'TIEP_NHAN', 'Tiếp nhận', 'Cán bộ tiếp nhận PAYC', 1, 1),
	(3, 'HOAN_TAT', 'Hoàn tất', 'Hoàn tất xử lý PAYC', 1, 1),
	(4, 'TRA_LAI_NGUOI_TAO', 'Trả lại khách hàng hoặc từ chối xử lý', 'Trả lại khách hàng hoặc từ chối xử lý', 1, 1),
	(5, 'CHUYEN_XU_LY', 'Chuyển xử lý', 'Chuyển bộ phận xử lý PAYC', 1, 1),
	(6, 'XU_LY', 'Xử lý', 'Cán bộ đang xử lý PAYC', 1, 1),
	(7, 'CHUYEN_LANH_DAO', 'Chuyển lãnh đạo', 'Chuyển lãnh đạo xử lý hoặc xin ý kiến lãnh đạo', 1, 1),
	(8, 'DUYET', 'Duyệt', 'Lãnh đạo duyệt PAYC', 1, 1),
	(9, 'CHUYEN_CAN_BO', 'Chuyển lại bộ phận tiếp nhận & xử lý yêu cầu', 'Chuyển lại cán bộ xử lý để xử lý lại hoặc chuyển lại cán bộ tiếp nhận để cập nhật thông tin', 1, 1),
	(10, 'HUY', 'Hủy', 'Hủy PAYC do khách hàng đã xử lý được hoặc không muốn yêu cầu tiếp', 1, 1),
	(11, 'KH_DANH_GIA', 'KH đánh giá', 'Khách hàng đánh giá phản ánh yêu cầu', 1, 1),
	(12, 'LD_DANH_GIA', 'LĐ đánh giá', 'Khách hàng đánh giá phản ánh yêu cầu', 1, 1),
	(13, 'CAP_NHAT', 'Cập nhật nội dung phản ánh, yêu cầu', 'Cập nhật nội dung task', 1, 1),
	(19, 'DANG_KY_PAYC', 'Cán bộ đăng ký nhận xử lý, hỗ trợ phản ánh, yêu cầu', 'Cán bộ đăng ký nhận xử lý, hỗ trợ phản ánh, yêu cầu', 1, 1),
	(20, 'DUYET_CHUYEN_XU_LY', 'Duyệt và chuyển xử lý', 'Duyệt và chuyển xử lý', 1, 1),
	(21, 'DUYET_HOAT_TAT', 'Duyệt và hoàn tất xử lý phản ánh, yêu cầu', 'Duyệt và hoàn tất xử lý phản ánh, yêu cầu', 1, 1),
	(22, 'XU_LY_VA_CHUYEN_LANH_DAO', 'Xử lý và chuyển lãnh đạo duyệt', 'Xử lý và chuyển lãnh đạo duyệt', 1, 1),
	(24, 'CHUYEN_DON_VI_CAP_TREN', 'Chuyển cấp trên', 'Chuyển cấp trên', 1, 1);
/*!40000 ALTER TABLE `payc_trang_thai_xu_ly` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.payc_xu_ly
CREATE TABLE IF NOT EXISTS `payc_xu_ly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_payc` int(11) NOT NULL,
  `id_user_xu_ly` int(10) unsigned NOT NULL,
  `id_xu_ly` int(11) NOT NULL,
  `noi_dung_xu_ly` longtext DEFAULT NULL,
  `file_xu_ly` text DEFAULT NULL,
  `ngay_xu_ly` datetime DEFAULT current_timestamp(),
  `state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_payc_canbo_xuly_yeucau_payc` (`id_payc`),
  KEY `FK_payc_canbo_xuly_yeucau_users` (`id_user_xu_ly`),
  KEY `FK_payc_canbo_xuly_yeucau_payc_xu_ly` (`id_xu_ly`),
  CONSTRAINT `FK_payc_canbo_xuly_yeucau_payc` FOREIGN KEY (`id_payc`) REFERENCES `payc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_payc_canbo_xuly_yeucau_payc_xu_ly` FOREIGN KEY (`id_xu_ly`) REFERENCES `payc_trang_thai_xu_ly` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_payc_canbo_xuly_yeucau_users` FOREIGN KEY (`id_user_xu_ly`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.payc_xu_ly: ~9 rows (approximately)
/*!40000 ALTER TABLE `payc_xu_ly` DISABLE KEYS */;
INSERT INTO `payc_xu_ly` (`id`, `id_payc`, `id_user_xu_ly`, `id_xu_ly`, `noi_dung_xu_ly`, `file_xu_ly`, `ngay_xu_ly`, `state`) VALUES
	(352, 84, 2, 1, '', '', '2021-06-14 08:43:00', 0),
	(353, 85, 47, 1, '', '', '2021-06-14 08:44:55', 0),
	(354, 85, 47, 7, 'Đã kiểm tra', NULL, '2021-06-14 08:46:46', 0),
	(355, 84, 47, 7, NULL, NULL, '2021-06-14 08:46:58', 0),
	(356, 85, 37, 20, 'Chuyển Thanh xử lý', NULL, '2021-06-14 08:50:08', 0),
	(357, 84, 37, 20, 'Mỹ Phối hợp xử lý', NULL, '2021-06-14 08:51:02', 0),
	(358, 85, 48, 22, 'Đã hoàn tất', NULL, '2021-06-14 08:51:30', 0),
	(359, 84, 48, 22, NULL, NULL, '2021-06-14 08:53:55', 0),
	(360, 85, 37, 21, 'TTCNTT - VNPT TRÀ VINH đã hoàn tất xử lý yêu cầu của A/C.\r\nAnh chị vui lòng kiểm tra lại giúp em.\r\nCảm ơn anh/chị!', 'danhsach_benhvien_chauthanh_16236357800.xls;loi_dong_bo_16236357801.jpg;loi_dong_bo_ho_so_16236357802.xlsx;', '2021-06-14 08:56:20', 0),
	(361, 86, 2, 1, '', '', '2021-06-16 08:56:49', 0),
	(362, 87, 2, 1, '', '', '2021-06-16 09:03:07', 0),
	(363, 84, 37, 20, 'Chuyển Mỹ và Thanh cùng xử lý', NULL, '2021-06-16 09:15:55', 0);
/*!40000 ALTER TABLE `payc_xu_ly` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.to_do
CREATE TABLE IF NOT EXISTS `to_do` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `noi_dung` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_tao` datetime DEFAULT current_timestamp(),
  `ngay_giao` datetime DEFAULT current_timestamp(),
  `han_xu_ly` datetime DEFAULT NULL,
  `ngay_hoan_thanh` datetime DEFAULT NULL,
  `sap_xep` int(11) NOT NULL DEFAULT 0,
  `trang_thai` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_to_do_users` (`id_user`),
  CONSTRAINT `FK_to_do_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table vnptpayc.to_do: ~2 rows (approximately)
/*!40000 ALTER TABLE `to_do` DISABLE KEYS */;
INSERT INTO `to_do` (`id`, `id_user`, `noi_dung`, `file`, `ngay_tao`, `ngay_giao`, `han_xu_ly`, `ngay_hoan_thanh`, `sap_xep`, `trang_thai`) VALUES
	(35, 2, 'test', NULL, '2021-06-14 08:20:46', '2021-06-14 08:20:46', NULL, '2021-06-14 08:21:01', 2, 1),
	(36, 2, 'TEST 2', NULL, '2021-06-14 09:23:02', '2021-06-14 09:23:02', NULL, NULL, 1, 1);
/*!40000 ALTER TABLE `to_do` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_anh` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/user.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `di_dong` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loai_tai_khoan` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT 'KHACH_HANG' COMMENT 'KHACH_HANG; CAN_BO',
  `state` int(11) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table vnptpayc.users: ~15 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `hinh_anh`, `remember_token`, `created_at`, `updated_at`, `di_dong`, `loai_tai_khoan`, `state`) VALUES
	(1, 'Chế độ ẩn danh', 'guest@vnpt.vn', '$2y$10$VZI0siYq7lRPvqt8e.QbXOWDBelj91YwJoLsEKx4GxbWH5XQb87xO', 'photo_2019-10-21_18-00-43_16177906110.jpg', '35xOWSUdceM6lRhePiHS9Y3xwvvLupgJWeYIzh2FMjMl22RuUJURMmX7oElG', NULL, '2021-06-10 10:09:36', '0941138484', 'KHACH_HANG', 1),
	(2, 'Quản trị hệ thống', 'admin@vnpt.vn', '$2y$10$OcK0kyfMtKmByQ2ZmToC/uf.8ekeOk.Snc4LqXXDrnZrHO8oencTC', 'photo_2019-10-21_18-00-43_16177906110.jpg', 'OmSm00xOurJGFIQcKwvtz2CUfdbJvVsyuMCBJ8ETpY0PgrydXQLhUo541gcF', NULL, '2021-06-10 10:09:46', '0941138484', 'CAN_BO', 1),
	(35, 'API', 'api.tvh@vnpt.vn', '$2y$10$7XXsD688amtqziOa0CJb6er2R6hvpBj0jWMeNFSOGuhxow2Z13ZMy', '/user.png', NULL, '2021-05-27 10:15:36', '2021-05-27 10:15:36', NULL, 'API', 1),
	(37, 'Nguyễn Chí Thanh', 'thanhnc.tvh@vnpt.vn', '$2y$10$fHF7exTXOKmfCqXsNMyK/uEb7tIdBLvUk1anLRz0PIaaQSlThXtxy', '/user.png', NULL, '2021-06-10 10:11:50', '2021-06-10 10:11:50', '0913658639', 'CAN_BO', 1),
	(38, 'Nguyễn Hữu Quang', 'quangnh.tvh@vnpt.vn', '$2y$10$9Cfj4KpHnLfa87vjlqcIjen6vE0D2ARCEFOx5gOcNQ1SHjn8goYze', '/user.png', NULL, '2021-06-10 10:12:28', '2021-06-10 10:12:28', '0913981014', 'CAN_BO', 1),
	(39, 'Nguyễn Văn Nam', 'namnv.tvh@vnpt.vn', '$2y$10$kg3FV0O.KAGTSVLv/Wo5qeoXDT7O5hbR08uiqnASSP3kZ2bgJNR92', '/user.png', NULL, '2021-06-10 10:13:08', '2021-06-10 10:13:08', '0919363999', 'CAN_BO', 1),
	(40, 'Hồ Thanh Cao', 'caoht.tvh@vnpt.vn', '$2y$10$Wfkw.2H.KHQp8sw1e70tVu5F.EuPb8srhogB1uJ6RE3BNqp.HZVjG', '/user.png', NULL, '2021-06-10 10:17:04', '2021-06-10 10:17:04', '0913890084', 'CAN_BO', 1),
	(41, 'Đặng Văn Nghĩa', 'nghiadv.tvh@vnpt.vn', '$2y$10$JvUZrBgsWVeqp1kTzp9YH.vBXmDVeAbu85xgqoZA.r5.wbp/dPnXG', '/user.png', NULL, '2021-06-10 10:21:04', '2021-06-10 10:21:04', '0919329629', 'CAN_BO', 1),
	(42, 'Nguyễn Văn Ngon', 'ngonnv.tvh@vnpt.vn', '$2y$10$sX/p/FdLQAR2gqdroit9uO7i0//HyGCX6cnQzsFIhkT2OymqU.Tua', '/user.png', NULL, '2021-06-10 10:22:13', '2021-06-10 10:22:13', '0918136456', 'CAN_BO', 1),
	(43, 'Bạch Tuấn Kiệt', 'kietbt.tvh@vnpt.vn', '$2y$10$HzEoUTDOFc792WW7/PyRJ.90VDx8lyb141oV7cmg16V6y3azBoZL6', '/user.png', NULL, '2021-06-11 13:41:01', '2021-06-11 13:41:01', '0913633215', 'CAN_BO', 1),
	(44, 'Đặng Văn Nghĩa 2', 'nghiadv2.tvh@vnpt.vn', '$2y$10$JvUZrBgsWVeqp1kTzp9YH.vBXmDVeAbu85xgqoZA.r5.wbp/dPnXG', '/user.png', NULL, '2021-06-10 10:21:04', '2021-06-10 10:21:04', '0919329629', 'CAN_BO', 1),
	(45, 'Nguyễn Duy Sơn', 'sonnd.tvh@vnpt.vn', '$2y$10$DyeI6HHVOpruUYkBhV0/gO5qMPACp5YbF3YwwXS9whBqvV2XXXrny', '/user.png', NULL, '2021-06-14 08:32:54', '2021-06-14 08:32:54', '0919329666', 'CAN_BO', 1),
	(46, 'Nguyễn Thị Kim Chi', 'chintk.tvh@vnpt.vn', '$2y$10$0ffdrnejzltTXS1n193Vb.tAaTwuR3ocBJ/BqUd9WOcuFoQFVtT2W', '/user.png', NULL, '2021-06-14 08:34:08', '2021-06-14 08:34:08', '0919896606', 'CAN_BO', 1),
	(47, 'Trần Thị Thanh Mỹ', 'myttt.tvh@vnpt.vn', '$2y$10$fSuodyJuDN3aW5PlPgxOk..ZtQSyU60P9aJo92EUNX8IAuk5j4VvK', '/user.png', NULL, '2021-06-14 08:35:38', '2021-06-14 08:35:38', '0919345358', 'CAN_BO', 1),
	(48, 'Phan Văn Thanh', 'thanhpv.tvh@vnpt.vn', '$2y$10$qtkXLgyhBiGhZE4a.4DPjuirvK03vKh9llBKgkA.gbBD0n8b1l84C', '/user.png', NULL, '2021-06-14 08:36:04', '2021-06-14 08:36:04', '0941138484', 'CAN_BO', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.users_dich_vu
CREATE TABLE IF NOT EXISTS `users_dich_vu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_dich_vu` int(11) DEFAULT NULL,
  `tu_ngay` date DEFAULT NULL,
  `den_ngay` date DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `FK_users_dich_vu_users` (`id_user`),
  KEY `FK_users_dich_vu_dich_vu` (`id_dich_vu`),
  CONSTRAINT `FK_users_dich_vu_dich_vu` FOREIGN KEY (`id_dich_vu`) REFERENCES `dich_vu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_users_dich_vu_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.users_dich_vu: ~10 rows (approximately)
/*!40000 ALTER TABLE `users_dich_vu` DISABLE KEYS */;
INSERT INTO `users_dich_vu` (`id`, `id_user`, `id_dich_vu`, `tu_ngay`, `den_ngay`, `state`) VALUES
	(36, 2, 2, NULL, NULL, 1),
	(38, 48, 2, NULL, NULL, 1),
	(39, 47, 2, NULL, NULL, 1),
	(40, 46, 1, NULL, NULL, 1),
	(41, 45, 1, NULL, NULL, 1),
	(42, 44, 1, NULL, NULL, 1),
	(43, 43, 1, NULL, NULL, 1),
	(44, 37, 2, NULL, NULL, 1),
	(45, 38, 1, NULL, NULL, 1),
	(46, 39, 1, NULL, NULL, 1);
/*!40000 ALTER TABLE `users_dich_vu` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.users_don_vi
CREATE TABLE IF NOT EXISTS `users_don_vi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_don_vi` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `id_chuc_danh` int(10) unsigned NOT NULL DEFAULT 1,
  `id_chuc_vu` int(10) unsigned NOT NULL DEFAULT 1,
  `ngay_bat_dau_cong_tac` datetime DEFAULT current_timestamp(),
  `ngay_ket_thuc_cong_tac` datetime DEFAULT NULL,
  `state` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `FK_users_don_vi_users` (`id_user`),
  KEY `FK_users_don_vi_don_vi` (`id_don_vi`),
  KEY `FK_users_don_vi_chuc_danh` (`id_chuc_danh`),
  KEY `FK_users_don_vi_chuc_vu` (`id_chuc_vu`),
  CONSTRAINT `FK_users_don_vi_chuc_danh` FOREIGN KEY (`id_chuc_danh`) REFERENCES `chuc_danh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_users_don_vi_chuc_vu` FOREIGN KEY (`id_chuc_vu`) REFERENCES `chuc_vu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_users_don_vi_don_vi` FOREIGN KEY (`id_don_vi`) REFERENCES `don_vi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_users_don_vi_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table vnptpayc.users_don_vi: ~13 rows (approximately)
/*!40000 ALTER TABLE `users_don_vi` DISABLE KEYS */;
INSERT INTO `users_don_vi` (`id`, `id_don_vi`, `id_user`, `id_chuc_danh`, `id_chuc_vu`, `ngay_bat_dau_cong_tac`, `ngay_ket_thuc_cong_tac`, `state`) VALUES
	(72, 18, 2, 1, 2, NULL, NULL, 1),
	(73, 18, 37, 1, 2, NULL, NULL, 1),
	(74, 44, 38, 1, 2, NULL, NULL, 1),
	(76, 44, 39, 2, 2, NULL, NULL, 1),
	(77, 34, 40, 6, 2, NULL, NULL, 1),
	(78, 16, 41, 1, 2, NULL, NULL, 1),
	(79, 17, 42, 1, 2, NULL, NULL, 1),
	(80, 33, 43, 1, 2, NULL, NULL, 1),
	(81, 16, 44, 1, 2, NULL, NULL, 1),
	(82, 16, 45, 1, 4, NULL, NULL, 1),
	(83, 16, 46, 1, 3, NULL, NULL, 1),
	(84, 18, 47, 2, 3, NULL, NULL, 1),
	(85, 18, 48, 1, 4, NULL, NULL, 1);
/*!40000 ALTER TABLE `users_don_vi` ENABLE KEYS */;

-- Dumping structure for table vnptpayc.users_role
CREATE TABLE IF NOT EXISTS `users_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_role_id` (`user_id`,`role_id`),
  KEY `FK_users_role_admin_role` (`role_id`),
  CONSTRAINT `FK_users_role_admin_role` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_users_role_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- Dumping data for table vnptpayc.users_role: ~14 rows (approximately)
/*!40000 ALTER TABLE `users_role` DISABLE KEYS */;
INSERT INTO `users_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2021-03-17 11:02:46', '2021-03-17 11:02:47'),
	(32, 2, 2, '2021-04-09 16:10:46', '2021-04-09 16:10:46'),
	(38, 37, 2, '2021-06-10 10:34:14', '2021-06-10 10:34:14'),
	(39, 38, 2, '2021-06-10 10:34:21', '2021-06-10 10:34:21'),
	(40, 39, 2, '2021-06-10 10:34:26', '2021-06-10 10:34:26'),
	(41, 40, 2, '2021-06-10 10:34:31', '2021-06-10 10:34:31'),
	(42, 41, 2, '2021-06-10 10:34:38', '2021-06-10 10:34:38'),
	(43, 42, 2, '2021-06-10 10:34:55', '2021-06-10 10:34:55'),
	(44, 43, 2, '2021-06-11 13:41:24', '2021-06-11 13:41:24'),
	(45, 44, 2, '2021-06-13 01:13:03', '2021-06-13 01:13:03'),
	(46, 45, 2, '2021-06-14 08:33:43', '2021-06-14 08:33:43'),
	(47, 46, 2, '2021-06-14 08:36:45', '2021-06-14 08:36:45'),
	(48, 47, 2, '2021-06-14 08:36:52', '2021-06-14 08:36:52'),
	(49, 48, 2, '2021-06-14 08:37:01', '2021-06-14 08:37:01');
/*!40000 ALTER TABLE `users_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
