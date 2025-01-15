using AppAPI.IServices;
using AppAPI.Services;
using AppData.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PhanLoaiController : ControllerBase
    {
        private readonly IQlThuocTinhService service;
        private readonly AssignmentDBContext _dbContext;
        public PhanLoaiController()
        {
            service = new QlThuocTinhService();
            _dbContext = new AssignmentDBContext();
        }
        #region PhanLoai
        [HttpGet("GetAllPhanLoai")]
        public async Task<IActionResult> GetAllPhanLoai()
        {
            var tr = await service.GetAllPhanLoai();
            return Ok(tr);
        }
        [Route("TimKiemPhanLoai")]
        [HttpGet]
        public List<PhanLoai> GetAllPhanLoai(string? name)
        {
            return _dbContext.PhanLoais.Where(v => v.Ten.Contains(name) || v.Ma.Contains(name)).ToList();
        }
        [Route("GetPhanLoaiById")]
        [HttpGet]
        public async Task<IActionResult> GetPhanLoaiById(Guid id)
        {
            var cl = await service.GetPhanLoaiById(id);
            if (cl == null) return BadRequest();
            return Ok(cl);
        }
        [HttpPost("ThemPhanLoai")]
        public async Task<IActionResult> Add(string ten, string ma, int trangthai)
        {

            var tr = await service.AddPhanLoai(ten, ma, trangthai);
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
            var bv = await service.UpdatePhanLoai(id, ten, ma, trangthai);
            if (bv == null)
            {
                return BadRequest();
            }

            return Ok(bv);

        }
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePhanLoai(Guid id)
        {
            var loaiSP = await service.DeletePhanLoai(id);
            return Ok(loaiSP);
        }
        #endregion



    }
}
