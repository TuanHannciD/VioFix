using AppAPI.IServices;
using AppAPI.Services;
using AppData.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ChatLieuController : ControllerBase
    {
        private readonly IQlThuocTinhService service;
        private readonly AssignmentDBContext _dbContext;
        public ChatLieuController()
        {
            service = new QlThuocTinhService();
            _dbContext = new AssignmentDBContext();
        }
        #region KichCo
        [HttpGet("GetAllNhomHuong")]
        public async Task<IActionResult> GetAllChatLieu()
        {
            var cl = await service.GetAllNhomHuong();
            return Ok(cl);
        }
        [Route("TimKiemNhomHuong")]
        [HttpGet]
        public List<NhomHuong> GetAllChatLieu(string? name)
        {
            return _dbContext.NhomHuongs.Where(v => v.Ten.Contains(name)).ToList();
        }
        [Route("GetNhomHuongById")]
        [HttpGet]
        public async Task<IActionResult> GetChatLieuById(Guid id)
        {
            var cl = await service.GetNhomHuongById(id);
            if (cl == null) return BadRequest();
            return Ok(cl);
        }
        [HttpPost("ThemNhomHuong")]
        public async Task<IActionResult> Add(string ten, int trangthai)
        {

            var nv = await service.AddNhomHuong(ten, trangthai);
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
