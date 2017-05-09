using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShopDienThoaiConnection;

namespace Template.Models.Bus
{
    public class BinhLuanBus
    {
        public static void ThemBinhLuan(BinhLuan bl)
        {
            var db= new ShopDienThoaiConnectionDB();
            db.Insert(bl);
        }

        public static IEnumerable<BinhLuan> DanhSach(int id)
        {
            var  db= new ShopDienThoaiConnectionDB();
            return db.Query<BinhLuan>("Select * from BinhLuan where TinhTrang != 1 AND MaSP=@0 order by ThoiGian desc",
                id);
        }
    }
}