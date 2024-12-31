using AppData.Models;
using AppData.ViewModels.SanPham;

namespace AppAPI.IServices
{
    public interface IQlThuocTinhService
    {
        #region MauSac
        Task<PhongCach> AddPhongCach(string ten, string ma, int trangthai);
        Task<PhongCach> GetPhongCachById(Guid id);
        Task<bool> DeletePhongCach(Guid id);
        Task<PhongCach> UpdatePhongCach(Guid id, string ten, string ma, int trangthai);
        Task<List<PhongCach>> GetAllPhongCach();

        #endregion
        #region Kich Co
        Task<DungTich> AddDungTich(string ten, int trangthai);
        Task<DungTich> GetDungTichById(Guid id);
        Task<bool> DeleteDungTich(Guid id);
        Task<DungTich> UpdateDungTich(Guid id, string ten, int trangthai);
        Task<List<DungTich>> GetAllDungTich();

        #endregion
        #region ChatLieu
        Task<NhomHuong> AddNhomHuong(string ten, int trangthai);
        Task<NhomHuong> GetNhomHuongById(Guid id);
        Task<bool> DeleteNhomHuong(Guid id);
        Task<NhomHuong> UpdateNhomHuong(Guid id, string ten, int trangthai);
        Task<List<NhomHuong>> GetAllNhomHuong();

        #endregion
    }
}
