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
        public static HangSP ChiTiet(int id)
        {
            var db = new ShopDienThoaiConnectionDB();
            return db.SingleOrDefault<HangSP>("select * from HangSP where BiXoa=0 and MaHang=@0", id);
        }

        public static void Them(HangSP hsp)
        {
            var db = new ShopDienThoaiConnectionDB();
            db.Insert(hsp);
        }
        public static void Sua(int id, HangSP hsp)
        {
            var db = new ShopDienThoaiConnectionDB();
            db.Update<HangSP>("Set TenHang = @0, BiXoa=0 where MaLoai=@1", hsp.TenHang, id);
        }
        public static void Xoa(int id)
        {
            var db = new ShopDienThoaiConnectionDB();
            db.Update<HangSP>("Set BiXoa=1 where MaHang=@0", id);
        }

    }
}