using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopDienThoaiConnection;
using Template.Models.Bus;

namespace Template.Areas.Admin.Controllers
{
    public class LoaiSanPhamAdminController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/LoaiSanPhamAdmin
        public ActionResult Index()
        {
            var db = LoaiSanPhamBus.DanhSach();
            return View(db);
        }

        // GET: Admin/LoaiSanPhamAdmin/Details/5
        public ActionResult Details(int id)
        {
            var db = LoaiSanPhamBus.ChiTiet(id);
            return View(db);
        }

        // GET: Admin/LoaiSanPhamAdmin/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/LoaiSanPhamAdmin/Create
        [HttpPost]
        public ActionResult Create(LoaiSP lsp)
        {
            try
            {
                // TODO: Add insert logic here
                LoaiSanPhamBus.Them(lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/LoaiSanPhamAdmin/Edit/5
        public ActionResult Edit(int id)
        {
            var db = LoaiSanPhamBus.ChiTiet(id);
            return View(db);
        }

        // POST: Admin/LoaiSanPhamAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, LoaiSP lsp)
        {
            try
            {
                 //TODO: Add update logic here
                LoaiSanPhamBus.Sua(id, lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/LoaiSanPhamAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            var db = LoaiSanPhamBus.ChiTiet(id);
            return View(db);
        }

        // POST: Admin/LoaiSanPhamAdmin/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
                LoaiSanPhamBus.Xoa(id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
