using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppData.ViewModels
{
    public class FilterData
    {
        public List<string>? priceRange { get; set; }
        public string? search { get; set; }
        public List<string>? loaiSP { get; set; }
        public List<Guid> dungTich { get; set; }
        public List<Guid>? nhomHuong { get; set; }
        public List<Guid>? phongCach { get; set; }
        public string? sortSP { get; set; }
        public int page { get; set; }
        public int pageSize { get; set; }
        public int? minPrice { get; set; }
        public int? maxPrice { get; set; }
        public string? loaiSPCha { get; set; }
        public string? loaiSPCon { get; set; }
    }
}
