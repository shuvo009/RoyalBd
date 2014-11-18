using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using RoyalBd.Model;

namespace RoyalBd.DataAccess.Interfaces
{
    public interface IAccountRepository : IBaseRepository<Account>
    {
        bool Login(Account account);
        void ChangePassword(string password);
    }
}
