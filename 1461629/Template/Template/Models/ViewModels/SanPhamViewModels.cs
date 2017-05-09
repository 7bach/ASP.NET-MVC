using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShopDienThoaiConnection;

namespace Template.Models.ViewModels
{
    public class SanPhamViewModels
    {
        public SanPham SanPham { get; set; }
        public IEnumerable<BinhLuan> BinhLuanSP { get; set; }
    }
}