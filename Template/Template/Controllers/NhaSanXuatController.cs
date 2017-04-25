using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Template.Models.Bus;

namespace Template.Controllers
{
    public class NhaSanXuatController : Controller
    {
        // GET: NhaSanXuat
        public ActionResult Index(int id,int? page)
        {
            int pageNumber = (page ?? 1);
            int itemsPerPage = 3;
            var DSSanPham = NhaSanXuatBus.DanhSachChiTetPage(id ,pageNumber, itemsPerPage);
            return View(DSSanPham);
        }
    }
}