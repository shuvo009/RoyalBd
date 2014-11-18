using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GalaSoft.MvvmLight;

namespace RoyalBd.Model
{
    public class Challan : ViewModelBase
    {
        private int _id;
        private DateTime _challanDate;
        private decimal _totalAmount;
        private string _paymentType;
        private decimal _paidAmount;
        private decimal _dueAmount;

        public Challan()
        {
            ChallanDate = DateTime.Now;
        }

        public int Id
        {
            get { return _id; }
            set
            {
                _id = value;
                RaisePropertyChanged(()=>Id);
            }
        }
        public DateTime ChallanDate
        {
            get { return _challanDate; }
            set
            {
                _challanDate = value;
                RaisePropertyChanged(()=>ChallanDate);
            }
        }
        public decimal TotalAmount
        {
            get { return _totalAmount; }
            set
            {
                _totalAmount = value;
                RaisePropertyChanged(()=>TotalAmount);
            }
        }
        public string PaymentType
        {
            get { return _paymentType; }
            set
            {
                _paymentType = value;
                RaisePropertyChanged(()=>PaymentType);
            }
        }
        public decimal PaidAmount
        {
            get { return _paidAmount; }
            set
            {
                _paidAmount = value;
                RaisePropertyChanged(()=>PaidAmount);
                DueAmount = TotalAmount - PaidAmount;
            }
        }

        public decimal DueAmount
        {
            get { return _dueAmount; }
            set
            {
                _dueAmount = value;
                RaisePropertyChanged(()=>DueAmount);
            }
        }

        public int CustomerId  { get; set; }
    }

}
