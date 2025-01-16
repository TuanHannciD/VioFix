using AppData.Models;
using AppData.ViewModels;
using AppData.ViewModels.SanPham;
using AppView.PhanTrang;
using DocumentFormat.OpenXml.Office2010.Excel;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Net;
using System.Net.Http;
using System.Text;

namespace AppView.Controllers
{
    public class PhanLoaiController : Controller
    {
        private readonly HttpClient _httpClient;
        private readonly AssignmentDBContext dBContext;
        public PhanLoaiController()
        {
            _httpClient = new HttpClient();
            _httpClient.BaseAddress = new Uri("https://localhost:7095/api/");
            dBContext = new AssignmentDBContext();
        }
        public int PageSize = 8;

        public async Task<IActionResult> Show(int ProductPage = 1)
        {
            try
            {
                string apiUrl = $"https://localhost:7095/api/PhanLoai/GetAllPhanLoai";
                var response = await _httpClient.GetAsync(apiUrl);
                string apiData = await response.Content.ReadAsStringAsync();
                var users = JsonConvert.DeserializeObject<List<PhanLoai>>(apiData);
                return View(new PhanTrangPhanLoai
                {
                    listNv = users
                            .Skip((ProductPage - 1) * PageSize).Take(PageSize),
                    PagingInfo = new PagingInfo
                    {
                        ItemsPerPage = PageSize,
                        CurrentPage = ProductPage,
                        TotalItems = users.Count()
                    }
                });
            }
            catch { return Redirect("https://localhost:5001/"); }
        }

        [HttpGet]
        public async Task<IActionResult> SearchTheoTen(string? Ten, int ProductPage = 1)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(Ten))
                {
                    ViewData["SearchError"] = "Vui lòng nhập tên để tìm kiếm";
                    return RedirectToAction("Show");
                }
                string apiUrl = $"https://localhost:7095/api/PhanLoai/TimKiemPhanLoai?name={Ten}";
                var response = await _httpClient.GetAsync(apiUrl);
                string apiData = await response.Content.ReadAsStringAsync();
                var users = JsonConvert.DeserializeObject<List<PhanLoai>>(apiData);
                if (users.Count == 0)
                {
                    ViewData["SearchError"] = "Không tìm thấy kết quả phù hợp";
                }
                return View("Show", new PhanTrangPhanLoai
                {
                    listNv = users
                             .Skip((ProductPage - 1) * PageSize).Take(PageSize),
                    PagingInfo = new PagingInfo
                    {
                        ItemsPerPage = PageSize,
                        CurrentPage = ProductPage,
                        TotalItems = users.Count()
                    }
                });
            }
            catch { return Redirect("https://localhost:5001/"); }
        }

        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(PhanLoai ms)
        {
            try
            {
                ms.TrangThai = 1;

                // Kiểm tra tên và mã
                if (string.IsNullOrEmpty(ms.Ten))
                {
                    ViewBag.ErrorMessage = "Vui lòng nhập tên phân loại!";
                    return View();
                }

                if (string.IsNullOrWhiteSpace(ms.Ma))
                {
                    ViewBag.ErrorMessage = "Mã không được để trống!";
                    return View();
                }

                // Loại bỏ khoảng trắng dư thừa
                ms.Ma = ms.Ma.Trim();

                // Tạo URL không mã hóa
                string apiUrl = $"https://localhost:7095/api/PhanLoai/ThemPhanLoai?ten={ms.Ten}&ma={ms.Ma}&trangthai={ms.TrangThai}";

                // Gửi request
                var response = await _httpClient.PostAsync(apiUrl, null);

                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("Show");
                }
                else if (response.StatusCode == HttpStatusCode.BadRequest)
                {
                    ViewBag.ErrorMessage = "Dữ liệu đã có trong danh sách.";
                    return View();
                }
                else
                {
                    ViewBag.ErrorMessage = "Đã xảy ra lỗi không xác định. Vui lòng thử lại!";
                    return View();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
                return Redirect("https://localhost:5001/");
            }
            catch { return Redirect("https://localhost:5001/"); }
        }




        [HttpGet]
        public async Task<IActionResult> Details(Guid id)
        {
            string apiUrl = $"https://localhost:7095/api/PhanLoai/GetPhanLoaiById?id={id}";
            var response = await _httpClient.GetAsync(apiUrl);
            string apiData = await response.Content.ReadAsStringAsync();

            var user = JsonConvert.DeserializeObject<PhanLoai>(apiData);
            return View(user);
        }
        [HttpGet]
        public IActionResult Edit(Guid id)
        {
            try
            {
                string apiUrl = $"https://localhost:7095/api/PhanLoai/GetPhanLoaiById?id={id}";
                var response = _httpClient.GetAsync(apiUrl).Result;
                var apiData = response.Content.ReadAsStringAsync().Result;
                var user = JsonConvert.DeserializeObject<PhanLoai>(apiData);
                return View(user);
            }
            catch
            {
                return Redirect("https://localhost:5001/");
            }
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Guid id, PhanLoai ms)
        {

            try
            {
                ms.TrangThai = 1;

                if (string.IsNullOrEmpty(ms.Ten))
                {
                    ViewBag.ErrorMessage = "Vui lòng nhập tên phân loại!";
                    return View();
                }
                else
                {
                    
                    string apiUrl = $"https://localhost:7095/api/PhanLoai/{id}?ten={ms.Ten}&ma={ms.Ma}&trangthai={ms.TrangThai}";
                    var reponsen = await _httpClient.PutAsync(apiUrl, null);
                    if (reponsen.IsSuccessStatusCode)
                    {
                        return RedirectToAction("Show");
                    }
                    ViewBag.ErrorMessage = "Đã thay đổi và có trong danh sách";
                    return View();
                }
            }
            catch { return Redirect("https://localhost:5001/"); }
        }
        public async Task<IActionResult> Delete(Guid id)
        {
            string apiUrl = $"https://localhost:7095/api/PhanLoai/{id}";
            var reposen = await _httpClient.DeleteAsync(apiUrl);
            if (reposen.IsSuccessStatusCode)
            {
                return RedirectToAction("Show");
            }
            return RedirectToAction("Show");
        }
        public async Task<IActionResult> Sua(Guid id)
        {
            try
            {
                var timkiem = dBContext.PhanLoais.FirstOrDefault(x => x.ID == id);
                if (timkiem != null)
                {
                    timkiem.TrangThai = timkiem.TrangThai == 0 ? 1 : 0;
                    dBContext.PhanLoais.Update(timkiem);
                    dBContext.SaveChanges();
                    return RedirectToAction("Show");
                }
                else
                {
                    return View();
                }
            }
            catch { return Redirect("https://localhost:5001/"); }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Next(int ProductPage = 1)
        {
            ProductPage++;
            return await Show(ProductPage);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Previous(int ProductPage = 1)
        {
            ProductPage--;
            return await Show(ProductPage);
        }
    }
}
