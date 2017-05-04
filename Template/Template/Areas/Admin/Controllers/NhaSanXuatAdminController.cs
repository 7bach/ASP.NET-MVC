using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopDienThoaiConnection;
using Template.Models.Bus;

namespace Template.Areas.Admin.Controllers
{
    public class NhaSanXuatAdminController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/NhaSanXuatAdmin
        public ActionResult Index()
        {
            var db = NhaSanXuatBus.DanhSach();
            return View(db);
        }

        // GET: Admin/NhaSanXuatAdmin/Details/5
        public ActionResult Details(int id)
        {
            var db = NhaSanXuatBus.ChiTiet(id);
            return View(db);
        }

        // GET: Admin/NhaSanXuatAdmin/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/NhaSanXuatAdmin/Create
        [HttpPost]
        public ActionResult Create(HangSP hsp)
        {
            try
            {
                // TODO: Add insert logic here
                NhaSanXuatBus.Them(hsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/NhaSanXuatAdmin/Edit/5
        public ActionResult Edit(int id)
        {
            var db = NhaSanXuatBus.ChiTiet(id);
            return View(db);
        }

        // POST: Admin/NhaSanXuatAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, HangSP hsp)
        {
            try
            {
                // TODO: Add update logic here
                NhaSanXuatBus.Sua(id, hsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/NhaSanXuatAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            var db = NhaSanXuatBus.ChiTiet(id);
            return View(db);
        }

        // POST: Admin/NhaSanXuatAdmin/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
                NhaSanXuatBus.Xoa(id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
