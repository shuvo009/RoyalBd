using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GalaSoft.MvvmLight;

namespace RoyalBd.Model
{
    public class CustomerLog : ViewModelBase
    {
        private int _id;
        private DateTime _logDate;
        private string _logType;
        private int _challanId;
        private decimal _amount;

        public int Id
        {
            get { return _id; }
            set
            {
                _id = value;
                RaisePropertyChanged(() => Id);
            }
        }

        public DateTime LogDate
        {
            get { return _logDate; }
            set
            {
                _logDate = value;
                RaisePropertyChanged(() => LogDate);
            }
        }

        public string LogType
        {
            get { return _logType; }
            set
            {
                _logType = value;
                RaisePropertyChanged(() => LogType);
            }
        }

        public int ChallanId
        {
            get { return _challanId; }
            set
            {
                _challanId = value;
                RaisePropertyChanged(() => ChallanId);
            }
        }

        public decimal Amount
        {
            get { return _amount; }
            set
            {
                _amount = value;
                RaisePropertyChanged(() => Amount);
            }
        }

        public int CustomerId { get; set; }
    }
}
