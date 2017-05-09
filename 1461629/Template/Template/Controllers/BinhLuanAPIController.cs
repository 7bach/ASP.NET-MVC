using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Microsoft.AspNet.Identity;
using ShopDienThoaiConnection;
using Template.Models.Bus;

namespace Template.Controllers
{
    public class BinhLuanAPIController : ApiController
    {
        // GET: api/BinhLuanAPI
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/BinhLuanAPI/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/BinhLuanAPI
        public void Post([FromBody]BinhLuan bl)
        {
            bl.MaTK = User.Identity.GetUserId();
            bl.TinhTrang = 0;
            bl.ThoiGian = DateTime.Now;
            bl.TenTK = User.Identity.Name;
            BinhLuanBus.ThemBinhLuan(bl);
        }

        // PUT: api/BinhLuanAPI/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/BinhLuanAPI/5
        public void Delete(int id)
        {
        }
    }
}
