using AppData.Models;
using AppData.ViewModels;
using AppData.ViewModels.SanPham;
using AppView.IServices;
using DocumentFormat.OpenXml.Office2010.Excel;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using QRCoder;
using System.Drawing;
using System.Drawing.Imaging;

namespace AppView.Controllers
{
    public class AdminController : Controller
    {
        private readonly HttpClient _httpClient;
        private readonly IWebHostEnvironment _hostEnvironment;
        private readonly IFileService _iFileService;
        public AdminController(IWebHostEnvironment hostEnvironment, IFileService iFileService)
        {
            _httpClient = new HttpClient();
            _httpClient.BaseAddress = new Uri("https://localhost:7095/api/");
            _hostEnvironment = hostEnvironment;
            _iFileService = iFileService;
        }
        public IActionResult HomePageAdmin(Guid id)
        {
            return RedirectToAction("BanHang", "BanHangTaiQuay");
        }
        public IActionResult ProductManager()
        {
            return View();
        }
        [HttpGet]
        public JsonResult ShowProduct(FilterData filter)
        {
            try
            {
                var response = _httpClient.GetAsync(_httpClient.BaseAddress + "SanPham/GetAllSanPhamAdmin").Result;
                List<SanPhamViewModelAdmin> lstSanpham = new List<SanPhamViewModelAdmin>();
                if (response.IsSuccessStatusCode)
                {
                    lstSanpham = JsonConvert.DeserializeObject<List<SanPhamViewModelAdmin>>(response.Content.ReadAsStringAsync().Result);
                    //Sắp xếp
                    if (filter.sortSP == "1")
                    {
                        lstSanpham = lstSanpham.OrderBy(x => Convert.ToInt32(x.Ma.Substring(2))).ToList();
                    }
                    else if (filter.sortSP == "6")
                    {
                        lstSanpham = lstSanpham.OrderBy(x => x.Ten).ToList();
                    }
                    else if (filter.sortSP == "2")
                    {
                        lstSanpham = lstSanpham.OrderBy(x => x.GiaBan).ToList();
                    }
                    else if (filter.sortSP == "3")
                    {
                        lstSanpham = lstSanpham.OrderByDescending(x => x.GiaBan).ToList();
                    }
                    else if (filter.sortSP == "4")
                    {
                        lstSanpham = lstSanpham.OrderBy(x => x.SoLuong).ToList();
                    }
                    else if (filter.sortSP == "5")
                    {
                        lstSanpham = lstSanpham.OrderByDescending(x => x.SoLuong).ToList();
                    }
                    //Tìm kiếm theo tên sản phẩm
                    if (filter.search != null)
                    {
                        lstSanpham = lstSanpham.Where(x => x.Ten.ToLower().Contains(filter.search.ToLower())).ToList();
                    }
                    //Tìm kiếm theo giá
                    if (filter.minPrice != null)
                    {
                        lstSanpham = lstSanpham.Where(x => x.GiaBan >= filter.minPrice).ToList();
                    }
                    if (filter.maxPrice != null)
                    {
                        lstSanpham = lstSanpham.Where(x => x.GiaBan <= filter.maxPrice).ToList();
                    }
                    //Tìm kiếm theo loại sản phẩm
                    if (filter.loaiSPCha != "all")
                    {
                        lstSanpham = lstSanpham.Where(x => x.LoaiSPCha == filter.loaiSPCha).ToList();
                        if (filter.loaiSPCon != "all")
                        {
                            lstSanpham = lstSanpham.Where(x => x.LoaiSPCon == filter.loaiSPCon).ToList();
                        }
                    }
                    var model = lstSanpham.Skip((filter.page - 1) * filter.pageSize).Take(filter.pageSize).ToList();
                    return Json(new
                    {
                        data = model,
                        total = lstSanpham.Count,
                        status = true
                    });
                }
                else return Json(new { status = false });
            }
            catch
            {
                return Json(new { status = false });
            }

        }
        [HttpPost]
        public JsonResult UpdateTrangThaiSanPham(string idSanPham, int trangThai)
        {
            try
            {
                var response = _httpClient.DeleteAsync(_httpClient.BaseAddress + "SanPham/UpdateTrangThaiSanPham?id=" + idSanPham + "&trangThai=" + trangThai).Result;
                if (response.IsSuccessStatusCode)
                {
                    return Json(new { KetQua = trangThai, Status = true });
                }
                else return Json(new { Status = false });
            }
            catch
            {
                return Json(new { Status = false });
            }
        }
        public JsonResult GetLoaiSPCha()
        {
            try
            {
                HttpResponseMessage response = _httpClient.GetAsync(_httpClient.BaseAddress + "SanPham/GetAllLoaiSPCha").Result;
                var loaiSP = JsonConvert.DeserializeObject<List<LoaiSP>>(response.Content.ReadAsStringAsync().Result);
                return Json(loaiSP);
            }
            catch
            {
                return Json(new List<LoaiSP>());
            }
        }
        public JsonResult GetAllPhanLoai()
        {
            try
            {
                HttpResponseMessage response = _httpClient.GetAsync(_httpClient.BaseAddress + "SanPham/GetAllPhanLoai").Result;
                var PhanLoai = JsonConvert.DeserializeObject<List<PhanLoai>>(response.Content.ReadAsStringAsync().Result);
                return Json(PhanLoai);
            }
            catch
            {
                return Json(new List<PhanLoai>());
            }
        }
        public JsonResult GetAllDungTich()
        {
            try
            {
                HttpResponseMessage response = _httpClient.GetAsync(_httpClient.BaseAddress + "SanPham/GetAllDungTich").Result;
                var DungTich = JsonConvert.DeserializeObject<List<DungTich>>(response.Content.ReadAsStringAsync().Result);
                return Json(DungTich);
            }
            catch
            {
                return Json(new List<DungTich>());
            }

        }
        public JsonResult GetAllLuuHuong()
        {
            try
            {
                HttpResponseMessage response = _httpClient.GetAsync(_httpClient.BaseAddress + "SanPham/GetAllLuuHuong").Result;
                var LuuHuong = JsonConvert.DeserializeObject<List<LuuHuong>>(response.Content.ReadAsStringAsync().Result);
                return Json(LuuHuong);
            }
            catch
            {
                return Json(new List<LuuHuong>());
            }
        }
        public JsonResult GetLoaiSPCon(string tenLoaiSPCha)
        {
            try
            {
                string? response = _httpClient.GetAsync(_httpClient.BaseAddress + "SanPham/GetAllLoaiSPCon?tenLoaiSPCha=" + tenLoaiSPCha).Result.Content.ReadAsStringAsync().Result;
                if (response != null)
                {
                    var loaiSP = JsonConvert.DeserializeObject<List<LoaiSP>>(response);
                    return Json(new { KetQua = loaiSP, TrangThai = true });
                }
                else return Json(new { TrangThai = false });
            }
            catch
            {
                return Json(new { TrangThai = false });
            }
        }
        [HttpGet]
        public IActionResult AddSanPham()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> AddSanPham(SanPhamRequest sanPhamRequest)
        {
            try
            {
                //Xóa màu deleted           
                sanPhamRequest.PhanLoais.RemoveAll(XoaMau);
                //Xoá size deleted
                sanPhamRequest.DungTichs.RemoveAll(XoaSize);
                //Gọi API
                HttpResponseMessage response = _httpClient.PostAsJsonAsync(_httpClient.BaseAddress + "SanPham/AddSanPham", sanPhamRequest).Result;
                if (response.IsSuccessStatusCode)
                {
                    var temp = response.Content.ReadAsStringAsync().Result;
                    var chiTietSanPham = JsonConvert.DeserializeObject<ChiTietSanPhamUpdateRequest>(temp);
                    if(!chiTietSanPham.ChiTietSanPhams.Any() || chiTietSanPham.ChiTietSanPhams == null)
                    {
                        return RedirectToAction("ProductManager");
                    }
                    TempData["UpdateChiTietSanPham"] = temp;
                    TempData["PhanLoai"] = JsonConvert.SerializeObject(sanPhamRequest.PhanLoais);
                    return RedirectToAction("UpdateChiTietSanPham");
                }
                else return BadRequest();
            }
            catch { return RedirectToAction("ProductManager"); }
        }
        private static bool XoaMau(PhanLoai mau)
        {
            return mau.Ten == "Deleted" || String.IsNullOrEmpty(mau.Ten);
        }
        private static bool XoaSize(string size)
        {
            return size == "Deleted" || String.IsNullOrEmpty(size);
        }
        [HttpGet]
        public IActionResult ProductDetail(string idSanPham)
        {
            TempData["IDSanPham"] = idSanPham;
            return View();

        }
        [HttpGet]
        public JsonResult ShowProductDetail(string id, int page, int pageSize, string? ma, int? minPrice, int? maxPrice, int? minQuantity, int? maxQuantity, int? sort)
        {
            try
            {
                var response = _httpClient.GetAsync(_httpClient.BaseAddress + "SanPham/GetAllChiTietSanPhamAdmin?idSanPham=" + id).Result;
                if (response.IsSuccessStatusCode)
                {
                    var lstSanpham = JsonConvert.DeserializeObject<List<ChiTietSanPhamViewModelAdmin>>(response.Content.ReadAsStringAsync().Result);
                    //Sắp xếp
                    if (sort == 1)
                    {
                        lstSanpham = lstSanpham.OrderBy(x => x.Ma).ToList();
                    }
                    else if (sort == 2)
                    {
                        lstSanpham = lstSanpham.OrderBy(x => x.GiaBan).ToList();
                    }
                    else if (sort == 3)
                    {
                        lstSanpham = lstSanpham.OrderByDescending(x => x.GiaBan).ToList();
                    }
                    else if (sort == 4)
                    {
                        lstSanpham = lstSanpham.OrderBy(x => x.SoLuong).ToList();
                    }
                    else if (sort == 5)
                    {
                        lstSanpham = lstSanpham.OrderByDescending(x => x.SoLuong).ToList();
                    }
                    //Tìm kiếm theo tên sản phẩm
                    if (ma != null)
                    {
                        lstSanpham = lstSanpham.Where(x => x.Ma.Contains(ma.ToUpper())).ToList();
                    }
                    //Tìm kiếm theo giá
                    if (minPrice != null)
                    {
                        lstSanpham = lstSanpham.Where(x => x.GiaBan >= minPrice).ToList();
                    }
                    if (maxPrice != null)
                    {
                        lstSanpham = lstSanpham.Where(x => x.GiaBan <= maxPrice).ToList();
                    }
                    //Tìm kiếm theo số lượng
                    if (minQuantity != null)
                    {
                        lstSanpham = lstSanpham.Where(x => x.SoLuong >= minQuantity).ToList();
                    }
                    if (maxQuantity != null)
                    {
                        lstSanpham = lstSanpham.Where(x => x.SoLuong <= maxQuantity).ToList();
                    }
                    var model = lstSanpham.Skip((page - 1) * pageSize).Take(pageSize).ToList();
                    return Json(new
                    {
                        data = model,
                        total = lstSanpham.Count,
                        status = true
                    }); ;
                }
                else return Json(new { status = false });
            }
            catch
            {
                return Json(new { status = false });
            }
        }
        [HttpGet]
        public IActionResult QuanLyAnh(Guid idSanPham)
        {
            try
            {
                var response = _httpClient.GetAsync(_httpClient.BaseAddress + "SanPham/GetAllAnhSanPham?idSanPham=" + idSanPham).Result;
                if (response.IsSuccessStatusCode)
                {
                    var lstAnh = JsonConvert.DeserializeObject<List<AnhViewModel>>(response.Content.ReadAsStringAsync().Result);
                    ViewData["IDSanPham"] = idSanPham.ToString();
                    return View("QuanLyAnh", lstAnh.OrderBy(x => x.TenMau));
                }
                else return View("QuanLyAnh", new List<AnhViewModel>());
            }
            catch
            {
                return View("QuanLyAnh", new List<AnhViewModel>());
            }
        }
        [HttpPost]
        public IActionResult AddAnhNoColor(IFormFile file, string idSanPham)
        {
            try
            {
                string wwwrootPath = _hostEnvironment.WebRootPath;
                var anh = new Anh() { ID = Guid.NewGuid(), DuongDan = _iFileService.AddFile(file, wwwrootPath).Result, IDSanPham = new Guid(idSanPham), TrangThai = 1 };
                var response = _httpClient.PostAsJsonAsync(_httpClient.BaseAddress + "SanPham/AddImageNoColor", anh).Result;
                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("QuanLyAnh", new { idSanPham });
                }
                else return BadRequest();
            }
            catch
            {
                return BadRequest();
            }
        }
        [HttpPost]
        public IActionResult UpdateImage(IFormFile file, string id, string idSanPham, string duongDan)
        {
            try
            {
                string wwwrootPath = _hostEnvironment.WebRootPath;
                var anh = new Anh() { ID = new Guid(id), DuongDan = _iFileService.AddFile(file, wwwrootPath).Result, TrangThai = 1 };
                var response = _httpClient.PutAsJsonAsync("SanPham/UpdateImage", anh).Result;
                if (response.IsSuccessStatusCode)
                {
                    if (_iFileService.DeleteFile(duongDan, wwwrootPath))
                    {
                        return RedirectToAction("QuanLyAnh", new { idSanPham });
                    }
                    else return BadRequest();
                }
                else return BadRequest();
            }
            catch { return BadRequest(); }
        }
        [HttpGet]
        public IActionResult DeleteImage(string duongDan, string id, string idSanPham)
        {
            try
            {
                string wwwrootPath = _hostEnvironment.WebRootPath;
                var response = _httpClient.DeleteAsync("SanPham/DeleteImage?id=" + id).Result;
                if (response.IsSuccessStatusCode)
                {
                    if (_iFileService.DeleteFile(duongDan, wwwrootPath))
                    {
                        return RedirectToAction("QuanLyAnh", new { idSanPham });
                    }
                    else return BadRequest();
                }
                else return BadRequest();
            }
            catch
            {
                return BadRequest();
            }
        }
        [HttpGet]
        public IActionResult AddChiTietSanPham(string idSanPham)
        {
            try
            {
                // Lưu trữ ID sản phẩm vào TempData
                TempData["IDSanPham"] = idSanPham;
                return View();
            }
            catch (Exception ex)
            {
                // Log lỗi (nếu cần) và trả về phản hồi lỗi
                return StatusCode(500, "Lỗi hệ thống: " + ex.Message);
            }
        }
        [HttpPost]
        public async Task<IActionResult> AddChiTietSanPham(ChiTietSanPhamAddRequest request)
        {
            try
            {
                // Loại bỏ các phần tử không cần thiết trong danh sách
                request.PhanLoais.RemoveAll(XoaMau);
                request.DungTichs.RemoveAll(XoaSize);

                // Kiểm tra và gán ID sản phẩm từ TempData
                if (TempData.Peek("IDSanPham").ToString() is string idSanPham)
                {
                    request.IDSanPham = new Guid(idSanPham);
                }
                else
                {
                    return BadRequest("ID sản phẩm không hợp lệ.");
                }

                // Gửi yêu cầu POST đến API để thêm chi tiết sản phẩm
                var response = await _httpClient.PostAsJsonAsync(_httpClient.BaseAddress + "SanPham/AddChiTietSanPham", request);

                if (response.IsSuccessStatusCode)
                {
                    // Đọc nội dung từ response nếu yêu cầu thành công
                    var temp = await response.Content.ReadAsStringAsync();

                    // Lưu thông tin phản hồi vào TempData để có thể sử dụng trong Action kế tiếp
                    TempData["UpdateChiTietSanPham"] = temp;
                    // Xử lý khi yêu cầu thành công
                    return RedirectToAction("UpdateChiTietSanPham");
                }
                else
                {
                    // Xử lý khi yêu cầu thất bại
                    return BadRequest("Có lỗi xảy ra khi thêm chi tiết sản phẩm.");
                }
            }
            catch (Exception ex)
            {
                // Log lỗi (nếu cần) và trả về phản hồi lỗi
                return StatusCode(500, "Lỗi hệ thống: " + ex.Message);
            }
        }


        [HttpGet]
        public IActionResult AddAnhToPhanLoai()
        {
            try
            {
                var lstAnhRequest = JsonConvert.DeserializeObject<List<AnhRequest>>(TempData["PhanLoais"].ToString());
                return View(lstAnhRequest);
            }
            catch
            {
                return View(new List<AnhRequest>());
            }
        }
        [HttpPost]
        public JsonResult UpdateSoluongChiTietSanPham(string id, int soLuong)
        {
            try
            {
                ChiTietSanPhamRequest request = new ChiTietSanPhamRequest() { IDChiTietSanPham = new Guid(id), SoLuong = soLuong };
                var response = _httpClient.PutAsJsonAsync(_httpClient.BaseAddress + "SanPham/UpdateSoluongChiTietSanPham", request).Result;
                if (response.IsSuccessStatusCode)
                {
                    return Json(new { Message = soLuong.ToString(), TrangThai = true });
                }
                else
                {
                    return Json(new { Message = "Error", TrangThai = false });
                }
            }
            catch
            {
                return Json(new { Message = "Error", TrangThai = false });
            }
        }
        [HttpPost]
        public JsonResult UpdateGiaBanChiTietSanPham(string id, int giaBan)
        {
            try
            {
                ChiTietSanPhamRequest request = new ChiTietSanPhamRequest() { IDChiTietSanPham = new Guid(id), GiaBan = giaBan };
                var response = _httpClient.PutAsJsonAsync(_httpClient.BaseAddress + "SanPham/UpdateGiaBanChiTietSanPham", request).Result;
                if (response.IsSuccessStatusCode)
                {
                    return Json(new { Message = response.Content.ReadAsStringAsync().Result, TrangThai = true });
                }
                else
                {
                    return Json(new { Message = "Error", TrangThai = false });
                }
            }
            catch
            {
                return Json(new { Message = "Error", TrangThai = false });
            }
        }
        [HttpPost]
        public JsonResult UpdateTrangThaiChiTietSanPham(string id)
        {
            try
            {
                var response = _httpClient.GetAsync(_httpClient.BaseAddress + "SanPham/UpdateTrangThaiChiTietSanPham?id=" + id).Result;
                if (response.IsSuccessStatusCode)
                {
                    return Json(new { TrangThai = true });
                }
                else
                {
                    return Json(new { TrangThai = false });
                }
            }
            catch
            {
                return Json(new { TrangThai = false });
            }
        }
        
        [HttpGet]
        public IActionResult UpdateChiTietSanPham()
        {
            try
            {
                var request = JsonConvert.DeserializeObject<ChiTietSanPhamUpdateRequest>(TempData.Peek("UpdateChiTietSanPham")?.ToString());
                if (request == null)
                {
                    return View(new ChiTietSanPhamUpdateRequest());
                }

                TempData["SanPham"] = request.IDSanPham.ToString();
                TempData["MaSP"] = request.Ma;
                TempData["MaPL"] = request.IDPhanLoai.ToString();
                TempData["MaDT"] = request.IDDungTich.ToString();


                if (request.PhanLoais != null)
                {
                    TempData["PhanLoai"] = JsonConvert.SerializeObject(request.PhanLoais);
                }

                TempData["Location"] = request.Location.ToString();
                return View(request);
            }
            catch (Exception ex)
            {
                // Log lỗi (nếu cần) và trả về phản hồi lỗi
                return StatusCode(500, "Lỗi hệ thống: " + ex.Message);
            }
            }


        [HttpPost]
        public async Task<IActionResult> UpdateChiTietSanPham(ChiTietSanPhamUpdateRequest request)
        {
            try
            {
                if (TempData.Peek("SanPham").ToString() is string idSanPham )
                {
                    request.IDSanPham = new Guid(idSanPham);
                    request.Ma = TempData["MaSP"] as string;
                    request.Location = Convert.ToInt32(TempData["Location"] as string);
                   
                }
                else
                {
                    return BadRequest("ID sản phẩm không hợp lệ.");
                }

                var response = await _httpClient.PostAsJsonAsync(_httpClient.BaseAddress + "SanPham/AddChiTietSanPhamFromSanPham", request);

                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("AddAnhToSanPham");
                }
                else
                {
                    return BadRequest("Có lỗi xảy ra khi cập nhật chi tiết sản phẩm.");
                }
            }
            catch (Exception ex)
            {
                return StatusCode(500, "Lỗi hệ thống: " + ex.Message);
            }
        }


        [HttpGet]
        public IActionResult AddAnhToSanPham()
        {
            try
            {
                var str = TempData["PhanLoai"] as string;
                if(str == null)
                {
                    return View(new List<PhanLoai>());
                }
                else
                {
                    var lst = JsonConvert.DeserializeObject<List<PhanLoai>>(str);
                    return View(lst);
                }               
            }
            catch
            {
                return View(new List<PhanLoai>());
            }
        }
        [HttpPost]
        public IActionResult AddAnhToSanPham(List<string> maMaus, List<IFormFile> images)
        {
            try
            {
                string wwwrootPath = _hostEnvironment.WebRootPath;
                string idSanPham = TempData.Peek("SanPham").ToString();
                List<AnhRequest> lstAnhRequest = new List<AnhRequest>();
                for (var i = 0; i < maMaus.Count; i++)
                {
                    lstAnhRequest.Add(new AnhRequest() { IDSanPham = new Guid(idSanPham), MaMau = maMaus[i], DuongDan = images.Count <= i ? "" : _iFileService.AddFile(images[i], wwwrootPath).Result });
                }
                HttpResponseMessage response = _httpClient.PostAsJsonAsync(_httpClient.BaseAddress + "SanPham/AddAnh", lstAnhRequest).Result;
                if (response.IsSuccessStatusCode) return RedirectToAction("ProductDetail", new { idSanPham = idSanPham });
                else return BadRequest();
            }
            catch
            {
                return BadRequest();
            }
        }
        public FileResult GenerateQRCode(string id, string ma)
        {
            QRCodeGenerator qRCodeGenerator = new QRCodeGenerator();
            QRCodeData qRCodeData = qRCodeGenerator.CreateQrCode(id, QRCodeGenerator.ECCLevel.Q);
            QRCode qRCode = new QRCode(qRCodeData);
            using (MemoryStream stream = new MemoryStream())
            {
                using (Bitmap bitmap = qRCode.GetGraphic(20))
                {
                    bitmap.Save(stream, ImageFormat.Png);
                    return File(stream.ToArray(), "image/png", ma + ".png");
                }
            }
        }
        [HttpGet]
        public async Task<JsonResult> DeleteProductDetail(string id)
        {
            try
            {
                var response = await _httpClient.GetAsync("SanPham/DeleteChiTietSanPham?id=" + id);
                if (response.IsSuccessStatusCode)
                {
                    var ketQua = Convert.ToBoolean(await response.Content.ReadAsStringAsync());
                    if (ketQua)
                    {
                        return Json(new { TrangThai = true });
                    }
                    else return Json(new { TrangThai = false, Loi = "Không thể xóa sản phẩm mặc định" });
                }
                else
                {
                    return Json(new { TrangThai = false, Loi = "Error" });
                }
            }
            catch
            {
                return Json(new { TrangThai = false, Loi = "Error" });
            }
        }
        [HttpGet]
        public async Task<JsonResult> UndoProductDetail(string id)
        {
            try
            {
                var response = await _httpClient.GetAsync("SanPham/UndoChiTietSanPham?id=" + id);
                if (response.IsSuccessStatusCode)
                {
                    return Json(true);
                }
                else
                {
                    return Json(false);
                }
            }
            catch
            {
                return Json(false);
            }
        }
        [HttpGet]
        public IActionResult UpdateSanPham(Guid id)
        {
            try
            {
                var response = JsonConvert.DeserializeObject<SanPhamUpdateRequest>(_httpClient.GetAsync("SanPham/GetSanPhamById?id=" + id).Result.Content.ReadAsStringAsync().Result);
                return View(response);
            }
            catch
            {
                return View(new SanPhamUpdateRequest());
            }
        }
        [HttpPost]
        public IActionResult UpdateSanPham(SanPhamUpdateRequest request)
        {
            try
            {
                var response = _httpClient.PutAsJsonAsync("SanPham/UpdateSanPham", request).Result;
                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("ProductManager");
                }
                else return BadRequest();
            }
            catch
            {
                return BadRequest();
            }
        }
    }
}
