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
        public string TenPhongCach { get; set; }
        public List<DungTich> DungTichs { get; set; }
        public List<string> NhomHuongs {  get; set; }
        [Required]
        public string TenLoaiSPCha { get; set; }
        public string TenLoaiSPCon { get; set; }
    }
}
