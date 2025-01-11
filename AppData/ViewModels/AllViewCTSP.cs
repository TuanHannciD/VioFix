using AppData.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppData.ViewModels
{
    public class AllViewCTSP
    {
        public Guid ID { get; set; }
        public string? MaCTSP { get; set; }
        public string TenSanPham { get; set; }
        public string TenAnh { get; set; }
        public Guid? IdKhuyenMai { get; set; }
        public string TenDungTich { get; set; }
        public string? MaDungTich { get; set; }
        public string TenNhomHuong { get; set; }
        public int SoLuong { get; set; }
        public int GiaGoc { get; set; }
        public int GiaKhuyenMai { get; set; }
        public DateTime NgayTao { get; set; }
        public int TrangThai { get; set; }
        
        
    }
}
