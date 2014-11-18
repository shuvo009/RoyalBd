using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;

namespace RoyalBd.DataAccess.Utility
{
    public class SqlGenerator<T>
    {
        public string InsertQuery(T model)
        {
            var tableName = typeof(T).Name;
            var properties = GetProperties(model).Where(x => x.Key != "Id").Select(x => x).ToDictionary(x => x.Key, x => x.Value);
            var columns = String.Join(",", properties.Keys);
            var values = String.Join(",", properties.Values.Select(FormatQueryElement));
            var query = String.Format("INSERT INTO {0} ({1}) VALUES ({2})", tableName, columns, values);
            return query;
        }

        public string UpdateQuery(T model)
        {
            var tableName = typeof(T).Name;
            var properties = GetProperties(model).Where(x => x.Key != "Id");
            var updateValues = properties.Select(x => String.Format("{0}={1}", x.Key, FormatQueryElement(x.Value)));
            var updateStatement = String.Join(",", updateValues);
            var id = GetProperties(model).First(x => x.Key == "Id");
            var query = String.Format("UPDATE {0} SET {1} WHERE Id={2}", tableName, updateStatement, id.Value);
            return query;
        }

        public string FindQuery(int id)
        {
            var tableName = typeof(T).Name;
            var query = String.Format("SELECT * FROM {0} WHERE Id={1}", tableName, id);
            return query;
        }

        public string RemoveQuery(int id)
        {
            var tableName = typeof(T).Name;
            var query = String.Format("DELETE FROM {0} WHERE Id={1}", tableName, id);
            return query;
        }

        public string AllDataQuery()
        {
            var tableName = typeof(T).Name;
            var query = String.Format("SELECT * FROM {0}", tableName);
            return query;
        }

        #region Private Methods

        private string FormatQueryElement(string value)
        {
            double num;
            return double.TryParse(value, out num) ? value : String.Format("'{0}'", value);
        }

        private Dictionary<string, string> GetProperties(T model)
        {
            var propertyInfos = typeof(T).GetProperties();
            return propertyInfos.Where(x => x.GetValue(model, null) != null && !x.Name.Equals("IsInDesignMode"))
                         .ToDictionary(propertyInfo => propertyInfo.Name, propertyInfo => propertyInfo.GetValue(model, null).ToString());
        }
        #endregion
    }
}
