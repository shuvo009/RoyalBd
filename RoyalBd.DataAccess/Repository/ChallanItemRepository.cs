using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RoyalBd.DataAccess.Extensions;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.DataAccess.Utility;
using RoyalBd.Model;

namespace RoyalBd.DataAccess.Repository
{
    public class ChallanItemRepository : BaseRepository<ChallanItem>, IChallanItemRepository
    {
        public IEnumerable<ChallanItem> ChallanItems(int challanId)
        {
            var query = String.Format("Select * From ChallanItem where ChallanId = {0}", challanId);
            return ReadCommand(query).ToList<ChallanItem>();
        }
    }
}
