using AppData.Models;

namespace AppView.PhanTrang
{
    public class PhanTrangPhanLoai
    {
        public IEnumerable<PhanLoai> listNv { get; set; } = new List<PhanLoai>();
        public PagingInfo PagingInfo { get; set; } = new PagingInfo();
    }
}
