using AppData.Models;
using AppData.ViewModels.SanPham;

namespace AppAPI.IServices
{
    public interface IQlThuocTinhService
    {
        #region PhanLoai
        Task<PhanLoai> AddPhanLoai(string ten, string ma, int trangthai);
        Task<PhanLoai> GetPhanLoaiById(Guid id);
        Task<bool> DeletePhanLoai(Guid id);
        Task<PhanLoai> UpdatePhanLoai(Guid id, string ten, string ma, int trangthai);
        Task<List<PhanLoai>> GetAllPhanLoai();

        #endregion
        #region DungTich
        Task<DungTich> AddDungTich(string ten, int trangthai);
        Task<DungTich> GetDungTichById(Guid id);
        Task<bool> DeleteDungTich(Guid id);
        Task<DungTich> UpdateDungTich(Guid id, string ten, int trangthai);
        Task<List<DungTich>> GetAllDungTich();

        #endregion
        #region LuuHuong
        Task<LuuHuong> AddLuuHuong(string ten, int trangthai);
        Task<LuuHuong> GetLuuHuongById(Guid id);
        Task<bool> DeleteLuuHuong(Guid id);
        Task<LuuHuong> UpdateLuuHuong(Guid id, string ten, int trangthai);
        Task<List<LuuHuong>> GetAllLuuHuong();

        #endregion
    }
}
