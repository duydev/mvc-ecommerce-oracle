using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebBanHang.ViewModels
{
    public class AdminUserViewModel
    {
        public int UserID { get; set; }

        [Display(Name = "Tên đăng nhập")]
        [Required(ErrorMessage = "Vui lòng nhập tên đăng nhập")]
        public string Username { get; set; }

        [Display(Name = "Mật khẩu")]
        [Required(ErrorMessage = "Vui lòng nhập mật khẩu")]
        public string Password { get; set; }

        [Display(Name = "Họ tên")]
        [Required(ErrorMessage = "Vui lòng nhập họ tên")]
        public string FullName { get; set; }

        [Display(Name = "Email")]
        [Required(ErrorMessage = "Vui lòng nhập email")]
        public string Email { get; set; }

        [Display(Name = "Trạng thái")]
//        [Required(ErrorMessage = "Vui lòng nhập trạng thái")]
        public bool? Status { get; set; }

        [Display(Name = "Ngày tạo")]
  //      [Required(ErrorMessage = "Vui lòng nhập ngày tạo")]
        public DateTime CreatedAt { get; set; }

    }
}