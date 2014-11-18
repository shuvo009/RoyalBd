using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.Model;
using RoyalBd.Model.Model;

namespace RoyalBd.DataAccess.Repository
{
    public class CustomerRepository : BaseRepository<Customer>, ICustomerRepository
    {
        private readonly ICustomerLogRepository _customerLogRepository;

        public CustomerRepository(ICustomerLogRepository customerLogRepository)
        {
            _customerLogRepository = customerLogRepository;
        }

        public void DuePaid(int customerId, decimal amount)
        {
            var customerInfo = Find(customerId);
            customerInfo.TotalPaid += amount;
            Update(customerInfo);

            var customerLog = new CustomerLog
            {
                Amount = amount,
                LogDate = DateTime.Now,
                LogType = "Paid",
                CustomerId = customerInfo.Id
            };

            _customerLogRepository.Add(customerLog);

        }

        public void Due(int customerId, decimal amount)
        {
            var customerInfo = Find(customerId);
            customerInfo.TotalDue += amount;
            Update(customerInfo);

            var customerLog = new CustomerLog
            {
                Amount = amount,
                LogDate = DateTime.Now,
                LogType = "Due",
                CustomerId = customerInfo.Id
            };

            _customerLogRepository.Add(customerLog);

        }

        public CustomerAccountModel AccountInfo(int id)
        {
            var customerInfo = Find(id);
            return new CustomerAccountModel
            {
                Address = customerInfo.Address,
                CustomerName = customerInfo.CustomerName,
                Phone = customerInfo.Phone,
                TotalDue= customerInfo.TotalDue,
                TotalPaid= customerInfo.TotalPaid,
                Id = customerInfo.Id
            };
        }
    }
}
