using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DocGia_DTO
    {
        public string madocgia;
        public string hoten;
        public int gioitinh;
        public DateTime namsinh;
        public string diachi;
        public string sodienthoai;
        public string email;
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
        public string HoTen
        {
            get
            {
                return hoten;
            }
            set
            {
                hoten = value;
            }
        }
        public int GioiTinh
        {
            get
            {
                return gioitinh;
            }
            set
            {
                gioitinh = value;
            }
        }
        public DateTime NamSinh
        {
            get
            {
                return namsinh;
            }
            set
            {
                namsinh = value;
            }
        }
        public string DiaChi
        {
            get
            {
                return diachi;
            }
            set
            {
                diachi = value;
            }
        }
        public string SoDienThoai
        {
            get
            {
                return sodienthoai;
            }
            set
            {
                sodienthoai = value;
            }
        }
        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                email = value;
            }
        }
        public DocGia_DTO(string madocgia, string hoten, int gioitinh, DateTime namsinh, string diachi, string sodienthoai, string email)
        {
            this.madocgia = madocgia;
            this.hoten = hoten;
            this.gioitinh = gioitinh;
            this.namsinh = namsinh;
            this.diachi = diachi;
            this.sodienthoai = sodienthoai;
            this.email = email;
        }
        public DocGia_DTO() { }
    }
}
