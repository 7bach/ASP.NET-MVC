using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PetaPoco;
using ShopDienThoaiConnection;

namespace Template.Models.Bus
{
    public class NhaSanXuatBus
    {
        public static IEnumerable<HangSP> DanhSach()
        {
            var db = new ShopDienThoaiConnectionDB();
            return db.Query<HangSP>("select * from HangSP where BiXoa=0");
        }
        public static Page<SanPham> DanhSachChiTetPage(int id, int pageNumber, int itemPerPage)
        {
            var db = new ShopDienThoaiConnectionDB();
            return db.Page<SanPham>(pageNumber, itemPerPage, "select * from SanPham where BiXoa=0 and MaHang='" + id + "'");
        }

        public static void Them(HangSP hsp)
        {
            var db = new ShopDienThoaiConnectionDB();
            db.Insert(hsp);
        }
    }
}