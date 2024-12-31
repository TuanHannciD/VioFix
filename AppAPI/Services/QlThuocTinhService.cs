using AppAPI.IServices;
using AppData.Models;
using Microsoft.EntityFrameworkCore;

namespace AppAPI.Services
{
    public class QlThuocTinhService : IQlThuocTinhService
    {
        private readonly
        AssignmentDBContext _dbContext;
        public QlThuocTinhService()
        {
            _dbContext = new AssignmentDBContext();
        }
        #region DungTich
        public async Task<DungTich> AddDungTich(string ten, int trangthai)
        {
            try
            {
                var existingColor = await _dbContext.DungTichs.FirstOrDefaultAsync(x => x.Ten.Trim().ToUpper() == ten.Trim().ToUpper());
                if (existingColor != null)
                {
                    return null;
                }
                DungTich kc = new DungTich()
                {
                    ID = Guid.NewGuid(),
                    Ten = ten,
                    TrangThai = 1
                };
                _dbContext.DungTichs.Add(kc);
                _dbContext.SaveChanges();
                return kc;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public async Task<bool> DeleteDungTich(Guid id)
        {
            try
            {
                var nv = await _dbContext.DungTichs.FirstOrDefaultAsync(nv => nv.ID == id);
                if (nv != null)
                {
                    _dbContext.DungTichs.Remove(nv);
                    _dbContext.SaveChanges();
                    return true;
                }
                return false;
            }
            catch (Exception) { throw; }
        }
        public async Task<DungTich> UpdateDungTich(Guid id, string ten, int trangthai)
        {
            try
            {
                var nv = await _dbContext.DungTichs.FirstOrDefaultAsync(x => x.ID == id);
                if (nv != null)
                {
                    var existingColor = await _dbContext.DungTichs.FirstOrDefaultAsync(x => x.Ten.Trim().ToUpper() == ten.Trim().ToUpper());
                    if (existingColor != null)
                    {
                        return null; // Trả về null để báo hiệu tên trùng
                    }
                    nv.Ten = ten;
                    nv.TrangThai = 1;
                    _dbContext.DungTichs.Update(nv);
                    _dbContext.SaveChanges();
                    return nv;
                }

                return null;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public async Task<List<DungTich>> GetAllDungTich()
        {
            try
            {
                return await _dbContext.DungTichs.OrderByDescending(x => x.TrangThai).ToListAsync();
            }
            catch (Exception) { throw; }
        }
        public async Task<DungTich> GetDungTichById(Guid id)
        {
            var nv = await _dbContext.DungTichs.FirstOrDefaultAsync(nv => nv.ID == id);
            return nv;
        }

        #endregion PhongCach
        public async Task<PhongCach> AddPhongCach(string ten, string ma, int trangthai)
        {
            try
            {
                var existingColor = await _dbContext.PhongCachs.FirstOrDefaultAsync(x => x.Ten.Trim().ToUpper() == ten.Trim().ToUpper());
                if (existingColor != null)
                {
                    return null;
                }
                bool isHasHash = ma.StartsWith("#");
                PhongCach kc = new PhongCach()
                {
                    ID = Guid.NewGuid(),
                    Ten = ten,
                    Ma = isHasHash ? ma : $"#{Uri.EscapeDataString(ma)}",
                    TrangThai = 1
                };
                _dbContext.PhongCachs.Add(kc);
                _dbContext.SaveChanges();
                return kc;
            }
            catch (Exception)
            {
                throw;
            }
        }
        public async Task<bool> DeletePhongCach(Guid id)
        {
            try
            {
                var nv = await _dbContext.PhongCachs.FirstOrDefaultAsync(nv => nv.ID == id);
                if (nv != null)
                {
                    _dbContext.PhongCachs.Remove(nv);
                    _dbContext.SaveChanges();
                    return true;
                }
                return false;
            }
            catch (Exception)
            {

                throw;

            }
        }

        public async Task<List<PhongCach>> GetAllPhongCach()
        {
            try
            {
                return await _dbContext.PhongCachs.OrderByDescending(x => x.TrangThai).ToListAsync();
            }
            catch (Exception)
            {

                throw;
            }
        }

        public async Task<PhongCach> GetPhongCachById(Guid id)
        {
            try
            {
                var nv = await _dbContext.PhongCachs.FirstOrDefaultAsync(nv => nv.ID == id);
                return nv;
            }
            catch (Exception) { throw; }
        }

        public async Task<PhongCach> UpdatePhongCach(Guid id, string ten, string ma, int trangthai)
        {
            try
            {
                var nv = await _dbContext.PhongCachs.FirstOrDefaultAsync(x => x.ID == id);
                if (nv != null)
                {
                    var existingColor = await _dbContext.PhongCachs.FirstOrDefaultAsync(x => x.Ten.Trim().ToUpper() == ten.Trim().ToUpper());
                    if (existingColor != null)
                    {
                        return null;
                    }
                    bool isHasHash = ma.StartsWith("#");
                    nv.Ten = ten;
                    nv.Ma = isHasHash ? ma : $"#{Uri.EscapeDataString(ma)}";
                    nv.TrangThai = 1;
                    _dbContext.PhongCachs.Update(nv);
                    _dbContext.SaveChanges();
                    return nv;
                }

                return null;

            }
            catch (Exception)
            {

                throw;
            }
        }
        #region chat lieu
        public async Task<NhomHuong> AddNhomHuong(string ten, int trangthai)
        {
            try
            {
                var existingColor = await _dbContext.NhomHuongs.FirstOrDefaultAsync(x => x.Ten.Trim().ToUpper() == ten.Trim().ToUpper());
                if (existingColor != null)
                {
                    return null;
                }
                NhomHuong kc = new NhomHuong()
                {
                    ID = Guid.NewGuid(),
                    Ten = ten,
                    TrangThai = 1
                };
                _dbContext.NhomHuongs.Add(kc);
                _dbContext.SaveChanges();
                return kc;

            }
            catch (Exception)
            {

                throw;

            }
        }

        public async Task<NhomHuong> GetNhomHuongById(Guid id)
        {
            try
            {
                var nv = await _dbContext.NhomHuongs.FirstOrDefaultAsync(nv => nv.ID == id);
                return nv;
            }
            catch (Exception)
            {

                throw;
            }
        }

        public async Task<bool> DeleteNhomHuong(Guid id)
        {

            try
            {
                var nv = await _dbContext.NhomHuongs.FirstOrDefaultAsync(nv => nv.ID == id);
                if (nv != null)
                {
                    _dbContext.NhomHuongs.Remove(nv);
                    _dbContext.SaveChanges();
                    return true;
                }
                return false;
            }
            catch (Exception)
            {

                throw;
            }
        }

        public async Task<NhomHuong> UpdateNhomHuong(Guid id, string ten, int trangthai)
        {

            try
            {
                var nv = await _dbContext.NhomHuongs.FirstOrDefaultAsync(x => x.ID == id);
                if (nv != null)
                {
                    var existingColor = await _dbContext.NhomHuongs.FirstOrDefaultAsync(x => x.Ten.Trim().ToUpper() == ten.Trim().ToUpper());
                    if (existingColor != null)
                    {
                        return null; // Trả về null để báo hiệu tên trùng
                    }
                    nv.Ten = ten;
                    nv.TrangThai = 1;
                    _dbContext.NhomHuongs.Update(nv);
                    _dbContext.SaveChanges();
                    return nv;
                }

                return null;
            }
            catch (Exception)
            {

                throw;
            }
        }

        public async Task<List<NhomHuong>> GetAllNhomHuong()
        {
            try
            {
                return await _dbContext.NhomHuongs.OrderByDescending(x => x.TrangThai).ToListAsync();
            }
            catch (Exception)
            {

                throw;

            }
        }
        #endregion
    }
}
