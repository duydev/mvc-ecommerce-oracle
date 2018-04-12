using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using WebBanHang.Models;

namespace WebBanHang.Core.RepositoryModel
{
    public class ConfigRepository : RepositoryModel<Configuration>
    {
        public ConfigRepository(DbContext db) : base(db)
        {
        }

        public void UpdateConfig(string configName, string configValue, string description = null)
        {
            if (configName == null || configValue == null) return;
            var config = FetchAll().FirstOrDefault(c => c.ConfigName.Equals(configName));
            if (config == null)
            {
                CreateConfig(configName, configValue, description);
            } else
            {
                config.Value = configValue;
                Update(config);
            }
        }

        public Configuration CreateConfig(string configName, string configValue, string description = null )
        {
            Configuration row = new Configuration
            {
                ConfigName = configName,
                Description = description,
                Value = configValue
            };
            return Insert(row);
        }

    }
}