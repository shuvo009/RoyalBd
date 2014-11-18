using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RoyalBd.Model;

namespace RoyalBd.DataAccess.Interfaces
{
    public interface IChallanItemRepository : IBaseRepository<ChallanItem>
    {
        IEnumerable<ChallanItem> ChallanItems(int challanId);
    }
}
