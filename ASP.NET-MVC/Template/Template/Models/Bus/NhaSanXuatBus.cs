using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShopDienThoaiConnection;

namespace Template.Models.Bus
{
    public class NhaSanXuatBus
    {
        public static IEnumerable<HangSP> DanhSach()
        {
            var db = new ShopDienThoaiConnectionDB();
            return db.Query<HangSP>("select * from HangSP");
        }
    }
}