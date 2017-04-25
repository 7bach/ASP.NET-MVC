using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PetaPoco;
using ShopDienThoaiConnection;

namespace Template.Models.Bus
{
    public class SanPhamBus
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db=new ShopDienThoaiConnectionDB();
            return db.Query<SanPham>("select * from SanPham where BiXoa=0");
        }
        public static Page<SanPham> DanhSach(int pageNumber, int itemPerPage)
        {
            var db = new ShopDienThoaiConnectionDB();
            return db.Page<SanPham>(pageNumber, itemPerPage, "select * from SanPham where BiXoa=0");
        }

        public static SanPham ChiTiet(int id)
        {
            var db=new ShopDienThoaiConnectionDB();
            return db.SingleOrDefault<SanPham>("select * from SanPham where BiXoa=0 and MaSP=@0", id);
        }
        public static IEnumerable<SanPham> SanPhamHot()
        {
            var db = new ShopDienThoaiConnectionDB();
            return db.Query<SanPham>("select TOP 3 * from SanPham where BiXoa=0 and GhiChu=N'New'");
        }


        public static void Them(SanPham sp)
        {
            var db=new ShopDienThoaiConnectionDB();
            db.Insert(sp);
        }
    }
}