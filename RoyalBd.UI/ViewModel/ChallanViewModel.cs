using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using GalaSoft.MvvmLight.Command;
using GalaSoft.MvvmLight.Messaging;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.Model;
using RoyalBd.UI.Helpers;

namespace RoyalBd.UI.ViewModel
{
    public class ChallanViewModel : BaseViewModel<Challan>
    {
        private readonly IChallanRepository _challanRepository;
        private readonly IChallanItemRepository _challanItemRepository;
        private readonly IItemRepository _itemRepository;
        private readonly ICustomerRepository _customerRepository;
        private readonly IDescriptionRepository _descriptionRepository;
        private Challan _challan;
        private ObservableCollection<ChallanItem> _challanItems;

        public ChallanViewModel(IChallanRepository challanRepository,
            IChallanItemRepository challanItemRepository,
            IItemRepository itemRepository,
            ICustomerRepository customerRepository,
            IDescriptionRepository descriptionRepository)
            : base(challanRepository)
        {
            _challanRepository = challanRepository;
            _challanItemRepository = challanItemRepository;
            _itemRepository = itemRepository;
            _customerRepository = customerRepository;
            _descriptionRepository = descriptionRepository;
            Reset();
            InitalChallan();
            InitalCommands();
        }


        #region Propertys

        public Challan Challan
        {
            get { return _challan; }
            set
            {
                _challan = value;
                RaisePropertyChanged(() => Challan);
            }
        }

        public ObservableCollection<ChallanItem> ChallanItems
        {
            get { return _challanItems; }
            set
            {
                _challanItems = value;
                RaisePropertyChanged(() => ChallanItems);
            }
        }

        public IEnumerable<Item> Items { get; set; }
        public IEnumerable<Description> Descriptions { get; set; }
        public IEnumerable<Customer> Customers { get; set; }
        #endregion

        #region Relay Command

        public RelayCommand<ChallanItem> AddChallanItemCommand { get; private set; }
        public RelayCommand<int> RemoveChallanItemCommand { get; private set; }
        public RelayCommand SaveCommand { get; private set; }
        public RelayCommand PrintCommand { get; private set; }

        #endregion

        #region Public Methods

        public void LoadChallan(int id)
        {
            Challan = _challanRepository.Find(id);
            ChallanItems = new ObservableCollection<ChallanItem>(_challanItemRepository.ChallanItems(id));
            IsEditMode = true;
        }

        #endregion

        #region Private Methods

        private void Reset()
        {
            Challan = new Challan();
            Challan.PaymentType = "Cash";
            ChallanItems = new ObservableCollection<ChallanItem>();
        }

        private void UpdateChallanInfo()
        {
            Challan.TotalAmount = ChallanItems.Sum(x => x.Amount);
            Challan.DueAmount = Challan.TotalAmount - Challan.PaidAmount;
        }

        private void InitalChallan()
        {
            Items = _itemRepository.All();
            Descriptions = _descriptionRepository.All();
            Customers = _customerRepository.All();
        }

        private void InitalCommands()
        {
            AddChallanItemCommand = new RelayCommand<ChallanItem>(AddChallanItemCommandExecute, AddChallanItemCommandCanExecute);
            RemoveChallanItemCommand = new RelayCommand<int>(RemoveChallanItemCommandExecute, RemoveChallanItemCommandCanExecute);
            SaveCommand = new RelayCommand(SaveCommandExecute);
            PrintCommand = new RelayCommand(PrintCommandExecute);
        }

        private void AddChallanItemCommandExecute(ChallanItem challanItem)
        {
            try
            {
                challanItem.Id = -(ChallanItems.Count + 1);
                challanItem.Amount = challanItem.Rate * challanItem.Quantity;
                ChallanItems.Add(challanItem.Clone() as ChallanItem);
                challanItem.Rate = 0;
                UpdateChallanInfo();
                challanItem.ClearAllProperty();
            }
            catch (Exception ex)
            {
                ShowErrorMessage(ex.Message);
            }
        }

        private bool AddChallanItemCommandCanExecute(ChallanItem challanItem)
        {
            return challanItem.Rate > 0 && challanItem.Quantity > 0;
        }

        private void RemoveChallanItemCommandExecute(int id)
        {
            try
            {
                ChallanItems.Remove(ChallanItems.First(x => x.Id == id));
                UpdateChallanInfo();
            }
            catch (Exception ex)
            {
                ShowErrorMessage(ex.Message);
            }
        }

        private bool RemoveChallanItemCommandCanExecute(int id)
        {
            return !IsEditMode;
        }

        private void SaveCommandExecute()
        {
            try
            {
                if (!YesNoMessageBox("Are You Sure Are You Want To Save")) return;
                var challanId =  _challanRepository.Add(Challan);
                foreach (var challanItem in ChallanItems)
                {
                    challanItem.ChallanId = challanId;
                    _challanItemRepository.Add(challanItem);
                }
                if(Challan.PaidAmount>0)
                    _customerRepository.DuePaid(Challan.CustomerId, Challan.PaidAmount);
                
                if(Challan.DueAmount>0)
                    _customerRepository.Due(Challan.CustomerId, Challan.DueAmount);
                ShowMessage("Successfully Saved");
                Messenger.Default.Send("Close", "ChallanWidow");
            }
            catch (Exception ex)
            {
                ShowErrorMessage(ex.Message);
            }
        }

        private void PrintCommandExecute()
        {
            try
            {

            }
            catch (Exception ex)
            {
                ShowErrorMessage(ex.Message);
            }
        }
        #endregion
    }
}
