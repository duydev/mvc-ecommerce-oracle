using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebBanHang.ViewModels
{
    public class AdminGroupProductViewModel
    {
        public int GroupID { get; set; }

        [Display(Name ="Tên nhóm")]
        [Required(ErrorMessage="Vui lòng nhập tên nhóm")]
        public string GroupName { get; set; }

        [Display(Name = "SEO URL")]
        [Required(ErrorMessage = "Vui lòng nhập SEO URL")]
        public string Slug { get; set; }

        [Display(Name = "Nhóm cha")]
        public string ParentGroupID { get; set; }

        [Display(Name = "Biểu tượng")]
        public string Icon { get; set; }

        [Display(Name = "Thứ tự")]
        public int Priority { get; set; }
    }
}