using AppAPI.IServices;
using AppAPI.Services;
using AppData.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LuuHuongController : ControllerBase
    {
        private readonly IQlThuocTinhService service;
        private readonly AssignmentDBContext _dbContext;
        public LuuHuongController()
        {
            service = new QlThuocTinhService();
            _dbContext = new AssignmentDBContext();
        }
        #region LuuHuong
        [HttpGet("GetAllLuuHuong")]
        public async Task<IActionResult> GetAllLuuHuong()
        {
            var cl = await service.GetAllLuuHuong();
            return Ok(cl);
        }
        [Route("TimKiemLuuHuong")]
        [HttpGet]
        public List<LuuHuong> GetAllLuuHuong(string? name)
        {
            return _dbContext.LuuHuongs.Where(v => v.Ten.Contains(name)).ToList();
        }
        [Route("GetLuuHuongById")]
        [HttpGet]
        public async Task<IActionResult> GetLuuHuongById(Guid id)
        {
            var cl = await service.GetLuuHuongById(id);
            if (cl == null) return BadRequest();
            return Ok(cl);
        }
        [HttpPost("ThemLuuHuong")]
        public async Task<IActionResult> Add(string ten, int trangthai)
        {

            var nv = await service.AddLuuHuong(ten, trangthai);
            if (nv == null)
            {
                return BadRequest();
            }
            return Ok(nv);
        }

        // PUT api/<NhanVienController>/5
        [HttpPut("{id}")]
        public async Task<IActionResult> Put(Guid id, string ten, int trangthai)
        {
            var bv = await service.UpdateLuuHuong(id, ten, trangthai);
            if (bv == null)
            {
                return BadRequest(); // Trả về BadRequest nếu tên trùng
            }

            return Ok(bv);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteLuuHuong(Guid id)
        {
            var loaiSP = await service.DeleteLuuHuong(id);
            return Ok(loaiSP);
        }
        #endregion
    }
}
