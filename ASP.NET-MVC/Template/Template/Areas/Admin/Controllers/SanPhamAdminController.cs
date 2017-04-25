using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopDienThoaiConnection;
using Template.Models.Bus;

namespace Template.Areas.Admin.Controllers
{
    public class SanPhamAdminController : Controller
    {
        // GET: Admin/SanPhamAdmin
        public ActionResult Index()
        {
            var db = SanPhamBus.DanhSach();
            return View(db);
        }

        // GET: Admin/SanPhamAdmin/Details/5
        public ActionResult Details(int id)
        {
            var db = SanPhamBus.ChiTiet(id);
            return View(db);
        }

        // GET: Admin/SanPhamAdmin/Create
        public ActionResult Create()
        {
            ViewBag.MaHang = new SelectList(NhaSanXuatBus.DanhSach(), "MaHang", "TenHang");
            ViewBag.MaLoai = new SelectList(LoaiSanPhamBus.DanhSach(), "MaLoai", "TenLoai");
            ViewBag.MaTinhTrang = new SelectList(TinhTrangSanPhamBus.DanhSach(), "MaTinhTrang", "TenTinhTrang");
            return View();
        }

        // POST: Admin/SanPhamAdmin/Create
        [HttpPost]
        public ActionResult Create(SanPham sp)
        {
            try
            {
                // TODO: Add insert logic here
                if (HttpContext.Request.Files.Count > 0)
                {
                    var hpf = HttpContext.Request.Files[0];
                    if (hpf.ContentLength > 0)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        string fullPathWithFileName = "~/Template/themes/images/products/" +
                                                      fileName + ".jpg";
                        hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                        sp.HinhAnh = fileName + ".jpg";
                    }
                }
                SanPhamBus.Them(sp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPhamAdmin/Edit/5
        public ActionResult Edit(int id)
        {

            ViewBag.MaHang = new SelectList(NhaSanXuatBus.DanhSach(), "MaHang", "TenHang");
            ViewBag.MaLoai = new SelectList(LoaiSanPhamBus.DanhSach(), "MaLoai", "TenLoai");
            ViewBag.MaTinhTrang = new SelectList(TinhTrangSanPhamBus.DanhSach(), "MaTinhTrang", "TenTinhTrang");
            var db = SanPhamBus.ChiTiet(id);
            return View(db);
        }

        // POST: Admin/SanPhamAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, SanPham sp)
        {
            try
            {
                // TODO: Add update logic here
                SanPhamBus.Sua(id, sp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPhamAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            var db = SanPhamBus.ChiTiet(id);
            return View(db);
        }

        // POST: Admin/SanPhamAdmin/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
                SanPhamBus.Xoa(id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
