using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShopDienThoaiConnection;

namespace Template.Models.Bus
{
    public class TinhTrangSanPhamBus
    {
        public static IEnumerable<TinhTrangSP> DanhSach()
        {
            var db = new ShopDienThoaiConnectionDB();
            return db.Query<TinhTrangSP>("select * from TinhTrangSP where MaTinhTrang=1");
        }
    }
}