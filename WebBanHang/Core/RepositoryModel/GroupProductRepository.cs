﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using WebBanHang.Models;

namespace WebBanHang.Core.RepositoryModel
{
    public class GroupProductRepository : RepositoryModel<GroupProduct>
    {
        public GroupProductRepository(DbContext db) : base(db)
        {
            
        }

        public IEnumerable<GroupProduct> GetTopGroupProduct(){
            return FetchAll().Where(item => item.ParentGroupID == null).OrderBy(item => item.GroupName).ToList();
        }
    }
}