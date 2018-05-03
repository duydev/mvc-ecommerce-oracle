using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using WebBanHang.Models;

namespace WebBanHang.Core.RepositoryModel
{
    public class ColorRepository : RepositoryModel<Color>
    {
        private EcommerceEntities db = null;

        public ColorRepository(DbContext dbContext) : base(dbContext)
        {
            db = (EcommerceEntities)dbContext;
        }

        public int Add(Color row)
        {
            return db.ADDCOLOR(row.ColorName, row.HexCode);
        }



    }
}