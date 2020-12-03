using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    class PhieuMuon_DTO
    {
        public string maphieu;
        public string madocgia;
        public string manhanvien;
        public DateTime ngaymuon;
        public DateTime ngayphaitra;
        public string trangthai;

        public string MaPhieu
        {
            get
            {
                return maphieu;
            }
            set
            {
                maphieu = value;
            }
        }
        public string MaDocGia
        {
            get
            {
                return madocgia;
            }
            set
            {
                madocgia = value;
            }
        }
        public string MaNhanVien
        {
            get
            {
                return manhanvien;
            }
            set
            {
                manhanvien = value;
            }
        }
        public DateTime NgayMuon
        {
            get
            {
                return ngaymuon;
            }
            set
            {
                ngaymuon = value;
            }
        }
        public DateTime NgayPhaiTra
        {
            get
            {
                return ngayphaitra;
            }
            set
            {
                ngayphaitra = value;
            }
        }
        public string TrangThai
        {
            get
            {
                return trangthai;
            }
            set
            {
                trangthai = value;
            }
        }

    }

}
