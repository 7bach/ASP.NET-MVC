using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShopDienThoaiConnection;

namespace Template.Models.Bus
{
    public class SanPhamBus
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db=new ShopDienThoaiConnectionDB();
            return db.Query<SanPham>("select * from SanPham");
        }

        public static SanPham ChiTiet(int id)
        {
            var db=new ShopDienThoaiConnectionDB();
            return db.SingleOrDefault<SanPham>("select * from SanPham where MaSP=@0", id);
        }
    }
}