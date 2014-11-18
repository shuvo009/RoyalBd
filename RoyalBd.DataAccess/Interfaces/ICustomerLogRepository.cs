using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RoyalBd.Model;

namespace RoyalBd.DataAccess.Interfaces
{
    public interface ICustomerLogRepository : IBaseRepository<CustomerLog>
    {
        ObservableCollection<CustomerLog> CustomerLog(int id);
    }
}
