using AppData.Models;

namespace AppView.PhanTrang
{
    public class PhanTrangKichCo
    {
        public IEnumerable<DungTich> listNv { get; set; } = new List<DungTich>();
        public PagingInfo PagingInfo { get; set; } = new PagingInfo();
    }
}
