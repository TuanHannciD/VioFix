using AppAPI.IServices;
using AppAPI.Services;
using AppData.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NhomHuongController : ControllerBase
    {
        private readonly IQlThuocTinhService service;
        private readonly AssignmentDBContext _dbContext;
        public NhomHuongController()
        {
            service = new QlThuocTinhService();
            _dbContext = new AssignmentDBContext();
        }
        #region NhomHuong
        [HttpGet("GetAllNhomHuong")]
        public async Task<IActionResult> GetAllNhomHuong()
        {
            var rn = await service.GetAllNhomHuong();
            return Ok(rn);
        }
        [Route("TimKiemNhomHuong")]
        [HttpGet]
        public async Task<IActionResult> GetAllNhomHuong(string? name)
        {
            var tr = _dbContext.NhomHuongs.Where(v => v.Ten.Contains(name)).ToList();
            return Ok(tr);
        }
        [Route("GetNhomHuongById")]
        [HttpGet]
        public async Task<IActionResult> GetNhomHuongById(Guid id)
        {
            var tr = await service.GetNhomHuongById(id);
            if (tr == null) return BadRequest();
            return Ok(tr);
        }
        [HttpPost("ThemNhomHuong")]
        public async Task<IActionResult> Add(string ten, int trangthai)
        {

            var nv = await service.AddNhomHuong(ten, trangthai);
            if (nv == null)
            {
                return BadRequest();
            }
            return Ok();
        }
        // PUT api/<NhanVienController>/5
        [HttpPut("{id}")]
        public async Task<IActionResult> Put(Guid id, string ten, int trangthai)
        {
            var bv = await service.UpdateNhomHuong(id, ten, trangthai);
            if (bv == null)
            {
                return BadRequest(); // Trả về BadRequest nếu tên trùng
            }

            return Ok(bv);

        }
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteNhomHuong(Guid id)
        {
            var loaiSP = await service.DeleteNhomHuong(id);
            return Ok(loaiSP);
        }
        #endregion
    }
}
