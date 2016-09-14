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
    
    public partial class District
    {
        public District()
        {
            this.Customers = new HashSet<Customer>();
            this.Orders = new HashSet<Order>();
        }
    
        public int DistrictID { get; set; }
        public string DistrictName { get; set; }
        public Nullable<int> ProvinceID { get; set; }
        public string Type { get; set; }
    
        public virtual ICollection<Customer> Customers { get; set; }
        public virtual Province Province { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
    }
}
