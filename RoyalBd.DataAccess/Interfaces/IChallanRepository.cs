using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RoyalBd.Model;
using RoyalBd.Model.Model;

namespace RoyalBd.DataAccess.Interfaces
{
    public interface IChallanRepository : IBaseRepository<Challan>
    {
        IEnumerable<Challan> Search(SearchModel searchModel);
    }
}
