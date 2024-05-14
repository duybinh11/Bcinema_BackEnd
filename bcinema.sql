-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 14, 2024 lúc 12:43 PM
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
-- Cơ sở dữ liệu: `bcinema`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie`
--

CREATE TABLE `movie` (
  `id` int(255) NOT NULL,
  `cost` int(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `time` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `censoship` int(6) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `mount_watch` int(10) NOT NULL,
  `movie_type` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`id`, `cost`, `trailer`, `date_start`, `date_end`, `time`, `name`, `censoship`, `poster`, `mount_watch`, `movie_type`, `language`) VALUES
(1, 100000, 'https://www.youtube.com/watch?v=B2Jlyq_Tf3Y&pp=ygUMdHJhaWxlciBwaGlt', '2024-02-06', '2024-04-15', 120, 'Godzilla x Kong: Đế Chế Mới | Official Trailer 2', 16, 'https://images2.thanhnien.vn/528068263637045248/2024/2/15/2-1707976144434835618054.jpg', 500, 'Hành động', 'Tiếng Anh'),
(2, 89000, 'https://www.youtube.com/watch?v=EX6clvId19s&pp=ygUMdHJhaWxlciBwaGlt', '2024-03-20', '2024-04-20', 110, 'MAI | MAIN TRAILER | PHIM TẾT 2024 CỦA TRẤN THÀNH', 18, 'https://upload.wikimedia.org/wikipedia/vi/3/36/Mai_2024_poster.jpg', 600, 'Hài, Tình cảm', 'Tiếng Việt'),
(3, 65000, ' https://www.youtube.com/watch?v=7LH-TIcPqks&pp=ygUMdHJhaWxlciBwaGlt', '2024-03-25', '2024-04-25', 130, 'EXHUMA: QUẬT MỘ TRÙNG MA', 18, 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/1800x/71252117777b696995f01934522c402d/7/0/700x1000-exhuma.jpg', 700, 'Kinh dị', 'Tiếng Hàn'),
(4, 89000, 'https://www.youtube.com/watch?v=egkeFvm26pc&pp=ygUMdHJhaWxlciBwaGlt', '2024-02-14', '2024-05-01', 95, 'KUNG FU PANDA 4', 13, 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/1800x/71252117777b696995f01934522c402d/4/7/470x700_3_.jpg', 400, 'Hoạt hình', 'Tiếng Anh'),
(5, 89000, 'https://www.youtube.com/watch?v=mKBzn9phPJU&pp=ygUMdHJhaWxlciBwaGlt', '2024-04-05', '2024-05-05', 100, 'SÁNG ĐÈN', 16, 'https://metiz.vn/media/uploads/2024/02/01/sang-den1.jpg', 450, 'Hài tết', 'Tiếng Việt'),
(6, 79000, 'https://www.youtube.com/watch?v=8U6uO5dGtKY&pp=ygUMdHJhaWxlciBwaGlt', '2024-04-10', '2024-05-10', 115, 'QUÝ CÔ THỪA KẾ 2', 18, 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/1800x/71252117777b696995f01934522c402d/p/o/poster-qctk2.jpg', 550, 'Tâm lý', 'Tiếng Việt'),
(7, 80000, 'https://www.youtube.com/watch?v=MUY7MIKOY-Q&pp=ygUMdHJhaWxlciBwaGlt', '2024-04-15', '2024-05-15', 125, 'QUỶ THAY ĐẦU', 18, 'https://cdn.galaxycine.vn/media/2024/2/19/baghead-750_1708317004345.jpg', 600, 'Kinh dị', 'Tiếng Anh'),
(8, 70000, 'https://www.youtube.com/watch?v=keZ70jipjXc&pp=ygUMdHJhaWxlciBwaGlt', '2024-02-06', '2024-05-20', 105, 'Aquaman và Vương Quốc Thất Lạc', 16, 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/1800x/71252117777b696995f01934522c402d/r/s/rsz_vn_aqamn2_vert_tsr_2764x4096_intl_1.jpg', 700, 'Hành động', 'Tiếng Anh'),
(9, 90000, 'https://www.youtube.com/watch?v=563qMSvqkZ8&pp=ygUMdHJhaWxlciBwaGlt', '2024-04-25', '2024-05-25', 110, 'TÀ THUẬT RƯỢU CỐT NGƯỜI', 18, 'https://cdn.galaxycine.vn/media/2024/1/10/rcn-750_1704870018294.jpg', 800, 'Kinh dị', 'Tiếng Trung'),
(10, 50000, 'https://www.youtube.com/watch?v=Gggw9jwr1h4&pp=ygUMdHJhaWxlciBwaGlt', '2024-05-01', '2024-06-01', 135, 'GẶP LẠI CHỊ BẦU', 13, 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/4/7/470wx700h_5_.jpg', 650, 'Hài', 'Tiếng việt'),
(11, 55000, 'https://www.youtube.com/watch?v=OrkpnMV3d3Y&pp=ygUMdHJhaWxlciBwaGlt', '2024-05-05', '2024-06-05', 95, 'Đào, Phở và Piano', 16, 'https://starlight.vn/Areas/Admin/Content/Fileuploads/images/POSTER/PIANO.jpg', 500, 'sử thi lãng mạn', 'Tiếng Việt'),
(12, 45000, 'https://www.youtube.com/watch?v=0UXPIa5cNws&pp=ygUMdHJhaWxlciBwaGlt', '2024-05-10', '2024-06-10', 120, 'Oppenheimer', 18, 'https://image.nhandan.vn/w800/Uploaded/2024/cvjntcigjcvwxtj/2023_08_20/opr-tsr1sheet3-look2-rgb-3-1-1-64545c0d15f1e-1-3781.jpg.webp', 700, 'Hành động', 'Tiếng Anh'),
(13, 69000, 'https://www.youtube.com/watch?v=IvTvR8paEm0&pp=ygUMdHJhaWxlciBwaGlt', '2024-03-06', '2024-06-15', 115, 'CÁ MẬP SIÊU BẠO CHÚA 2: VỰC SÂU', 18, 'https://static.vieon.vn/vieplay-image/thumbnail_v4/2021/02/24/qkyy1y4u_1920x1080loto.jpg', 750, 'Hành động', 'Tiếng Anh'),
(14, 79000, 'https://www.youtube.com/watch?v=Rz7p2HfMEQg&pp=ygUMdHJhaWxlciBwaGlt', '2024-05-20', '2024-06-20', 100, 'LÔ TÔ', 16, 'https://static.vieon.vn/vieplay-image/thumbnail_v4/2021/02/24/qkyy1y4u_1920x1080loto.jpg', 550, 'Hài', 'Tiếng Việt'),
(15, 70000, 'https://www.youtube.com/watch?v=cYCOcxWgPVU&pp=ygUMdHJhaWxlciBwaGlt', '2024-05-25', '2024-06-25', 125, 'QUỶ CẨU', 18, 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/1800x/71252117777b696995f01934522c402d/1/0/1080x1350-quy-cau.jpg', 800, 'Kinh dị', 'Tiếng Việt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rate`
--

CREATE TABLE `rate` (
  `id` int(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `star_rate` float NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rate`
--

INSERT INTO `rate` (`id`, `id_user`, `id_movie`, `star_rate`, `comment`, `date_time`) VALUES
(1, 6, 12, 4.5, 'phim hay', '2024-03-20 20:20:33.000000'),
(2, 6, 1, 4.5, 'ok', '2024-03-05 20:22:54.000000'),
(3, 7, 1, 5, 'pl', '2024-03-13 20:32:13.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seat`
--

CREATE TABLE `seat` (
  `id` int(255) NOT NULL,
  `id_ticket` int(255) NOT NULL,
  `number_seat` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `seat`
--

INSERT INTO `seat` (`id`, `id_ticket`, `number_seat`) VALUES
(1, 1, 84),
(2, 1, 85),
(3, 2, 95),
(4, 2, 96),
(5, 3, 75),
(6, 3, 76),
(7, 4, 94),
(8, 5, 84),
(9, 5, 85),
(10, 5, 86),
(11, 6, 85),
(12, 7, 84),
(13, 7, 83),
(14, 8, 86),
(15, 8, 87),
(16, 9, 89),
(17, 9, 88),
(18, 10, 80),
(19, 10, 82),
(20, 10, 81),
(21, 11, 94),
(22, 11, 95),
(23, 12, 96),
(24, 12, 97),
(25, 12, 98),
(26, 13, 92),
(27, 13, 93),
(28, 14, 91),
(29, 14, 90),
(30, 15, 64),
(31, 15, 65),
(32, 16, 66),
(33, 17, 67),
(34, 18, 75),
(35, 19, 76),
(36, 19, 77),
(37, 20, 56),
(38, 20, 57),
(39, 21, 71),
(40, 21, 72),
(41, 22, 86),
(42, 23, 68),
(43, 23, 69),
(44, 24, 74),
(45, 24, 73),
(46, 25, 52),
(47, 25, 53),
(48, 26, 34),
(49, 26, 35),
(50, 26, 36);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `show_time`
--

CREATE TABLE `show_time` (
  `id` int(255) NOT NULL,
  `id_movie` int(255) NOT NULL,
  `rap` int(255) NOT NULL,
  `date_time` date NOT NULL,
  `time_start` time(6) NOT NULL,
  `time_end` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `show_time`
--

INSERT INTO `show_time` (`id`, `id_movie`, `rap`, `date_time`, `time_start`, `time_end`) VALUES
(1, 1, 1, '2024-04-17', '10:00:00.469000', '12:04:16.577000'),
(2, 1, 1, '2024-05-17', '12:00:00.000000', '14:04:00.000000'),
(3, 1, 2, '2024-05-16', '15:00:00.000000', '17:04:00.000000'),
(4, 1, 3, '2024-05-16', '18:00:00.000000', '20:04:00.000000'),
(5, 2, 1, '2024-05-16', '10:00:00.000000', '12:00:00.000000'),
(6, 2, 3, '2024-05-14', '18:00:00.000000', '20:00:00.000000'),
(7, 4, 3, '2024-05-14', '08:00:00.000000', '09:30:00.000000'),
(8, 4, 1, '2024-05-13', '14:00:00.000000', '15:30:00.000000'),
(9, 5, 1, '2024-05-13', '21:00:00.000000', '22:30:00.000000'),
(10, 3, 2, '2024-05-12', '09:00:00.000000', '11:30:00.000000'),
(11, 3, 2, '2024-05-12', '12:00:00.000000', '14:30:00.000000'),
(12, 13, 5, '2024-05-12', '18:30:00.000000', '20:30:00.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ticket`
--

CREATE TABLE `ticket` (
  `id` int(255) NOT NULL,
  `id_show_time` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `total_price` int(10) NOT NULL,
  `date_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ticket`
--

INSERT INTO `ticket` (`id`, `id_show_time`, `id_user`, `total_price`, `date_time`) VALUES
(1, 6, 2, 200000, '2024-04-14 16:42:44.000000'),
(2, 6, 4, 200000, '2024-04-14 16:53:29.000000'),
(3, 10, 5, 200000, '2024-05-11 15:33:33.000000'),
(4, 10, 2, 100000, '2024-05-12 12:08:03.000000'),
(5, 10, 8, 300000, '2024-05-12 12:20:42.000000'),
(6, 11, 8, 100000, '2024-05-12 12:30:43.000000'),
(7, 11, 8, 200000, '2024-05-12 12:32:32.000000'),
(8, 11, 8, 200000, '2024-05-12 12:33:55.000000'),
(9, 11, 8, 200000, '2024-05-12 12:36:22.000000'),
(10, 11, 8, 300000, '2024-05-12 12:42:19.000000'),
(11, 11, 8, 200000, '2024-05-12 12:43:38.000000'),
(12, 11, 8, 300000, '2024-05-12 12:48:54.000000'),
(13, 11, 8, 200000, '2024-05-12 12:49:23.000000'),
(14, 11, 8, 200000, '2024-05-12 12:52:55.000000'),
(15, 11, 8, 200000, '2024-05-12 12:56:47.000000'),
(16, 11, 8, 100000, '2024-05-12 12:59:08.000000'),
(17, 11, 8, 100000, '2024-05-12 12:59:35.000000'),
(18, 11, 8, 100000, '2024-05-12 13:25:34.000000'),
(19, 11, 8, 200000, '2024-05-12 13:26:06.000000'),
(20, 11, 8, 200000, '2024-05-12 13:28:41.000000'),
(21, 11, 8, 200000, '2024-05-12 13:35:55.000000'),
(22, 12, 8, 100000, '2024-05-12 13:38:40.000000'),
(23, 11, 8, 200000, '2024-05-12 13:40:35.000000'),
(24, 11, 9, 200000, '2024-05-12 13:43:22.000000'),
(25, 11, 8, 200000, '2024-05-12 13:51:13.000000'),
(26, 11, 11, 300000, '2024-05-12 14:17:09.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `old` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `phone`, `username`, `address`, `old`) VALUES
(1, 'Zxc123@gmail', '$2y$10$OdWukrSyEIaoJRFuEqGCG.AkWRJJUxgt8Ko06xKWwe0G4fHNN27Va', '098532102', 'Zxc123', 'Hue', 20),
(2, 'Abc@gmail', '$2y$10$H0qDdrHP5Zlqz1cZYfb4zucVlbWop3LC4snU3eU/fdJPQPkzeotXW', '0982582635', 'DuyBInhNguyen', 'Da Nang', 20),
(4, 'NDB@gmail.com', '$2y$10$Hz.mqxJ8wdO/NiskzAhhSesUxRfLcCu/p4bYhgbNEEhO8FauYToOK', '098203847', 'DuyBinh12', 'Da Nang', 20),
(5, 'dung@gmail.com', '$2y$10$XJ2bWskCrqGx1rMyf8jQ8OrvR7FGPfPyMcnXaZn/nUX3lFLlUh4DC', '93289239832', 'dung', 'hue', 30),
(6, 'ndb23@gmail.com', '$2y$10$MPTxhw1xYpmimXJ8puMnD.ye00lzBgUrg0EsDgDruN/KuQicLanfC', '0982038230', 'DuyBinh123', 'Hue', 20),
(7, 'ndb110@gmail.com', '$2y$10$0DfEobheSWV2lWsWNXxjOO4yLQrphHH1mptqC7WRDLflnoOS6mCBK', '09820382501', 'DuyBinh1', 'Hue', 20),
(8, 'ndb10@gmail.com', '$2y$10$Dx81PHgtgdU/s1zz7qje6OzcInzKjH7z5vrCNHmYs8QmKnxcBL3Km', '0982038250834', 'DuyBinh', 'Hue', 20),
(9, 'z@gmail.com', '$2y$10$96g5vr6fA0ASz2I.1PW45.FNCAM/OIWYzkF698rsztt8pHEb31lCS', '02834032345', 'zxc123sdf', 'HUe', 20),
(10, 'duybinh10@gmail.com', '$2y$10$23ESR0yhNg1AsyPEyDwZoehweMk4xayetkXAGeJJ4a8Vs5AH473pG', '0982038243243', 'DuyBinh10', 'Hue', 20),
(11, 'duybinh11@gmail.com', '$2y$10$x1Oi6vabUD0I/kjH9bfPDe.g3Y7k5L0tUMV066/KP/WaMSFqW5.MS', '0982038250', 'DuyBinh11', 'Hue', 20);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_movie` (`id_movie`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ticket` (`id_ticket`);

--
-- Chỉ mục cho bảng `show_time`
--
ALTER TABLE `show_time`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_movie` (`id_movie`);

--
-- Chỉ mục cho bảng `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_show_time` (`id_show_time`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `seat`
--
ALTER TABLE `seat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `show_time`
--
ALTER TABLE `show_time`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id`);

--
-- Các ràng buộc cho bảng `show_time`
--
ALTER TABLE `show_time`
  ADD CONSTRAINT `show_time_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id`);

--
-- Các ràng buộc cho bảng `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`id_show_time`) REFERENCES `show_time` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
