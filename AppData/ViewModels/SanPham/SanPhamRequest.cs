using AppData.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppData.ViewModels.SanPham
{
    public class SanPhamRequest
    {
        [Required]
        public string Ten { get; set; }
        public string? MoTa { get; set; }
        [Required]
        public string TenLuuHuong { get; set; }
        public List<PhanLoai> PhanLoais { get; set; }
        public List<string> DungTichs {  get; set; }
        [Required]
        public string TenLoaiSPCha { get; set; }
        public string TenLoaiSPCon { get; set; }
    }

}
