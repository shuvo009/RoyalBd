using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;

namespace RoyalBd.UI.Helpers
{
    public static class ExtensionMethods
    {
        public static void ClearAllProperty<T>(this T property)
        {
            var propertyInfos = typeof(T).GetProperties();
            propertyInfos.Where(x => typeof(string).IsAssignableFrom(x.PropertyType) && x.GetSetMethod() != null && x.GetSetMethod() != null).ToList().ForEach(pro => pro.SetValue(property, string.Empty, null));
            propertyInfos.Where(x => typeof(int).IsAssignableFrom(x.PropertyType)).ToList().ForEach(pro => pro.SetValue(property, 0, null));
            propertyInfos.Where(x => typeof(double).IsAssignableFrom(x.PropertyType)).ToList().ForEach(pro => pro.SetValue(property, 0, null));
            propertyInfos.Where(x => typeof(Int32).IsAssignableFrom(x.PropertyType)).ToList().ForEach(pro => pro.SetValue(property, 0, null));
            propertyInfos.Where(x => typeof(DateTime).IsAssignableFrom(x.PropertyType)).ToList().ForEach(pro => pro.SetValue(property, DateTime.Today, null));
            propertyInfos.Where(x => typeof(byte[]).IsAssignableFrom(x.PropertyType)).ToList().ForEach(pro => pro.SetValue(property, null, null));
        }
    }
}
