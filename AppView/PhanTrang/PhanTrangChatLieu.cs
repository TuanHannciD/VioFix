using AppData.Models;

namespace AppView.PhanTrang
{
    public class PhanTrangChatLieu
    {
        public IEnumerable<NhomHuong> listNv { get; set; } = new List<NhomHuong>();
        public PagingInfo PagingInfo { get; set; } = new PagingInfo();
    }
}
