//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebBanHang.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        public Product()
        {
            this.CartDetails = new HashSet<CartDetail>();
            this.Comments = new HashSet<Comment>();
            this.ImageProducts = new HashSet<ImageProduct>();
            this.OrderDetails = new HashSet<OrderDetail>();
            this.ProductOptions = new HashSet<ProductOption>();
            this.Quantities = new HashSet<Quantity>();
            this.Colors = new HashSet<Color>();
        }
    
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string Detail { get; set; }
        public long Price { get; set; }
        public Nullable<long> SalePrice { get; set; }
        public Nullable<int> Stock { get; set; }
        public int GroupID { get; set; }
        public Nullable<bool> UseMultiColor { get; set; }
        public Nullable<bool> Active { get; set; }
    
        public virtual ICollection<CartDetail> CartDetails { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual GroupProduct GroupProduct { get; set; }
        public virtual ICollection<ImageProduct> ImageProducts { get; set; }
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
        public virtual ICollection<ProductOption> ProductOptions { get; set; }
        public virtual ICollection<Quantity> Quantities { get; set; }
        public virtual ICollection<Color> Colors { get; set; }
    }
}
