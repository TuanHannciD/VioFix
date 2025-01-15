using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppData.ViewModels
{
    public class DanhGiaViewModel
    {
        public Guid ID { get; set; }
        public string BinhLuan { get; set; }
        public int? Sao { get; set; }
        public int TrangThai { get; set; }
        public string LuuHuong { get; set; }
        public string PhanLoai { get; set; }
        public string DungTich { get; set; }
        public string TenKH { get; set; }
        public DateTime? NgayDanhGia { get; set; }
    }
}
