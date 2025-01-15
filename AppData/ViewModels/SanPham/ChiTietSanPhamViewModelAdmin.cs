using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppData.ViewModels.SanPham
{
    public class ChiTietSanPhamViewModelAdmin
    {
        public Guid ID { get; set; }
        public string Ma { get; set; }
        public string TenPhanLoai { get; set; }
        public string MaPhanLoai { get; set; }
        public string TenDungTich { get; set; }
        public int SoLuong { get; set; }
        public int GiaGoc { get; set; }
        public int GiaBan { get; set; }
        public Guid? IDKhuyenMai { get; set; }
        public string? GiaTriKhuyenMai { get; set; }
        public int TrangThai { get; set; }
    }
}
