using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Template.Models.Bus;
namespace Template.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(int? page)
        {
            int pageNumber = (page ?? 1);
            int itemsPerPage = 3;
            var DSSanPham = SanPhamBus.DanhSach(pageNumber,itemsPerPage);
            return View(DSSanPham);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Register()
        {
            ViewBag.Message = "Register";

            return View();
        }
    }
}