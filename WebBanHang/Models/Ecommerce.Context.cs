﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class EcommerceEntities : DbContext
    {
        public EcommerceEntities()
            : base("name=EcommerceEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AttributeGroup> AttributeGroups { get; set; }
        public virtual DbSet<Attribute> Attributes { get; set; }
        public virtual DbSet<Color> Colors { get; set; }
        public virtual DbSet<Configuration> Configurations { get; set; }
        public virtual DbSet<Contact> Contacts { get; set; }
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<District> Districts { get; set; }
        public virtual DbSet<GroupProduct> GroupProducts { get; set; }
        public virtual DbSet<ImageProduct> ImageProducts { get; set; }
        public virtual DbSet<Menu> Menus { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<OrderStatus> OrderStatuses { get; set; }
        public virtual DbSet<Payment> Payments { get; set; }
        public virtual DbSet<ProductAttribute> ProductAttributes { get; set; }
        public virtual DbSet<ProductColor> ProductColors { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Province> Provinces { get; set; }
        public virtual DbSet<ShippingStatus> ShippingStatuses { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Ward> Wards { get; set; }
    
        public virtual int ADDCOLOR(string nAME, string hEXCODE)
        {
            var nAMEParameter = nAME != null ?
                new ObjectParameter("NAME", nAME) :
                new ObjectParameter("NAME", typeof(string));
    
            var hEXCODEParameter = hEXCODE != null ?
                new ObjectParameter("HEXCODE", hEXCODE) :
                new ObjectParameter("HEXCODE", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ADDCOLOR", nAMEParameter, hEXCODEParameter);
        }
    
        public virtual int ADDPROVINCE(string nAME, string tYPE)
        {
            var nAMEParameter = nAME != null ?
                new ObjectParameter("NAME", nAME) :
                new ObjectParameter("NAME", typeof(string));
    
            var tYPEParameter = tYPE != null ?
                new ObjectParameter("TYPE", tYPE) :
                new ObjectParameter("TYPE", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ADDPROVINCE", nAMEParameter, tYPEParameter);
        }
    
        public virtual int ADD_ATTRIBUTE(Nullable<decimal> gROUP_ID, string nAME)
        {
            var gROUP_IDParameter = gROUP_ID.HasValue ?
                new ObjectParameter("GROUP_ID", gROUP_ID) :
                new ObjectParameter("GROUP_ID", typeof(decimal));
    
            var nAMEParameter = nAME != null ?
                new ObjectParameter("NAME", nAME) :
                new ObjectParameter("NAME", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ADD_ATTRIBUTE", gROUP_IDParameter, nAMEParameter);
        }
    
        public virtual int ADD_ATTRIBUTE_GROUP(string nAME)
        {
            var nAMEParameter = nAME != null ?
                new ObjectParameter("NAME", nAME) :
                new ObjectParameter("NAME", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ADD_ATTRIBUTE_GROUP", nAMEParameter);
        }
    
        public virtual int ADD_COLOR(string nAME, string hEX_CODE)
        {
            var nAMEParameter = nAME != null ?
                new ObjectParameter("NAME", nAME) :
                new ObjectParameter("NAME", typeof(string));
    
            var hEX_CODEParameter = hEX_CODE != null ?
                new ObjectParameter("HEX_CODE", hEX_CODE) :
                new ObjectParameter("HEX_CODE", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ADD_COLOR", nAMEParameter, hEX_CODEParameter);
        }
    
        public virtual int ADD_CONFIG(string nAME, string vALUE, string dESCRIPTION)
        {
            var nAMEParameter = nAME != null ?
                new ObjectParameter("NAME", nAME) :
                new ObjectParameter("NAME", typeof(string));
    
            var vALUEParameter = vALUE != null ?
                new ObjectParameter("VALUE", vALUE) :
                new ObjectParameter("VALUE", typeof(string));
    
            var dESCRIPTIONParameter = dESCRIPTION != null ?
                new ObjectParameter("DESCRIPTION", dESCRIPTION) :
                new ObjectParameter("DESCRIPTION", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ADD_CONFIG", nAMEParameter, vALUEParameter, dESCRIPTIONParameter);
        }
    
        public virtual int ADD_CONTACT(Nullable<decimal> cUS_ID, string fULLNAME, string eMAIL, string pHONE, string mESSAGE, Nullable<decimal> sEEN)
        {
            var cUS_IDParameter = cUS_ID.HasValue ?
                new ObjectParameter("CUS_ID", cUS_ID) :
                new ObjectParameter("CUS_ID", typeof(decimal));
    
            var fULLNAMEParameter = fULLNAME != null ?
                new ObjectParameter("FULLNAME", fULLNAME) :
                new ObjectParameter("FULLNAME", typeof(string));
    
            var eMAILParameter = eMAIL != null ?
                new ObjectParameter("EMAIL", eMAIL) :
                new ObjectParameter("EMAIL", typeof(string));
    
            var pHONEParameter = pHONE != null ?
                new ObjectParameter("PHONE", pHONE) :
                new ObjectParameter("PHONE", typeof(string));
    
            var mESSAGEParameter = mESSAGE != null ?
                new ObjectParameter("MESSAGE", mESSAGE) :
                new ObjectParameter("MESSAGE", typeof(string));
    
            var sEENParameter = sEEN.HasValue ?
                new ObjectParameter("SEEN", sEEN) :
                new ObjectParameter("SEEN", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ADD_CONTACT", cUS_IDParameter, fULLNAMEParameter, eMAILParameter, pHONEParameter, mESSAGEParameter, sEENParameter);
        }
    
        public virtual int ADD_CUSTOMER(string fACEBOOK_ID, string gOOGLE_ID, string pASS_WORD, string fULLNAME, string eMAIL, string aDDRESS, string pHONE, Nullable<decimal> pROVINCE_ID, Nullable<decimal> dISTRICT_ID, Nullable<decimal> wARD_ID, Nullable<decimal> sTATUS)
        {
            var fACEBOOK_IDParameter = fACEBOOK_ID != null ?
                new ObjectParameter("FACEBOOK_ID", fACEBOOK_ID) :
                new ObjectParameter("FACEBOOK_ID", typeof(string));
    
            var gOOGLE_IDParameter = gOOGLE_ID != null ?
                new ObjectParameter("GOOGLE_ID", gOOGLE_ID) :
                new ObjectParameter("GOOGLE_ID", typeof(string));
    
            var pASS_WORDParameter = pASS_WORD != null ?
                new ObjectParameter("PASS_WORD", pASS_WORD) :
                new ObjectParameter("PASS_WORD", typeof(string));
    
            var fULLNAMEParameter = fULLNAME != null ?
                new ObjectParameter("FULLNAME", fULLNAME) :
                new ObjectParameter("FULLNAME", typeof(string));
    
            var eMAILParameter = eMAIL != null ?
                new ObjectParameter("EMAIL", eMAIL) :
                new ObjectParameter("EMAIL", typeof(string));
    
            var aDDRESSParameter = aDDRESS != null ?
                new ObjectParameter("ADDRESS", aDDRESS) :
                new ObjectParameter("ADDRESS", typeof(string));
    
            var pHONEParameter = pHONE != null ?
                new ObjectParameter("PHONE", pHONE) :
                new ObjectParameter("PHONE", typeof(string));
    
            var pROVINCE_IDParameter = pROVINCE_ID.HasValue ?
                new ObjectParameter("PROVINCE_ID", pROVINCE_ID) :
                new ObjectParameter("PROVINCE_ID", typeof(decimal));
    
            var dISTRICT_IDParameter = dISTRICT_ID.HasValue ?
                new ObjectParameter("DISTRICT_ID", dISTRICT_ID) :
                new ObjectParameter("DISTRICT_ID", typeof(decimal));
    
            var wARD_IDParameter = wARD_ID.HasValue ?
                new ObjectParameter("WARD_ID", wARD_ID) :
                new ObjectParameter("WARD_ID", typeof(decimal));
    
            var sTATUSParameter = sTATUS.HasValue ?
                new ObjectParameter("STATUS", sTATUS) :
                new ObjectParameter("STATUS", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ADD_CUSTOMER", fACEBOOK_IDParameter, gOOGLE_IDParameter, pASS_WORDParameter, fULLNAMEParameter, eMAILParameter, aDDRESSParameter, pHONEParameter, pROVINCE_IDParameter, dISTRICT_IDParameter, wARD_IDParameter, sTATUSParameter);
        }
    
        public virtual int ADD_DISTRICT(string nAME, string tYPE, Nullable<decimal> pROVINCE_ID)
        {
            var nAMEParameter = nAME != null ?
                new ObjectParameter("NAME", nAME) :
                new ObjectParameter("NAME", typeof(string));
    
            var tYPEParameter = tYPE != null ?
                new ObjectParameter("TYPE", tYPE) :
                new ObjectParameter("TYPE", typeof(string));
    
            var pROVINCE_IDParameter = pROVINCE_ID.HasValue ?
                new ObjectParameter("PROVINCE_ID", pROVINCE_ID) :
                new ObjectParameter("PROVINCE_ID", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ADD_DISTRICT", nAMEParameter, tYPEParameter, pROVINCE_IDParameter);
        }
    
        public virtual int ADD_GROUP_PRODUCT(string gROUP_NAME, string sLUG, Nullable<decimal> pARENT_GROUP_ID, string iCON, Nullable<decimal> pRIORITY)
        {
            var gROUP_NAMEParameter = gROUP_NAME != null ?
                new ObjectParameter("GROUP_NAME", gROUP_NAME) :
                new ObjectParameter("GROUP_NAME", typeof(string));
    
            var sLUGParameter = sLUG != null ?
                new ObjectParameter("SLUG", sLUG) :
                new ObjectParameter("SLUG", typeof(string));
    
            var pARENT_GROUP_IDParameter = pARENT_GROUP_ID.HasValue ?
                new ObjectParameter("PARENT_GROUP_ID", pARENT_GROUP_ID) :
                new ObjectParameter("PARENT_GROUP_ID", typeof(decimal));
    
            var iCONParameter = iCON != null ?
                new ObjectParameter("ICON", iCON) :
                new ObjectParameter("ICON", typeof(string));
    
            var pRIORITYParameter = pRIORITY.HasValue ?
                new ObjectParameter("PRIORITY", pRIORITY) :
                new ObjectParameter("PRIORITY", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ADD_GROUP_PRODUCT", gROUP_NAMEParameter, sLUGParameter, pARENT_GROUP_IDParameter, iCONParameter, pRIORITYParameter);
        }
    
        public virtual int ADD_IMAGE_PRODUCT(Nullable<decimal> pRODUCT_ID, string cAPTION, string iMAGE_PATH)
        {
            var pRODUCT_IDParameter = pRODUCT_ID.HasValue ?
                new ObjectParameter("PRODUCT_ID", pRODUCT_ID) :
                new ObjectParameter("PRODUCT_ID", typeof(decimal));
    
            var cAPTIONParameter = cAPTION != null ?
                new ObjectParameter("CAPTION", cAPTION) :
                new ObjectParameter("CAPTION", typeof(string));
    
            var iMAGE_PATHParameter = iMAGE_PATH != null ?
                new ObjectParameter("IMAGE_PATH", iMAGE_PATH) :
                new ObjectParameter("IMAGE_PATH", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ADD_IMAGE_PRODUCT", pRODUCT_IDParameter, cAPTIONParameter, iMAGE_PATHParameter);
        }
    
        public virtual int EDIT_ATTRIBUTE_GROUP(Nullable<decimal> iD, string nAME)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(decimal));
    
            var nAMEParameter = nAME != null ?
                new ObjectParameter("NAME", nAME) :
                new ObjectParameter("NAME", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("EDIT_ATTRIBUTE_GROUP", iDParameter, nAMEParameter);
        }
    
        public virtual int REMOVE_ATTRIBUTE_GROUP(Nullable<decimal> iD)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("REMOVE_ATTRIBUTE_GROUP", iDParameter);
        }
    }
}
