using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanHang.Models;

namespace WebBanHang.ViewModels
{
    public class AdminProductViewModel
    {
        public int ProductID { get; set; }

        [Display(Name = "Tên sản phẩm")]
        [Required(ErrorMessage="Vui lòng nhập tên sản phẩm")]
        public String ProductName { get; set; }

        [Display(Name = "SEO URL")]
        [Required(ErrorMessage = "Vui lòng nhập SEO URL")]
        public String Slug { get; set; }

        [Display(Name = "Chi tiết")]
        [Required(ErrorMessage = "Vui lòng nhập tên nội dung sản phẩm")]
        [AllowHtml]
        public String Detail { get; set; }

        [Display(Name = "Giá bán")]
        [Required(ErrorMessage = "Vui lòng nhập giá sản phẩm")]
        public long Price { get; set; }

        [Display(Name = "Giá khuyển mãi")]
        [Required(ErrorMessage = "Vui lòng nhập giá giảm")]
        public long SalePrice { get; set; }

        [Display(Name = "Số lượng")]
        [Required(ErrorMessage = "Vui lòng nhập số lượng")]
        public int Stock { get; set; }

        [Display(Name = "Nhóm sản phẩm")]
        [Required(ErrorMessage = "Vui lòng chọn nhóm sản phẩm")]
        public int GroupID { get; set; }

        [Display(Name = "Dùng nhiều màu?")]
        public bool UseMultiColor { get; set; }

        [Display(Name = "Hiển thị?")]
        public bool Active { get; set; }
        public List<ProductColor> ProductColor { get; set; }
        public List<ProductAttribute> ProductAttribute { get; set; }

        public AdminProductViewModel()
        {
            ProductColor = new List<ProductColor>();
            ProductAttribute = new List<ProductAttribute>();
        }
    }
}