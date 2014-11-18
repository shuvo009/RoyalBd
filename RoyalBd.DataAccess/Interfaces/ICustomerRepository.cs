using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RoyalBd.Model;
using RoyalBd.Model.Model;

namespace RoyalBd.DataAccess.Interfaces
{
    public interface ICustomerRepository : IBaseRepository<Customer>
    {
        void DuePaid(int customerId, decimal amount);
        CustomerAccountModel AccountInfo(int id);
        void Due(int customerId, decimal amount);
    }
}
