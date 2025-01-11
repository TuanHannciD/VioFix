using AppAPI.IServices;
using AppAPI.Services;
using AppData.Models;
using Microsoft.AspNetCore.Mvc;

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
            var tr = await service.GetAllDungTich();
            return Ok(tr);
        }
        [Route("TimKiemDungTich")]
        [HttpGet]
        public List<DungTich> GetAllDungTich(string? name)
        {
            return _dbContext.DungTichs.Where(v => v.Ten.Contains(name) || v.Ma.Contains(name)).ToList();
        }
        [Route("GetDungTichById")]
        [HttpGet]
        public async Task<IActionResult> GetDungTichById(Guid id)
        {
            var cl = await service.GetDungTichById(id);
            if (cl == null) return BadRequest();
            return Ok(cl);
        }
        [HttpPost("ThemDungTich")]
        public async Task<IActionResult> Add(string ten, string ma, int trangthai)
        {

            var tr = await service.AddDungTich(ten, ma, trangthai);
            if (tr == null)
            {
                return BadRequest();
            }
            return Ok(tr);
        }

        // PUT api/<NhanVienController>/5
        [HttpPut("{id}")]
        public async Task<IActionResult> Put(Guid id, string ten, string ma, int trangthai)
        {
            var bv = await service.UpdateDungTich(id, ten, ma, trangthai);
            if (bv == null)
            {
                return BadRequest();
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
