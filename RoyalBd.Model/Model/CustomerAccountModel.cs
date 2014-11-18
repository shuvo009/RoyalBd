using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RoyalBd.Model.Model
{
    public class CustomerAccountModel : Customer
    {
        private decimal _paidAmount;

        public decimal PaidAmount
        {
            get { return _paidAmount; }
            set
            {
                _paidAmount = value;
                RaisePropertyChanged(() => PaidAmount);
            }
        }

        public decimal Balance
        {
            get { return TotalDue - TotalPaid; }
        }
    }
}
