USE [Du_An_Mau1]
GO
/****** Object:  Table [dbo].[CHITIETPHIEU]    Script Date: 6/15/2025 5:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEU](
	[MaHD] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Gia] [float] NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[LoaiSP] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/15/2025 5:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SDT] [varchar](15) NOT NULL,
	[hinhanh] [varchar](255) NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PendingAccount]    Script Date: 6/15/2025 5:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PendingAccount](
	[taikhoanID] [nvarchar](50) NULL,
	[password] [nvarchar](255) NULL,
	[confirmPassword] [nvarchar](255) NULL,
	[email] [nvarchar](100) NOT NULL,
	[verifycode] [nvarchar](10) NULL,
	[ExpiredTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUMUAHANG]    Script Date: 6/15/2025 5:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUMUAHANG](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[PhiPhuThu] [float] NOT NULL,
	[TongTien] [float] NOT NULL,
	[DaThanhToan] [bit] NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
	[DaHuy] [bit] NOT NULL,
	[The] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QLSP]    Script Date: 6/15/2025 5:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLSP](
	[MASP] [varchar](5) NULL,
	[TENSP] [nvarchar](50) NULL,
	[LOAISP] [nvarchar](50) NULL,
	[GIA] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qlthe]    Script Date: 6/15/2025 5:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qlthe](
	[Trangthai] [bit] NULL,
	[Mathe] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 6/15/2025 5:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [varchar](10) NOT NULL,
	[TENSP] [nvarchar](100) NULL,
	[LOAISP] [nvarchar](50) NULL,
	[GIA] [decimal](10, 2) NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 6/15/2025 5:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[TaiKhoanID] [varchar](100) NOT NULL,
	[MatKhau] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[trangthai] [bit] NULL,
	[VTID] [varchar](100) NULL,
	[VerifyCode] [nvarchar](255) NULL,
	[ExpiredTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 6/15/2025 5:20:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[VTID] [varchar](100) NOT NULL,
	[TenVT] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[VTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0006', N'SP001', 1, 150000, N'Áo Thun Nam', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0007', N'SP001', 1, 150000, N'Áo Thun Nam', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0008', N'SP001', 1, 150000, N'Áo Thun Nam', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0008', N'SP002', 1, 320000, N'Quần Jean Nữ', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0009', N'SP001', 1, 150000, N'Áo Thun Nam', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0009', N'SP002', 1, 320000, N'Quần Jean Nữ', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD001', N'SP001', 2, 500000, N'Cà phê nguyên chất', N'Cà phê')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0010', N'SP001', 1, 150000, N'Áo Thun Nam', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0010', N'SP002', 1, 320000, N'Quần Jean Nữ', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0010', N'SP003', 1, 30000, N'Sữa Tươi Không Đường', N'Thực Phẩm')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0010', N'SP005', 1, 120000, N'Sách Lập Trình Java', N'Sách')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0011', N'SP003', 1, 30000, N'Sữa Tươi Không Đường', N'Thực Phẩm')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0012', N'SP001', 6, 150000, N'Áo Thun Nam', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0012', N'SP002', 5, 320000, N'Quần Jean Nữ', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0013', N'SP001', 8, 150000, N'Áo Thun Nam', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0013', N'SP002', 12, 320000, N'Quần Jean Nữ', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0014', N'SP001', 6, 150000, N'Áo Thun Nam', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD0014', N'SP002', 14, 320000, N'Quần Jean Nữ', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD002', N'SP002', 3, 300000, N'Quần Jean Nữ', N'Thời Trang')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD003', N'SP003', 1, 1200000, N'Máy pha cà phê', N'Thiết bị')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD004', N'SP004', 5, 400000, N'Bàn Phím Cơ', N'Điện Tử')
INSERT [dbo].[CHITIETPHIEU] ([MaHD], [MaSP], [SoLuong], [Gia], [TenSP], [LoaiSP]) VALUES (N'HD005', N'SP005', 2, 250000, N'Nước ép cam', N'Đồ uống')
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [hinhanh], [email]) VALUES (1, N'Nguyễn Văn A', N'Nam', CAST(N'1990-05-20' AS Date), N'0901234567', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [hinhanh], [email]) VALUES (2, N'Lê Thị B', N'Nữ', CAST(N'1995-08-15' AS Date), N'0912345678', N'C:\Users\acchi\Downloads\2.png', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [hinhanh], [email]) VALUES (3, N'Trần Văn C', N'Nam', CAST(N'1988-12-01' AS Date), N'0923456789', NULL, NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [hinhanh], [email]) VALUES (6, N'Phạm Thị D', N'Nam', CAST(N'1992-03-10' AS Date), N'0934567890', NULL, N'binhnttv00241@gmail.com')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [hinhanh], [email]) VALUES (8, N'Nguyễn Tiến Bình', N'Nam', CAST(N'2008-05-27' AS Date), N'0123456789', N'C:\Users\acchi\OneDrive\Desktop\z6265527856534_47f4cb16c0c074407b73897cf7fc99e1.jpg', N'nhunhuocqua123@gmail.com')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD0006', CAST(N'2025-01-01T00:00:00.000' AS DateTime), N'huy', 0, 150000, 1, N'jhsbf', 0, NULL)
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD0007', CAST(N'2025-05-28T00:00:00.000' AS DateTime), N'huy', 0, 150000, 1, N'binh ngu', 0, NULL)
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD0008', CAST(N'2025-05-28T00:00:00.000' AS DateTime), N'HSDV', 0, 470000, 1, N'JHDSB', 0, NULL)
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD0009', CAST(N'2025-05-28T00:00:00.000' AS DateTime), N'huy', 200, 470200, 1, N'binh ', 0, NULL)
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD001', CAST(N'2025-05-28T08:45:23.000' AS DateTime), N'Nguyễn Văn A', 50000, 1500000, 1, N'Giao hàng nhanh', 0, NULL)
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD0010', CAST(N'2025-05-28T00:00:00.000' AS DateTime), N'b', 300000, 620000, 1, N'aaaaa', 0, NULL)
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD0011', CAST(N'2025-05-28T00:00:00.000' AS DateTime), N'd', 100000, 130000, 1, N'zd', 0, N'T005')
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD0012', CAST(N'2025-05-28T00:00:00.000' AS DateTime), N'binhbeo', 20000, 2520000, 1, N'khong co gi...', 0, NULL)
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD0013', CAST(N'2025-06-03T00:00:00.000' AS DateTime), N'binhbeo', 2000, 5042000, 1, N'cac', 0, N'T003')
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD0014', CAST(N'2025-06-03T00:00:00.000' AS DateTime), N'binhbeo', 2000, 5382000, 1, N'hihi', 0, N'T005')
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD002', CAST(N'2025-05-27T14:12:05.000' AS DateTime), N'Trần Thị B', 30000, 930000, 1, N'Khách hàng VIP', 0, N'T002')
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD003', CAST(N'2025-05-26T10:35:47.000' AS DateTime), N'Lê Văn C', 20000, 1200000, 1, N'Không có ghi chú', 0, NULL)
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD004', CAST(N'2025-05-25T17:50:12.000' AS DateTime), N'Phạm Thị D', 40000, 2040000, 1, N'Chờ xác nhận', 0, N'T002')
INSERT [dbo].[PHIEUMUAHANG] ([MaHD], [NgayLap], [TenNV], [PhiPhuThu], [TongTien], [DaThanhToan], [GhiChu], [DaHuy], [The]) VALUES (N'HD005', CAST(N'2025-05-24T09:15:30.000' AS DateTime), N'Hoàng Văn E', 10000, 500000, 1, N'Hàng dễ vỡ', 0, NULL)
GO
INSERT [dbo].[QLSP] ([MASP], [TENSP], [LOAISP], [GIA]) VALUES (N'SP001', N'Áo Thun Nam', N'Thời Trang', 150000)
INSERT [dbo].[QLSP] ([MASP], [TENSP], [LOAISP], [GIA]) VALUES (N'SP002', N'Quần Jean Nữ', N'Thời Trang', 320000)
INSERT [dbo].[QLSP] ([MASP], [TENSP], [LOAISP], [GIA]) VALUES (N'SP003', N'Sữa Tươi Không Đường', N'Thực Phẩm', 30000)
INSERT [dbo].[QLSP] ([MASP], [TENSP], [LOAISP], [GIA]) VALUES (N'SP004', N'Sữa Tươi Không Đường', N'Cà phê', 30000)
GO
INSERT [dbo].[qlthe] ([Trangthai], [Mathe]) VALUES (0, N'T001')
INSERT [dbo].[qlthe] ([Trangthai], [Mathe]) VALUES (0, N'T002')
INSERT [dbo].[qlthe] ([Trangthai], [Mathe]) VALUES (0, N'T003')
INSERT [dbo].[qlthe] ([Trangthai], [Mathe]) VALUES (0, N'T004')
INSERT [dbo].[qlthe] ([Trangthai], [Mathe]) VALUES (0, N'T005')
GO
INSERT [dbo].[taikhoan] ([TaiKhoanID], [MatKhau], [Email], [trangthai], [VTID], [VerifyCode], [ExpiredTime]) VALUES (N'admin', N'123', N'nhunhuocqua123@gmail.com', NULL, N'001', NULL, NULL)
INSERT [dbo].[taikhoan] ([TaiKhoanID], [MatKhau], [Email], [trangthai], [VTID], [VerifyCode], [ExpiredTime]) VALUES (N'binhbeo', N'123', N'binhnttv00241@gmail.com', NULL, N'002', NULL, NULL)
GO
INSERT [dbo].[VaiTro] ([VTID], [TenVT]) VALUES (N'001', N'Admin')
INSERT [dbo].[VaiTro] ([VTID], [TenVT]) VALUES (N'002', N'User')
GO
ALTER TABLE [dbo].[PHIEUMUAHANG] ADD  DEFAULT ((0)) FOR [DaHuy]
GO
ALTER TABLE [dbo].[CHITIETPHIEU]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[PHIEUMUAHANG] ([MaHD])
GO
ALTER TABLE [dbo].[taikhoan]  WITH CHECK ADD FOREIGN KEY([VTID])
REFERENCES [dbo].[VaiTro] ([VTID])
GO
