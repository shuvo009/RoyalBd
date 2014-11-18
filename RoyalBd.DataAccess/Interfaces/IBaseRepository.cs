using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RoyalBd.DataAccess.Interfaces
{
    public interface IBaseRepository<T> where T : class, new()
    {
        int Add(T model);
        void Update(T model);
        void Remove(int id);
        IEnumerable<T> All();
        T Find(int id);
    }
}
