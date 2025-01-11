using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppData.ViewModels.SanPham
{
    public class GioHangRequest
    {
        public Guid IDChiTietSanPham { get; set; }
        public int SoLuong { get; set; }
        public int? DonGia { get; set; }
        public string? Ten { get; set; }
        public string? DungTich { get; set; }
        public string? NhomHuong { get; set; }
        public string? Anh { get; set; }
        public bool? HetHang { get; set; }
    }
}
