using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
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
            return db.Query<LoaiSP>("select * from LoaiSP where BiXoa=0");
        }
        public static Page<SanPham> DanhSachChiTetPage(int id, int pageNumber, int itemPerPage)
        {
            var db = new ShopDienThoaiConnectionDB();
            return db.Page<SanPham>(pageNumber, itemPerPage, "select * from SanPham where BiXoa=0 and MaLoai='" + id + "'");
        }
        public static LoaiSP ChiTiet(int id)
        {
            var db = new ShopDienThoaiConnectionDB();
            return db.SingleOrDefault<LoaiSP>("select * from LoaiSP where BiXoa=0 and MaLoai=@0", id);
        }

        public static void Them(LoaiSP lsp)
        {
            var db = new ShopDienThoaiConnectionDB();
            db.Insert(lsp);
        }
        public static void Sua(int id, LoaiSP lsp)
        {
            var db= new ShopDienThoaiConnectionDB();
            db.Update<LoaiSP>("Set TenLoai = @0, BiXoa=0 where MaLoai=@1", lsp.TenLoai,id);
        }
        public static void Xoa(int id)
        {
            var db = new ShopDienThoaiConnectionDB();
            db.Update<LoaiSP>("Set BiXoa=1 where MaLoai=@0",id);
        }


    }
}