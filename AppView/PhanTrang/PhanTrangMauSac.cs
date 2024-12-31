using AppData.Models;

namespace AppView.PhanTrang
{
    public class PhanTrangMauSac
    {
        public IEnumerable<PhongCach> listNv { get; set; } = new List<PhongCach>();
        public PagingInfo PagingInfo { get; set; } = new PagingInfo();
    }
}
