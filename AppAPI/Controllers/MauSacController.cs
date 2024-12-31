using AppAPI.IServices;
using AppAPI.Services;
using AppData.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PhongCachController : ControllerBase
    {
        private readonly IQlThuocTinhService service;
        private readonly AssignmentDBContext _dbContext;
        public PhongCachController()
        {
            service = new QlThuocTinhService();
            _dbContext = new AssignmentDBContext();
        }
        #region PhongCach
        [HttpGet("GetAllPhongCach")]
        public async Task<IActionResult> GetAllPhongCach()
        {
            var tr = await service.GetAllPhongCach();
            return Ok(tr);
        }
        [Route("TimKiemPhongCach")]
        [HttpGet]
        public List<PhongCach> GetAllPhongCach(string? name)
        {
            return _dbContext.PhongCachs.Where(v => v.Ten.Contains(name) || v.Ma.Contains(name)).ToList();
        }
        [Route("GetPhongCachById")]
        [HttpGet]
        public async Task<IActionResult> GetPhongCachById(Guid id)
        {
            var cl = await service.GetPhongCachById(id);
            if (cl == null) return BadRequest();
            return Ok(cl);
        }
        [HttpPost("ThemPhongCach")]
        public async Task<IActionResult> Add(string ten, string ma, int trangthai)
        {

            var tr = await service.AddPhongCach(ten, ma, trangthai);
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
            var bv = await service.UpdatePhongCach(id, ten, ma, trangthai);
            if (bv == null)
            {
                return BadRequest();
            }

            return Ok(bv);

        }
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePhongCach(Guid id)
        {
            var loaiSP = await service.DeletePhongCach(id);
            return Ok(loaiSP);
        }
        #endregion



    }
}
