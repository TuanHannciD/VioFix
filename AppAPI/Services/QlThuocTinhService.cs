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

        #endregion PhanLoai
        public async Task<PhanLoai> AddPhanLoai(string ten, string ma, int trangthai)
        {
            try
            {
                var existingColor = await _dbContext.PhanLoais.FirstOrDefaultAsync(x => x.Ten.Trim().ToUpper() == ten.Trim().ToUpper());
                if (existingColor != null)
                {
                    return null;
                }
                
                PhanLoai kc = new PhanLoai()
                {
                    ID = Guid.NewGuid(),
                    Ten = ten,
                    Ma = ma,
                    TrangThai = 1
                };
                _dbContext.PhanLoais.Add(kc);
                _dbContext.SaveChanges();
                return kc;
            }
            catch (Exception)
            {
                throw;
            }
        }
        public async Task<bool> DeletePhanLoai(Guid id)
        {
            try
            {
                var nv = await _dbContext.PhanLoais.FirstOrDefaultAsync(nv => nv.ID == id);
                if (nv != null)
                {
                    _dbContext.PhanLoais.Remove(nv);
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

        public async Task<List<PhanLoai>> GetAllPhanLoai()
        {
            try
            {
                return await _dbContext.PhanLoais.OrderByDescending(x => x.TrangThai).ToListAsync();
            }
            catch (Exception)
            {

                throw;
            }
        }

        public async Task<PhanLoai> GetPhanLoaiById(Guid id)
        {
            try
            {
                var nv = await _dbContext.PhanLoais.FirstOrDefaultAsync(nv => nv.ID == id);
                return nv;
            }
            catch (Exception) { throw; }
        }

        public async Task<PhanLoai> UpdatePhanLoai(Guid id, string ten, string ma, int trangthai)
        {
            try
            {
                var nv = await _dbContext.PhanLoais.FirstOrDefaultAsync(x => x.ID == id);
                if (nv != null)
                {
                    var existingColor = await _dbContext.PhanLoais.FirstOrDefaultAsync(x => x.Ten.Trim().ToUpper() == ten.Trim().ToUpper());
                    if (existingColor == null)
                    {
                        return null;
                    }
                    nv.Ten = ten;
                    nv.Ma = ma;
                    nv.TrangThai = 1;
                    _dbContext.PhanLoais.Update(nv);
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
        #region LuuHuong
        public async Task<LuuHuong> AddLuuHuong(string ten, int trangthai)
        {
            try
            {
                var existingColor = await _dbContext.LuuHuongs.FirstOrDefaultAsync(x => x.Ten.Trim().ToUpper() == ten.Trim().ToUpper());
                if (existingColor != null)
                {
                    return null;
                }
                LuuHuong kc = new LuuHuong()
                {
                    ID = Guid.NewGuid(),
                    Ten = ten,
                    TrangThai = 1
                };
                _dbContext.LuuHuongs.Add(kc);
                _dbContext.SaveChanges();
                return kc;

            }
            catch (Exception)
            {

                throw;

            }
        }

        public async Task<LuuHuong> GetLuuHuongById(Guid id)
        {
            try
            {
                var nv = await _dbContext.LuuHuongs.FirstOrDefaultAsync(nv => nv.ID == id);
                return nv;
            }
            catch (Exception)
            {

                throw;
            }
        }

        public async Task<bool> DeleteLuuHuong(Guid id)
        {

            try
            {
                var nv = await _dbContext.LuuHuongs.FirstOrDefaultAsync(nv => nv.ID == id);
                if (nv != null)
                {
                    _dbContext.LuuHuongs.Remove(nv);
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

        public async Task<LuuHuong> UpdateLuuHuong(Guid id, string ten, int trangthai)
        {

            try
            {
                var nv = await _dbContext.LuuHuongs.FirstOrDefaultAsync(x => x.ID == id);
                if (nv != null)
                {
                    var existingColor = await _dbContext.LuuHuongs.FirstOrDefaultAsync(x => x.Ten.Trim().ToUpper() == ten.Trim().ToUpper());
                    if (existingColor != null)
                    {
                        return null; // Trả về null để báo hiệu tên trùng
                    }
                    nv.Ten = ten;
                    nv.TrangThai = 1;
                    _dbContext.LuuHuongs.Update(nv);
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

        public async Task<List<LuuHuong>> GetAllLuuHuong()
        {
            try
            {
                return await _dbContext.LuuHuongs.OrderByDescending(x => x.TrangThai).ToListAsync();
            }
            catch (Exception)
            {

                throw;

            }
        }
        #endregion
    }
}
