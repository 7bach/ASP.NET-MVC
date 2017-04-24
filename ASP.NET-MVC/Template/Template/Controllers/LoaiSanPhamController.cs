﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Template.Models.Bus;

namespace Template.Controllers
{
    public class LoaiSanPhamController : Controller
    {
        // GET: LoaiSanPham
        public ActionResult Index(int id, int? page)
        {
            int pageNumber = (page ?? 1);
            int itemsPerPage = 3;
            var DSSanPham = LoaiSanPhamBus.DanhSachChiTetPage(id, pageNumber, itemsPerPage);
            return View(DSSanPham);
        }
    }
}