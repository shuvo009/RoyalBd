using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RoyalBd.DataAccess.Extensions;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.DataAccess.Utility;

namespace RoyalBd.DataAccess.Repository
{
    public class BaseRepository<T> : DatabaseCommunitarian, IBaseRepository<T> where T : class , new()
    {
        private readonly SqlGenerator<T> _sqlGenerator;

        public BaseRepository()
        {
            _sqlGenerator = new SqlGenerator<T>();
        }

        public int Add(T model)
        {
            var query = _sqlGenerator.InsertQuery(model);
           return  InsertCommand(query);
        }

        public void Update(T model)
        {
            var query = _sqlGenerator.UpdateQuery(model);
            ExecuteCommand(query);
        }

        public void Remove(int id)
        {
            var query = _sqlGenerator.RemoveQuery(id);
            ExecuteCommand(query);
        }

        public IEnumerable<T> All()
        {
            var query = _sqlGenerator.AllDataQuery();
            var allData = ReadCommand(query);
            return allData.ToList<T>();
        }

        public T Find(int id)
        {
            var query = _sqlGenerator.FindQuery(id);
            var findData = ReadCommand(query);
            return findData.ToList<T>().FirstOrDefault();
        }
    }
}
