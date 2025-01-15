using AppData.Models;

namespace AppView.PhanTrang
{
    public class PhanTrangLuuHuong
    {
        public IEnumerable<LuuHuong> listNv { get; set; } = new List<LuuHuong>();
        public PagingInfo PagingInfo { get; set; } = new PagingInfo();
    }
}
