using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RoyalBd.DataAccess.Extensions;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.Model;

namespace RoyalBd.DataAccess.Repository
{
    public class AccountRepository : BaseRepository<Account>, IAccountRepository
    {
        public bool Login(Account account)
        {
            var query = String.Format("Select * from Account where Username = '{0}' AND Password = '{1}'", account.Username, account.Password);
            var loginAccount = ReadCommand(query).ToList<Account>();
            return loginAccount.Any();
        }

        public void ChangePassword(string password)
        {
            var accountInfo = All().FirstOrDefault();
            if (accountInfo == null)
                throw new Exception("Account Info is not found");
            accountInfo.Password = password;
            Update(accountInfo);
        }
    }
}
