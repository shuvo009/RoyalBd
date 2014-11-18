using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RoyalBd.DataAccess.Extensions;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.Model;

namespace RoyalBd.DataAccess.Repository
{
    public class CustomerLogRepository : BaseRepository<CustomerLog>, ICustomerLogRepository
    {
        public ObservableCollection<CustomerLog> CustomerLog(int id)
        {
            var query = String.Format("Select * From CustomerLog WHERE CustomerId ={0}", id);
            var customerLogs = ReadCommand(query).ToList<CustomerLog>();
            return new ObservableCollection<CustomerLog>(customerLogs);
        }
    }
}
