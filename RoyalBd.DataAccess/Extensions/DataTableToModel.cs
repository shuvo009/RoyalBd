﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace RoyalBd.DataAccess.Extensions
{
    public static class DataTableToModel
    {
        public static List<T> ToList<T>(this DataTable table) where T : new()
        {
            var properties = typeof(T).GetProperties().Where(x => !x.Name.Equals("IsInDesignMode")).ToList();
            var result = new List<T>();

            foreach (var row in table.Rows)
            {
                var item = CreateItemFromRow<T>((DataRow)row, properties);
                result.Add(item);
            }

            return result;
        }

        private static T CreateItemFromRow<T>(DataRow row, IEnumerable<PropertyInfo> properties) where T : new()
        {
            T item = new T();
            foreach (var property in properties)
            {
                property.SetValue(item, row[property.Name], null);
            }
            return item;
        }
    }
}
