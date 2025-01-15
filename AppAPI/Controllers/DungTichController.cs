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
    public class DungTichController : ControllerBase
    {
        private readonly IQlThuocTinhService service;
        private readonly AssignmentDBContext _dbContext;
        public DungTichController()
        {
            service = new QlThuocTinhService();
            _dbContext = new AssignmentDBContext();
        }
        #region DungTich
        [HttpGet("GetAllDungTich")]
        public async Task<IActionResult> GetAllDungTich()
        {
            var rn = await service.GetAllDungTich();
            return Ok(rn);
        }
        [Route("TimKiemDungTich")]
        [HttpGet]
        public async Task<IActionResult> GetAllDungTich(string? name)
        {
            var tr = _dbContext.DungTichs.Where(v => v.Ten.Contains(name)).ToList();
            return Ok(tr);
        }
        [Route("GetDungTichById")]
        [HttpGet]
        public async Task<IActionResult> GetDungTichById(Guid id)
        {
            var tr = await service.GetDungTichById(id);
            if (tr == null) return BadRequest();
            return Ok(tr);
        }
        [HttpPost("ThemDungTich")]
        public async Task<IActionResult> Add(string ten, int trangthai)
        {

            var nv = await service.AddDungTich(ten, trangthai);
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
            var bv = await service.UpdateDungTich(id, ten, trangthai);
            if (bv == null)
            {
                return BadRequest(); // Trả về BadRequest nếu tên trùng
            }

            return Ok(bv);

        }
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteDungTich(Guid id)
        {
            var loaiSP = await service.DeleteDungTich(id);
            return Ok(loaiSP);
        }
        #endregion
    }
}
