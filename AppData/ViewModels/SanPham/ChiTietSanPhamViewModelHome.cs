﻿using AppData.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppData.ViewModels.SanPham
{
    public class ChiTietSanPhamViewModelHome
    {
        public Guid IDSanPham { get; set; }
        public string Ten { get; set; }
        public float SoSao { get; set; }
        public int SoDanhGia { get; set; }
        public int sosaoPercent { get; set; }
        public List<GiaTriViewModel> PhanLoais { get; set; }
        public List<AnhRequest> Anhs { get; set; }
       // thêm các thuộc tính hiển thị ở đây
        public List<GiaTriViewModel> DungTichs { get; set; }
        public List<ChiTietSanPhamViewModel> ChiTietSanPhams { get; set; }
        public string MoTa { get; set; }
        public List<DanhGiaViewModel> LSTDanhGia { get; set;}
        public List<SanPhamTuongTuViewModel> LSTSPTuongTu { get; set; }
    }
}
