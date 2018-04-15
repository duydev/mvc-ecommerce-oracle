using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Models;
using WebBanHang.Utils;
using WebBanHang.ViewModels;

namespace WebBanHang.Areas.Admin.Controllers
{
    public class UserController : AdminBaseController
    {
        public ActionResult Index()
        {
            var users = Repository.User.FetchAll().Where(a => a.UserID != this.userID);
            ViewBag.Users = users;
            return View();
        }

        public ActionResult LoadUsers(int start, int length)
        {
            var search = Request.QueryString["search[value]"].ToString();
            var users = Repository.User.FetchAll().Where(a => a.UserID != this.userID).Where(c => c.FullName.Contains(search)).OrderBy(a => a.FullName);
            var itemPaging = users.Skip(start).Take(length);
            List<object> data = new List<object>();
            foreach (var item in itemPaging)
            {
                var row = new List<object>();
                row.Add(item.FullName);
                row.Add(item.Email);
                row.Add(item.CreatedAt.ToString());
                row.Add(item.Status == true ? "Hoạt động" : "Tạm ngưng");
                data.Add(row);
            }
            var result = new
            {
                draw = Request.QueryString["draw"],
                recordsTotal = users.Count(),
                recordsFiltered = users.Count(),
                search = search,
                data = data
            };
            return Content(JsonConvert.SerializeObject(result), "application/json");
        }

        public ActionResult Create()
        {
            var model = new AdminUserViewModel();
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(AdminUserViewModel model)
        {
            if (ModelState.IsValid)
            {
                var user = Mapper.Map<User>(model);
                user.Password = EncryptUtils.MD5(user.Password);
                Repository.User.Insert(user);
                Repository.User.SaveChanges();
                if (user.UserID != 0)
                {
                    return RedirectToAction("Index", "Category");
                }
            }
            return View(model);
        }

    }
}