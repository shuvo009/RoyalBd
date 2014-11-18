using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GalaSoft.MvvmLight;

namespace RoyalBd.Model
{
    public class ChallanItem : ViewModelBase, ICloneable
    {
        private int _id;
        private string _description;
        private string _itemNo;
        private int _quantity;
        private string _unit;
        private decimal _rate;
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

        public string Description
        {
            get { return _description; }
            set
            {
                _description = value;
                RaisePropertyChanged(() => Description);
            }
        }

        public string ItemNo
        {
            get { return _itemNo; }
            set
            {
                _itemNo = value;
                RaisePropertyChanged(() => ItemNo);
            }
        }

        public int Quantity
        {
            get { return _quantity; }
            set
            {
                _quantity = value;
                RaisePropertyChanged(() => Quantity);
            }
        }

        public string Unit
        {
            get { return _unit; }
            set
            {
                _unit = value;
                RaisePropertyChanged(()=>Unit);
            }
        }

        public decimal Rate
        {
            get { return _rate; }
            set
            {
                _rate = value;
                RaisePropertyChanged(()=>Rate);
            }
        }

        public decimal Amount
        {
            get { return _amount; }
            set
            {
                _amount = value;
                RaisePropertyChanged(()=>Amount);
            }
        }

        public int ChallanId { get; set; }


        public object Clone()
        {
            return new ChallanItem
            {
                Id = Id,
                Amount = Amount,
                ChallanId = ChallanId,
                Description = Description,
                ItemNo = ItemNo,
                Quantity = Quantity,
                Rate = Rate,
                Unit = Unit,
            };
        }
    }
}
