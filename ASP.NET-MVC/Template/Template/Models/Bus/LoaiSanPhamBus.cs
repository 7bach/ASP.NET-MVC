using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PetaPoco;
using ShopDienThoaiConnection;

namespace Template.Models.Bus
{
    public class LoaiSanPhamBus
    {
        public static IEnumerable<LoaiSP> DanhSach()
        {
            var db = new ShopDienThoaiConnectionDB();
            return db.Query<LoaiSP>("select * from LoaiSP");
        }
        public static Page<SanPham> DanhSachChiTetPage(int id, int pageNumber, int itemPerPage)
        {
            var db = new ShopDienThoaiConnectionDB();
            return db.Page<SanPham>(pageNumber, itemPerPage, "select * from SanPham where MaLoai='" + id + "'");
        }
    }
}