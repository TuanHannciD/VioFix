using AppData.Models;

namespace AppView.PhanTrang
{
    public class PhanTrangDungTich
    {
        public IEnumerable<DungTich> listNv { get; set; } = new List<DungTich>();
        public PagingInfo PagingInfo { get; set; } = new PagingInfo();
    }
}
