using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RoyalBd.DataAccess.Extensions;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.Model;
using RoyalBd.Model.Model;

namespace RoyalBd.DataAccess.Repository
{
    public class ChallanRepository : BaseRepository<Challan>, IChallanRepository
    {
        public IEnumerable<Challan> Search(SearchModel searchModel)
        {
            searchModel.To = searchModel.To.AddDays(1);
            var searchQuery = String.Format("SELECT * FROM Challan WHERE (((Challan.ChallanDate) Between #{0}# And #{1}#)) ORDER BY ChallanDate DESC", searchModel.From, searchModel.To);
            return ReadCommand(searchQuery).ToList<Challan>();
        }
    }
}
