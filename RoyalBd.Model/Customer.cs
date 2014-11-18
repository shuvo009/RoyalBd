using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GalaSoft.MvvmLight;

namespace RoyalBd.Model
{
    public class Customer : ViewModelBase
    {
        private int _id;
        private string _customerName;
        private string _address;
        private string _phone;
        private decimal _totalPaid;
        private decimal _totalDue;

        public int Id
        {
            get { return _id; }
            set
            {
                _id = value;
                RaisePropertyChanged(() => Id);
            }
        }

        public string CustomerName
        {
            get { return _customerName; }
            set
            {
                _customerName = value;
                RaisePropertyChanged(() => CustomerName);
            }
        }

        public string Address
        {
            get { return _address; }
            set
            {
                _address = value;
                RaisePropertyChanged(() => Address);
            }
        }

        public string Phone
        {
            get { return _phone; }
            set
            {
                _phone = value;
                RaisePropertyChanged(() => Phone);
            }
        }

        public decimal TotalPaid
        {
            get { return _totalPaid; }
            set
            {
                _totalPaid = value;
                RaisePropertyChanged(() => TotalPaid);
            }
        }

        public decimal TotalDue
        {
            get { return _totalDue; }
            set
            {
                _totalDue = value;
                RaisePropertyChanged(() => TotalDue);
            }
        }
    }
}
