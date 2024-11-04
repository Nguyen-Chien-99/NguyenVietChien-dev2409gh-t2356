create database Lab32_QLSV_TVC
USE Lab32_QLSV_TVC
GO
/****** Object:  Table [dbo].[Ketqua]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ketqua](
	[MaSV] [nvarchar](3) NOT NULL,
	[MaMH] [nvarchar](2) NOT NULL,
	[Diem] [real] NULL,
 CONSTRAINT [Prk_MaSV_MAMH] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKH] [nvarchar](2) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
 CONSTRAINT [Prk_KHOA_khoa] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](2) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[Sotiet] [tinyint] NULL,
 CONSTRAINT [Prk_MONHOC_MaMH] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](3) NOT NULL,
	[HoSV] [nvarchar](15) NOT NULL,
	[TenSV] [nvarchar](7) NOT NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[NoiSinh] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](2) NOT NULL,
	[HocBong] [float] NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [Prk_SINHVIEN_MaSV] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'03', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'04', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'05', 3.9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'01', 4.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'05', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'08', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'01', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'02', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'03', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'04', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'08', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'01', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'04', 4)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'04', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'08', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'01', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'03', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'04', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'05', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'06', 6)
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'AV', N'Anh Văn')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'DT', N'Điện tử')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'KT', N'Kế toán')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TH', N'Tin học')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TR', N'Triết')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'01', N'Cơ sở dữ liệu', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'02', N'Trí tuệ nhân tạo', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'03', N'Toán rời rạc ứng dụng', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'04', N'Đồ họa ứng dụng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'05', N'Tiếng Anh cơ bản', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'06', N'Tin học văn phòng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'07', N'Pháp luật đại cương', 30)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'08', N'Anh chuyên Ngành', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'09', N'PTTK Hệ thống', 60)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A01', N'Nguyễn Thị', N'Vân', 0, CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 130000, 5.1800000190734865)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A02', N'Trần Văn', N'Chính', 0, CAST(N'1994-12-20T00:00:00' AS SmallDateTime), N'Bình Định', N'TH', 150000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A03', N'Lê Thu Bạch', N'Yến', 1, CAST(N'1993-02-21T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A04', N'Trần Anh', N'Tuấn', 0, CAST(N'1987-12-20T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A10', N'Trần Thị', N'Mai', 1, CAST(N'1994-10-04T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A11', N'Nguyễn Thành', N'Nam', 0, CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'Cà Mau', N'AV', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A12', N'Nguyễn Quang', N'Quyền', 0, CAST(N'2001-01-01T00:00:00' AS SmallDateTime), N'Đồng Nai', N'DT', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B01', N'Hoàng Thanh', N'Mai', 1, CAST(N'1992-08-12T00:00:00' AS SmallDateTime), N'Hải Phòng', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B02', N'Trần Thị Thu', N'Thủy', 1, CAST(N'1990-01-02T00:00:00' AS SmallDateTime), N'Tp. HCM', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B03', N'Đố Văn', N'Lâm', 0, CAST(N'1994-02-26T00:00:00' AS SmallDateTime), N'Bình Định', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B04', N'Bùi Kim', N'Dung', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hµ Néi', N'TH', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C01', N'Hà Quang', N'Anh', 0, CAST(N'1985-03-11T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C03', N'Lê Quang', N'Lưu', 0, CAST(N'1985-02-23T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T03', N'Hoàng Thị Hải', N'Yến', 1, CAST(N'1989-09-10T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T06', N'Nguyễn Văn', N'Thắng', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 1500000, NULL)
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [Def_SINHVIEN_HocBong]  DEFAULT ((0)) FOR [HocBong]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Makh] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Makh]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Mamh] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Mamh]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [Frk_SINHVIEN_Makh] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khoa] ([MaKH])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [Frk_SINHVIEN_Makh]
GO
/* Bài 1 viết những truy vấn lọc và sắp xếp dữ kiệu
1.cho biết danh sách môn học,
Gồm các thông tin sau: mã môn ,tên mon, số tiết*/
select*from MonHoc
go
select MaMH as[Mã Môn Học],TenMH as[Tên môn học],SoTiet[Số tiết] from MonHoc
go
/*2.*/
select MaSV as'Mã Sinh Viên',HoSV as'Họ Sinh viên',TenSV as 'Tên Sinh Viên',HocBong[Học Bổng]
from SinhVien
order by MaSV ASC
go
/*3.*/
select MaSv,TenSV,Phai,NgaySinh
from SinhVien
order by TenSV ASC
/*4.Thông tin sinh viên gồm:
Họ tên sinh viên,Ngày sinh, Học bổng
Thông tin sẽ được sắp xếp theo thứ tự ngày sinh tăng dần và học bồng giảm dần*/
select HoSV+''+TenSV as[Họ và tên sinh viên],NgaySinh[Ngày Sinh],HocBong[Học Bổng]
from SinhVien
order by NgaySinh asc,3 Desc
/*5.danh sách môn học bắt đầu bằng chữ T,Gồm các thông tin: Mã môn,Tên môn,Số tiết*/
select MaMH,TenMH,Sotiet
from MonHoc
where TenMH like N'T%'
/*6.Liệt Kê danh sách sinh viên có chữ cái cuối cùng trong tên alf i,goomcacs thông tin:Họ sinh viên,Tên sinh viên,Ngày sing,Phái*/
select HoSV+TenSV,NgaySinh,Phai
from SinhVien
where TenSV like N'%i'
/*7.danh sach những khoa có ký tự thứ 2 của tên khoa có chứ chữ N,gôm các thôn tin:Mã khoa,Tên Khoa*/
select MaKH,TenKH
from Khoa
where TenKH like N'_N%'
/*8.liệt kê sinh viên mà có chứa chữ thị*/
select *
from SinhVien
where HoSV like N'%thị%'
/*9.cho danh sách những sinh viên ký tự đầu của tên nằm trong khoảng từ a đến m ,
gồm các thông tin:Mã sinh viên,họ tên sinh viên,phái,học bổng*/
select MaSV,HoSV,TenSV,Phai,HocBong
from SinhVien
where TenSV like N'[a-m]%'
/*10.*/
select MaSV,HoSV+''+TenSV as [Họ và tên sinh viên],NgaySinh,NoiSinh,HocBong
from SinhVien
where TenSV like N'%[a-m]%'
order by 2 asc
/*11. cho biết danh sách các sinh viên khoa anh văn ,gồm cá thông tin sau:mã sinh viên,học tên sinh viên,ngày sinh,mã khoa*/
select MaSV,HoSV+''+TenSV as[Họ và tên sinh viên],NgaySinh,MaKH
from SinhVien
where MaKH like 'AV'
/*12.Liệt kê danh sách sinh viên khoa vật lý , gôm các thông tin sau:mã sinh viên,ngày sinh.danh sách sẽ được sắp xếp theo ngày sinh giảm dần*/
select MaSV,HoSV+''+TenSV as[Họ và tên sinh viên],NgaySinh
from SinhVien
where MaKH like 'TH'
order by NgaySinh desc
--13.
select MaSV, HoSV, MaKH, HocBong
from SinhVien
where HocBong >'500000'
order by MaKH desc
--14. liệt kê danh sách sinh viên sinh vào ngày 20/12/1987, gồm các thong tin: họ và tên sinh viên, mã khoa, học bổng
select HoSV, MaKH, HocBong, Convert(Char(10),NgaySinh ,103) as [NgaySinh]
from SinhVien
where day(NgaySinh)=20 and Month (NgaySinh)=12 and Year(NgaySinh)=1987
go
--15.
select HoSV, MaKH, HocBong, Convert(Char(10),NgaySinh ,103) as [NgaySinh]
from SinhVien
where Convert (char(10),NgaySinh,103) >'20/12/1977'
order by NgaySinh desc
go
--16.Liệt kê các sinh viên có học bổng lớn hơn
select HoSV, MaKH, NoiSinh, HocBong
from SinhVien
where HocBong > 100000 and NoiSinh like N'%Tp.HCM%'
go
--17.Danh sách các sinh viên của khoa Anh Văn và khoa Triết, gồm các thông tin
select *
from SinhVien
Where MaKH = 'AV' or MaKH= 'TR'
go
Select *
From SinhVien
Where  MaKH IN ('AV','TR')
GO
--18.Cho biết những sinh viên có ngày sinh từ 01/01/1986 đến 05/06/1992 gồm các thông tin: ngày sinh, nơi sinh, học bổng, mã sinh viên
select MaSV,NgaySinh, NoiSinh, HocBong
from SinhVien
where NgaySinh BETWEEN '1986-01-01' AND '1992-06-05'
GO
--19.Danh sách những sinh viên có học bổng từ 200.000 đến 800.000, gồm các thông tin: Mã sinh viên, Họ và tên sinh viên, ngày sinh, phái, mã khoa
SELECT MaSV, NgaySinh, Phai, MaKH
FROM SinhVien
WHERE HocBong BETWEEN 200000 AND 800000
GO
--20.Cho biết những môn học có số tiết lớn hơn 40 và nhỏ hơn 60 gồm các thông tin: mã môn học, tên môn học, số tiết
SELECT MaMH, TenMH, SoTiet
FROM MonHoc
WHERE SoTiet > 40 AND SoTiet < 60
GO
--21.Liệt kê những sinh viên nam của khoa anh văn gồm các thông tin: mã sv, hộ tên sv, phái
SELECT SV.MaSV, SV.HoSV, SV.TenSV, SV.Phai
FROM SinhVien SV
JOIN Khoa KH ON SV.MaKH = KH.MaKH
WHERE SV.Phai = 'false' AND KH.MaKH = 'AV'
GO
--22.Danh sách sv có nơi sinh ở Hà Nội và ngày sinh sau 01/01/1990 gồm các thông tin: hộ sv, tên sv, nơi sinh, ngày sinh
SELECT HoSV, TenSV, NoiSinh, NgaySinh
FROM SinhVien
WHERE NoiSinh = N'%Hà Nội%' AND NgaySinh > '1990-01-01'
GO
--23.Liệt kê những sv nữ, tên có chứa chữ N
SELECT MaSV, HoSV, TenSV
FROM SinhVien
WHERE Phai = 'True' AND (HoSV LIKE '%N%' OR TenSV LIKE '%N%')
GO
--24.Danh sách các nam sv khoa Tin học có ngày sinh sau ngày 30/05/1986
SELECT MaSV, HoSV, TenSV, NgaySinh
FROM SinhVien
WHERE Phai = 'False' AND MaKH = (SELECT MaKH FROM Khoa WHERE TenKH = 'Tin Học') AND NgaySinh > '1986-05-30'
go
--25.Liệt kê danh sách sv gồm các thông tin sau: Họ và tên sv, giới tính, ngày sinh. Trong đó giới tính hiển thị dưới dạng Nam/ Nữ tùy theo giá trị của field Phai là true hay false
SELECT HoSV, TenSV, 
       CASE 
           WHEN Phai = 'False' THEN '0' 
           WHEN Phai = 'True' THEN '1' 
       END AS GioiTinh, 
       NgaySinh
FROM SinhVien
go
--26.Cho biết danh sách các sinh viên gồm các thông tin sau: Mã sv, Tuổi, Nơi sinh, Mã khoa. Trong đó Tuổi sẽ dc tính bằng cách lấy năm hiện hành trừ cho năm sinh
SELECT MaSV, DATEDIFF(YEAR, NgaySinh, GETDATE()) AS Tuoi, NoiSinh, MaKH
FROM SinhVien;
go
--27.Cho biết những sv có tuổi lớn hơn 20, thông tin gồm: Họ tên sv, Tuổi, học bổng
SELECT MaSV, DATEDIFF(YEAR, NgaySinh, GETDATE()) AS Tuoi, HocBong
FROM SinhVien
where DATEDIFF(YEAR, NgaySinh, GETDATE())>20
go
--28.Danh sách những sinh viên có tuổi từ 20-30 gồm thông tin sau: Họ tên sv, tuổi, tên khoa
SELECT 
    sv.HoSV, sv.TenSV,
    DATEDIFF(YEAR, sv.NgaySinh, GETDATE()) AS Tuoi, 
    k.TenKH
FROM 
    SinhVien sv
JOIN 
    Khoa k ON sv.MaKH = k.MaKH
WHERE 
    DATEDIFF(YEAR, sv.NgaySinh, GETDATE()) BETWEEN 20 AND 30
	go

--Phan II--
--1--
SELECT HoSV as'Họ', TenSV as'Tên',
	[Giới Tính] =CASE
			WHEN Phai =1 THEN N'Nữ'
			WHEN Phai =0 THEN N'Nam'
		END,
	[Tuổi]=YEAR(GETDATE())-YEAR(NgaySinh)
FROM SinhVien
ORDER by YEAR(GETDATE())-YEAR(NgaySinh) DESC
go
--2--
SELECT HoSV as'Họ', TenSV as'Tên',
[Phái]= CASE WHEN phai =1 THEN N'Nữ'
			WHEN phai =0 THEN N'Nam'
			END
,DAY(NgaySinh)
FROM dbo.SinhVien
WHERE MONTH(NgaySinh)=2 AND YEAR(NgaySinh)=1994
GO
--3--
SELECT * FROM dbo.SinhVien
ORDER BY NgaySinh DESC
GO
--4--
SELECT MaSV as 'Mã Sinh Viên', Phai as 'Phái', MaKH as'Mã Khoa',
[Mức học bổng]= CASE WHEN HocBong >500000 THEN N'Học Bổng Cao'
					 ELSE N'Mức trung bình'
				END
FROM dbo.SinhVien
GO
--5--
SELECT HoSV AS'Họ', TENSV AS'Tên',
MonHoc.MaMH AS 'Mã Môn Học', DIEM AS 'Điểm'
FROM dbo.SinhVien JOIN dbo.Ketqua ON Ketqua.MaSV = SinhVien.MaSV JOIN dbo.MonHoc ON MonHoc.MaMH = Ketqua.MaMH
ORDER BY Họ, Tên, MonHoc.MaMH
GO
--6--
SELECT HoSV AS'Họ', TENSV AS'Tên',
[Giới tính] = CASE	
					WHEN Phai =1 THEN N'Nữ'
					WHEN Phai =0 THEN N'Nam'
				END
,TenKH AS'Tên Khoa'
FROM dbo.SinhVien JOIN dbo.Khoa ON Khoa.MaKH = SinhVien.MaKH
WHERE Khoa.MaKH = 'AV'
GO
--7--
SELECT
TenKH AS'Tên khoa',
HoSV AS'Họ',
TenSV AS'Tên',
TenMH AS'Tên môn học',
SoTiet AS'Số tiết',
Diem AS'Điểm'

FROM dbo.SinhVien JOIN dbo.Khoa ON Khoa.MaKH = SinhVien.MaKH JOIN dbo.Ketqua ON Ketqua.MaSV = SinhVien.MaSV JOIN dbo.MonHoc ON MonHoc.MaMH = Ketqua.MaMH
WHERE Khoa.MaKH='TH'
GO
--8--
SELECT 
HoSV AS'Họ',
TenSV AS'Tên',
MaKH AS'Mã Khoa',
TenMH AS'Tên môn học',
Diem AS'Điểm',
[Loại]= CASE WHEN Diem > 8 THEN N'Giỏi'
			 WHEN Diem BETWEEN 6 AND 8 THEN N'Khá'
			 WHEN Diem <6 THEN N'Trung bình'
			END
FROM dbo.SinhVien JOIN dbo.Ketqua ON Ketqua.MaSV = SinhVien.MaSV JOIN dbo.MonHoc ON MonHoc.MaMH = Ketqua.MaMH
GO

--Tính toán thông kê dữ liệu--
--1--
SELECT 
MonHoc.MaMH as N'Mã Môn',
TenMH as N'Tên môn',
AVG(Diem) as N'Trung bình điểm thi'
FROM dbo.SinhVien JOIN dbo.Ketqua ON Ketqua.MaSV = SinhVien.MaSV JOIN dbo.MonHoc ON MonHoc.MaMH = Ketqua.MaMH
GROUP BY MonHoc.MaMH,TenMH,Diem
GO
--2--
SELECT 
HoSV AS'Họ', 
TENSV AS'Tên', 
TENKH AS'Tên Khoa',
[Tổng môn thi] = COUNT(Ketqua.MaMH)
FROM dbo.SinhVien JOIN dbo.Ketqua ON Ketqua.MaSV = SinhVien.MaSV JOIN dbo.MonHoc ON MonHoc.MaMH = Ketqua.MaMH JOIN dbo.Khoa ON Khoa.MaKH = SinhVien.MaKH
GROUP BY HoSV,TenSV,TenKH
GO
--3--
SELECT TenSV AS'Tên sinh viên', TENKH AS'Tên khoa', Phai AS 'Phai',
[Tổng điểm thi]=SUM(Diem)
FROM dbo.SinhVien JOIN dbo.Khoa ON Khoa.MaKH = SinhVien.MaKH JOIN dbo.Ketqua ON Ketqua.MaSV = SinhVien.MaSV
GROUP BY TenSV,TenKH,Phai
GO
--4.cho biết tổng số sinh viên ở mỗi khoa, gồm các thông tin: tên khoa, tổng số sinh viên 
SELECT 
    K.TenKH,
    COUNT(S.MaSV) AS TongSoSinhVien
FROM 
    Khoa K
JOIN 
    SinhVien S ON K.MaKH = S.MaKH
GROUP BY 
    K.TenKH
	GO
--5. cho biết điểm cao nhất của mỗi sinh viên, gồm thông tin: họ tên sinh viên, điểm
SELECT 
    CONCAT(S.HoSV, ' ', S.TenSV) AS HoTen,
    MAX(kq.Diem) AS DiemCaoNhat
FROM 
    SinhVien S
JOIN 
    Ketqua kq ON S.MaSV = kq.MaSV
GROUP BY 
    S.MaSV, S.HoSV, S.TenSV
	GO
--6.Thông tin của môn học có số tiết nhiều nhất: Tên môn học, số tiết
SELECT TOP 1 -- lấy 30% top 30 percent
    TenMH,
    Sotiet
FROM 
    MonHoc
ORDER BY 
    Sotiet DESC
GO
	
--7. cho biết học bổng cao nhất của từng khoa, gồ mã khoa, tên khoa, học bổng cao nhất
SELECT 
    K.MaKH,
    K.TenKH,
    MAX(S.HocBong) AS HocBongCaoNhat
FROM 
    Khoa K
JOIN 
    SinhVien S ON K.MaKH = S.MaKH
GROUP BY 
    K.MaKH, K.TenKH,HocBong
	GO
--8. cho biết điểm cao nhất của mỗi môn, gồm: tên môn, điểm cao nhất
SELECT 
    M.TenMH,
    MAX(kq.Diem) AS DiemCaoNhat
FROM 
    MonHoc M
JOIN 
    Ketqua kq ON M.MaMH = kq.MaMH
GROUP BY 
    M.TenMH
GO
--9.thống kê số sinh viên học của từng môn, thông tin có: mã môn, tên môn, số sinh viên đang học
select mh.MaMH, mh.TenMH, Count(kq.MaSV) AS Soinhviendanghoc
FROM 
    MonHoc mh
JOIN 
    Ketqua kq ON mh.MaMH = kq.MaMH
GROUP BY 
    mh.MaMH, mh.TenMH
Go
--10--
SELECT TOP 1 TenMH AS 'Tên môn',
Sotiet AS 'Số tiết',
TenSV AS 'Tên sinh viên',
DIEM AS 'Điểm'
FROM dbo.MonHoc JOIN dbo.Ketqua ON Ketqua.MaMH = MonHoc.MaMH JOIN dbo.SinhVien ON SinhVien.MaSV = Ketqua.MaSV
ORDER BY Diem DESC
GO
--11--
SELECT TOP 1
    K.MaKH,
    K.TenKH,
    COUNT(S.MaSV) AS TongSoSinhVien
FROM
    Khoa K
JOIN
    SinhVien S ON K.MaKH = S.MaKH
GROUP BY
    K.MaKH, K.TenKH
ORDER BY
    TongSoSinhVien DESC;
GO

--Bai 4: Sử dụng tham số trong truy vấn--
--1--
DECLARE @MaKH NVARCHAR(10)
SET @MaKH = 'K01'

SELECT
    SinhVien.MaSV AS'Mã sinh viên',
    SinhVien.TenSV AS 'Họ và tên sinh viên',
    SinhVien.Phai AS'Giới tính',
    Khoa.TenKH AS'Tên Khoa'
FROM
    dbo.SinhVien
JOIN
    dbo.Khoa ON SinhVien.MaKH =Khoa.MaKH
WHERE
    Khoa.MaKH = @MaKH;
GO

--2--
DECLARE @Diem FLOAT;
SET @Diem = 5.0

SELECT
    SinhVien.MaSV AS'Mã sinh viên',
    SinhVien.TenSV AS 'Họ và tên sinh viên',
    MonHoc.TenMH AS'Tên Môn',
    Ketqua.Diem AS'Điểm'
FROM
    dbo.SinhVien
JOIN
    dbo.Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN
	dbo.MonHoc ON Ketqua.MaMH = MonHoc.MaMH
WHERE
    MonHoc.TenMH = N'Cơ sở dữ liệu' AND Ketqua.Diem>@Diem;
GO

--3--
DECLARE @TenMH NVARCHAR(50);
SET @TenMH = N'Cơ sở dữ liệu';--Thay cơ sở dữ liệu = tên môn cần truy vấn

SELECT
    SinhVien.MaSV AS'Mã sinh viên',
    SinhVien.TenSV AS 'Họ và tên sinh viên',
	Khoa.TenKH AS 'Tên Khoa',
    MonHoc.TenMH AS'Tên Môn',
    Ketqua.Diem AS'Điểm'
FROM
    dbo.SinhVien
JOIN
    dbo.Khoa ON SinhVien.MaKH =Khoa.MaKH
JOIN
    dbo.Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN
	dbo.MonHoc ON Ketqua.MaMH = MonHoc.MaMH
WHERE 
	MonHoc.TenMH=@TenMH;
GO

--Bài 5--
--12--
SELECT	
	TenSV AS 'Tên sinh viên',
	TenKH AS 'Tên khoa',
	HocBong AS 'Học Bổng'
FROM
	dbo.SinhVien AS SV
JOIN
	dbo.Khoa AS KH ON SV.MaKH = KH.MaKH
WHERE
	HocBong = (
		SELECT MAX(HocBong)
		FROM dbo.SinhVien
		WHERE MAKH = SV.MaKH
	);
GO
--11--
SELECT
	SV.MaSV AS 'Mã sinh viên',
	SV.TenSV AS 'Tên sinh viên',
	MH.TenMH AS 'Tên Môn',
	KQ.Diem AS 'Điểm'
FROM
	dbo.SinhVien AS SV
JOIN
	dbo.Ketqua AS KQ ON SV.MaSV = KQ.MaSV
JOIN
	dbo.MonHoc AS MH ON KQ.MaMH = MH.MaMH
WHERE
	KQ.Diem = (
		SELECT MAX(Diem)
		FROM dbo.Ketqua
		WHERE MaMH = MH.MaMH
	);
GO
--7--
UPDATE SinhVien
SET HocBong = CASE
				WHEN Phai = 1 AND MaKH =N'AV' Then HocBong + 100000
				WHEN Phai = 0 AND MaKH =N'TH' Then HocBong + 150000
				ELSE HocBong + 50000
				END;
--8--
UPDATE Ketqua
SET Diem = CASE 
                WHEN sv.MaKH = 'AV' AND mh.TenMH = 'Cơ sở dữ liệu' THEN LEAST(Diem + 2, 10)
                WHEN sv.MaKH = 'TH' AND mh.TenMH = 'Cơ sở dữ liệu' THEN GREATEST(Diem - 1, 0)
                ELSE Diem
              END
FROM Ketqua kqt
JOIN SinhVien sv ON kqt.MaSV = sv.MaSV
JOIN MonHoc mh ON kqt.MaMH = mh.MaMH
WHERE mh.TenMH = 'Cơ sở dữ liệu';
select * from Ketqua