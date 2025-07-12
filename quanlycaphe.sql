-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 11, 2025 lúc 10:28 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlycaphe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ban`
--

CREATE TABLE `ban` (
  `ma_ban` varchar(10) NOT NULL,
  `ten_ban` varchar(100) NOT NULL,
  `ma_kv` varchar(10) DEFAULT NULL,
  `trang_thai` varchar(20) DEFAULT 'Trống',
  `da_xoa` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ban`
--

INSERT INTO `ban` (`ma_ban`, `ten_ban`, `ma_kv`, `trang_thai`, `da_xoa`) VALUES
('B01', 'Bàn 01', 'KV1', 'Trống', 1),
('B02', 'Bàn 02', 'KV1', 'Trống', 0),
('B03', 'Bàn 03', 'KV2', 'Trống', 0),
('B04', 'Bàn 04', 'KV2', 'Trống', 0),
('B05', 'Bàn 05', 'KV3', 'Trống', 0),
('B06', 'Bàn 06', 'KV3', 'Đã đặt', 0),
('B07', 'Bàn 07', 'KV4', 'Có khách', 0),
('B08', 'Bàn 08', 'KV5', 'Trống', 0),
('B09', 'Bàn 09', 'KV6', 'Trống', 1),
('B10', 'Bàn 10', 'KV7', 'Trống', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ban_hoa_don`
--

CREATE TABLE `ban_hoa_don` (
  `ma_hd` varchar(10) NOT NULL,
  `ma_ban` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ban_hoa_don`
--

INSERT INTO `ban_hoa_don` (`ma_hd`, `ma_ban`) VALUES
('HD1950', 'B03'),
('HD2571', 'B06'),
('HD3066', 'B04'),
('HD3247', 'B03'),
('HD3944', 'B02'),
('HD4456', 'B06'),
('HD4784', 'B02'),
('HD4935', 'B08'),
('HD5520', 'B04'),
('HD6601', 'B02'),
('HD7267', 'B03'),
('HD8964', 'B07'),
('HD9628', 'B06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `ma_hd` varchar(10) NOT NULL,
  `ma_mon` varchar(10) NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `gia_luc_ban` decimal(38,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`ma_hd`, `ma_mon`, `so_luong`, `gia_luc_ban`) VALUES
('HD1950', 'ST02', 3, 12000.00),
('HD1950', 'ST04', 1, 12000.00),
('HD1950', 'ST06', 1, 75000.00),
('HD2571', 'ST02', 1, 12000.00),
('HD2935', 'CF02', 2, 18000.00),
('HD2935', 'CF03', 1, 30000.00),
('HD2935', 'ST03', 1, 12000.00),
('HD3066', 'CF03', 1, 30000.00),
('HD3066', 'ST02', 1, 12000.00),
('HD3066', 'ST05', 1, 12000.00),
('HD3066', 'ST06', 1, 75000.00),
('HD3247', 'ST02', 1, 12000.00),
('HD3247', 'ST04', 1, 12000.00),
('HD3247', 'ST05', 1, 12000.00),
('HD3566', 'ST05', 1, 12000.00),
('HD3639', 'CF03', 1, 30000.00),
('HD3639', 'ST03', 4, 12000.00),
('HD3639', 'ST04', 2, 12000.00),
('HD3639', 'ST06', 1, 75000.00),
('HD3944', 'ST06', 1, 75000.00),
('HD4456', 'ST02', 1, 12000.00),
('HD4784', 'CF03', 1, 30000.00),
('HD4784', 'ST02', 1, 12000.00),
('HD4784', 'ST05', 1, 12000.00),
('HD4935', 'ST01', 1, 12000.00),
('HD4935', 'ST02', 1, 12000.00),
('HD4935', 'ST04', 1, 12000.00),
('HD5520', 'ST05', 1, 12000.00),
('HD5775', 'CF01', 1, 15000.00),
('HD5775', 'CF02', 1, 18000.00),
('HD5775', 'ST03', 2, 12000.00),
('HD5775', 'ST05', 2, 12000.00),
('HD5775', 'ST06', 1, 75000.00),
('HD6601', 'CF02', 1, 18000.00),
('HD6601', 'ST06', 3, 75000.00),
('HD7267', 'CF02', 1, 18000.00),
('HD8964', 'CF02', 1, 18000.00),
('HD8964', 'ST03', 1, 12000.00),
('HD8964', 'ST04', 1, 12000.00),
('HD9628', 'ST03', 1, 12000.00),
('HD9628', 'ST05', 3, 12000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hd` varchar(10) NOT NULL,
  `ngay_lap` date NOT NULL,
  `gio` time NOT NULL,
  `ma_nv` varchar(10) DEFAULT NULL,
  `trang_thai` varchar(20) DEFAULT 'Chua thanh toan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hd`, `ngay_lap`, `gio`, `ma_nv`, `trang_thai`) VALUES
('HD1950', '2025-07-10', '08:47:54', 'NV05', 'Da thanh toan'),
('HD2571', '2025-07-12', '03:27:15', NULL, 'Chua thanh toan'),
('HD2935', '2025-07-10', '05:22:20', 'NV01', 'Da thanh toan'),
('HD3066', '2025-07-11', '11:04:53', 'NV05', 'Da thanh toan'),
('HD3247', '2025-07-11', '11:08:18', NULL, 'Da thanh toan'),
('HD3566', '2025-07-11', '01:06:06', 'NV05', 'Da thanh toan'),
('HD3639', '2025-07-10', '09:28:39', 'NV05', 'Da thanh toan'),
('HD3944', '2025-07-11', '01:07:42', 'NV05', 'Da thanh toan'),
('HD4456', '2025-07-10', '05:25:40', NULL, 'Da thanh toan'),
('HD4784', '2025-07-11', '00:57:44', NULL, 'Da thanh toan'),
('HD4935', '2025-07-11', '01:08:38', 'NV05', 'Da thanh toan'),
('HD5520', '2025-07-10', '05:26:02', 'NV05', 'Da thanh toan'),
('HD5775', '2025-07-11', '00:56:43', 'NV05', 'Da thanh toan'),
('HD6601', '2025-07-10', '08:43:57', 'NV05', 'Da thanh toan'),
('HD7267', '2025-07-10', '05:22:12', NULL, 'Da thanh toan'),
('HD8964', '2025-07-12', '03:27:48', 'NV03', 'Da thanh toan'),
('HD9628', '2025-07-11', '01:10:17', 'NV05', 'Da thanh toan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khu_vuc`
--

CREATE TABLE `khu_vuc` (
  `ma_kv` varchar(10) NOT NULL,
  `ten_kv` varchar(100) NOT NULL,
  `da_xoa` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khu_vuc`
--

INSERT INTO `khu_vuc` (`ma_kv`, `ten_kv`, `da_xoa`) VALUES
('KV1', 'Lầu 1', 0),
('KV10', 'Phòng họp', 1),
('KV2', 'Lầu 2', 0),
('KV3', 'Lầu 3', 0),
('KV4', 'Sân trước', 0),
('KV5', 'Sân sau', 0),
('KV6', 'VIP 1', 1),
('KV7', 'VIP 2', 0),
('KV8', 'Ban công', 1),
('KV9', 'Sảnh', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_mon`
--

CREATE TABLE `loai_mon` (
  `ma_loai` varchar(10) NOT NULL,
  `ten_loai` varchar(100) NOT NULL,
  `da_xoa` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_mon`
--

INSERT INTO `loai_mon` (`ma_loai`, `ten_loai`, `da_xoa`) VALUES
('LM01', 'Cà Phê', 0),
('LM02', 'Nước Ngọt', 1),
('LM03', 'Sinh Tố', 0),
('LM04', 'Trà Sữa', 0),
('LM05', 'Nước ép', 1),
('LM06', 'Soda', 0),
('LM07', 'Bánh', 0),
('LM08', 'Kem', 0),
('LM09', 'Cocktail', 0),
('LM10', 'Trà Trái Cây', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `ma_nv` varchar(10) NOT NULL,
  `ho_ten` varchar(100) NOT NULL,
  `cmnd` varchar(20) DEFAULT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `ngay_vao_lam` date DEFAULT NULL,
  `vi_tri` varchar(50) DEFAULT NULL,
  `da_nghi` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`ma_nv`, `ho_ten`, `cmnd`, `sdt`, `dia_chi`, `ngay_sinh`, `ngay_vao_lam`, `vi_tri`, `da_nghi`) VALUES
('NV01', 'Đoàn Ngọc Thành', '123456789', '0901234567', 'Hà Nội', '1999-01-28', '2018-10-30', 'Thu ngân', 0),
('Nv012', 'Bla bla', '34534543543', '0123456789', 'shjdfhjsdhjfdhsjafghdsahjgf', '1999-10-05', '2025-07-02', 'Thu ngân', 0),
('NV013', 'Đoàn Ngọc Thành', '123456789', '0901234567', 'Hà Nội', '1999-01-28', '2018-10-30', 'Thu ngân', 0),
('NV02', 'Nguyễn Văn A', '987654321', '0901123456', 'TP.HCM', '1998-05-10', '2019-01-01', 'Phục vụ', 0),
('NV03', 'Lê Thị B', '555666777', '0903456789', 'Đà Nẵng', '2000-03-22', '2020-03-15', 'Pha chế', 0),
('NV04', 'Trần C', '444555666', '0904567890', 'Cần Thơ', '1997-11-05', '2017-07-20', 'Thu ngân', 0),
('NV05', 'Mai D', '333222111', '0905678901', 'Hải Phòng', '1996-09-12', '2016-12-05', 'Quản lý', 1),
('NV08', 'Bùi G', '777666555', '0908901234', 'Biên Hòa', '1994-02-17', '2014-03-25', 'Thu ngân', 0),
('NV10', 'Vũ I', '555444333', '0912345678', 'Quảng Ninh', '1992-07-14', '2012-08-08', 'Phục vụ', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `ma_mon` varchar(10) NOT NULL,
  `ten_mon` varchar(100) NOT NULL,
  `gia` bigint(20) DEFAULT NULL,
  `ma_loai` varchar(10) DEFAULT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `da_xoa` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`ma_mon`, `ten_mon`, `gia`, `ma_loai`, `hinh_anh`, `da_xoa`) VALUES
('CF01', 'Cà Phê Đen Đá', 15000, 'LM01', 'cf_den.jpg', 0),
('CF02', 'Cà Phê Sữa', 18000, 'LM01', 'st_do.jpg', 0),
('CF03', 'Cappuchino', 30000, 'LM01', 'cf_sua.jpg', 1),
('MC02', 'Macaron', 30000, 'LM07', 'macaron.jpg', 0),
('ST005', 'Soda Chanh', 12999, 'LM02', 'st_do.jpg', 1),
('ST01', 'Sting Dâu0', 12000, 'LM01', 'st_bo.jpg', 0),
('ST02', 'Sting Vàng n', 12000, 'LM03', 'ne_cam.jpg', 0),
('ST03', 'Pepsi', 12000, 'LM02', 'soda_chanh.jpg', 0),
('ST04', '7Up', 12000, 'LM02', 'soda_chanh', 0),
('ST05', 'WakeUp 247', 12000, 'LM04', 'matcha.jpg', 0),
('ST06', 'Monster Xanh', 75000, 'LM02', 'dx_socola.jpg', 0),
('TS01', 'Trà Sữa Trân Châu', 25000, 'LM04', 'ts_tc.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `ten_dang_nhap` varchar(50) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `ma_nv` varchar(10) DEFAULT NULL,
  `quyen` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`ten_dang_nhap`, `mat_khau`, `ma_nv`, `quyen`) VALUES
('admin', 'admin123', 'NV05', 'admin'),
('baba', '1', 'Nv012', 'nhanvien'),
('ngocthanh', '123', 'NV01', 'nhanvien'),
('ngocthanh1', '112233', 'NV013', 'nhanvien'),
('nv02', 'abc123', 'NV02', 'nhanvien'),
('nv03', 'abc123', 'NV03', 'admin'),
('nv04', 'abc123', 'NV04', 'nhanvien'),
('nv05', 'abc123', 'NV05', 'admin'),
('nv08', 'abc123', 'NV08', 'nhanvien'),
('vu', '10', 'NV10', 'nhanvien');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`ma_ban`),
  ADD KEY `ma_kv` (`ma_kv`);

--
-- Chỉ mục cho bảng `ban_hoa_don`
--
ALTER TABLE `ban_hoa_don`
  ADD PRIMARY KEY (`ma_hd`,`ma_ban`),
  ADD KEY `ma_ban` (`ma_ban`);

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD PRIMARY KEY (`ma_hd`,`ma_mon`),
  ADD KEY `ma_mon` (`ma_mon`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hd`),
  ADD KEY `ma_nv` (`ma_nv`);

--
-- Chỉ mục cho bảng `khu_vuc`
--
ALTER TABLE `khu_vuc`
  ADD PRIMARY KEY (`ma_kv`);

--
-- Chỉ mục cho bảng `loai_mon`
--
ALTER TABLE `loai_mon`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`ma_nv`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ma_mon`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`ten_dang_nhap`),
  ADD KEY `ma_nv` (`ma_nv`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ban`
--
ALTER TABLE `ban`
  ADD CONSTRAINT `ban_ibfk_1` FOREIGN KEY (`ma_kv`) REFERENCES `khu_vuc` (`ma_kv`);

--
-- Các ràng buộc cho bảng `ban_hoa_don`
--
ALTER TABLE `ban_hoa_don`
  ADD CONSTRAINT `ban_hoa_don_ibfk_1` FOREIGN KEY (`ma_hd`) REFERENCES `hoa_don` (`ma_hd`),
  ADD CONSTRAINT `ban_hoa_don_ibfk_2` FOREIGN KEY (`ma_ban`) REFERENCES `ban` (`ma_ban`);

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD CONSTRAINT `chi_tiet_hoa_don_ibfk_1` FOREIGN KEY (`ma_hd`) REFERENCES `hoa_don` (`ma_hd`),
  ADD CONSTRAINT `chi_tiet_hoa_don_ibfk_2` FOREIGN KEY (`ma_mon`) REFERENCES `san_pham` (`ma_mon`);

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`ma_nv`) REFERENCES `nhan_vien` (`ma_nv`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai_mon` (`ma_loai`);

--
-- Các ràng buộc cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD CONSTRAINT `tai_khoan_ibfk_1` FOREIGN KEY (`ma_nv`) REFERENCES `nhan_vien` (`ma_nv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
