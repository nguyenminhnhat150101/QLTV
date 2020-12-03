
--drop database QLThuVien
create database QLThuVien
go
use QLThuVien
go

-----
--drop table DOCGIA
create table DOCGIA
(
	MaDocGia nchar(10),
	HoTen nchar(30),
	GioiTinh nchar(5),
	NamSinh datetime,
	DiaChi nchar(100),
	SoDienThoai nchar(20),
	Email nchar(100),
	PRIMARY KEY (MaDocGia),
)
--drop table SACH
create table SACH
(
	MaSach nchar(10),
	TenSach nvarchar(50),
	MaTacGia nchar(10),
	MaTheLoai nchar(10),
	NhaXuatBan nchar(50),
	TinhTrang nchar(10),
	Hinh image,
	FileSach nchar(100),	
	GhiChu nvarchar(200),
	PRIMARY KEY (MaSach),
)
--drop table PHIEUMUON
create table PHIEUMUON
(
	MaPhieu nchar(10),
	MaDocGia nchar(10),
	MaNhanVien nchar(30),
	NgayMuon datetime,
	NgayPhaiTra datetime,
	TrangThai nchar(10),
	PRIMARY KEY (MaPhieu),
)
--drop table CHITIETPHIEUMUON
create table CHITIETPHIEUMUON
(
	MaPhieu nchar(10),
	MaSach nchar(10),
	SoLuong int,
	PRIMARY KEY (MaPhieu,MaSach),
)
--drop table TacGia
create table TacGia
(
	MaTacGia nchar(10),
	TenTacGia nchar(30),
	PRIMARY KEY (MaTacGia),
)
--drop table TheLoai
create table TheLoai
(
	MaTheLoai nchar(10),
	TenTheLoai nchar(30),
	PRIMARY KEY (MaTheLoai),
)

create table NhanVien
(
	MaNhanVien nchar(30) PRIMARY KEY,
	SDT nchar(20),
	HoTen nvarchar(50),
)
create table TaiKhoan
(
	TaiKhoan nchar(30) PRIMARY KEY,
	MatKhau nchar(30),
)
go
alter table PHIEUMUON add constraint FK_PHIEUMUON_NhanVien foreign key (MaNhanVien) references NhanVien (MaNhanVien)
alter table PHIEUMUON add constraint FK_PHIEUMUON_DOCGIA foreign key (MaDocGia) references DOCGIA (MaDocGia)
alter table Sach add constraint FK_SACH_THELOAI foreign key (MaTheLoai) references TheLoai (MaTheLoai)
alter table Sach add constraint FK_SACH_TacGia foreign key (MaTacGia) references TACGIA (MaTacGia)
alter table CHITIETPHIEUMUON add constraint FK_CHITIETPHIEUMUON_PHIEUMUON foreign key (MaPhieu) references PhieuMuon (MaPhieu)
alter table CHITIETPHIEUMUON add constraint FK_CHITIETPHIEUMUON_Sach foreign key (MaSach) references Sach (MaSach)

