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
    
    public partial class Order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            this.OrderDetails = new HashSet<OrderDetail>();
        }
    
        public int OrderID { get; set; }
        public int CustomerID { get; set; }
        public int PaymentID { get; set; }
        public Nullable<System.DateTime> CreatedAt { get; set; }
        public string FullName { get; set; }
        public string Address { get; set; }
        public int ProvinceID { get; set; }
        public int DistrictID { get; set; }
        public int WardID { get; set; }
        public string Phone { get; set; }
        public decimal TotalPrice { get; set; }
        public Nullable<decimal> Discount { get; set; }
        public Nullable<System.DateTime> PaymentDate { get; set; }
        public Nullable<bool> Paid { get; set; }
        public int OrderStatusID { get; set; }
        public int ShippingStatusID { get; set; }
        public string Comment { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual District District { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
        public virtual Payment Payment { get; set; }
        public virtual Province Province { get; set; }
        public virtual OrderStatus OrderStatus { get; set; }
        public virtual ShippingStatus ShippingStatus { get; set; }
        public virtual Ward Ward { get; set; }
    }
}
