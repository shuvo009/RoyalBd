using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using GalaSoft.MvvmLight.Command;
using GalaSoft.MvvmLight.Messaging;
using Microsoft.Practices.Unity;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.Model;
using RoyalBd.Model.Model;
using RoyalBd.UI.View;

namespace RoyalBd.UI.ViewModel
{
    public class CustomerViewModel : BaseViewModel<Customer>
    {
        private readonly ICustomerRepository _customerRepository;
        private readonly ICustomerLogRepository _customerLogRepository;
        private readonly IUnityContainer _unityContainer;
        private ObservableCollection<CustomerLog> _customerLogs;

        public CustomerViewModel(ICustomerRepository customerRepository, ICustomerLogRepository customerLogRepository, IUnityContainer unityContainer)
            : base(customerRepository)
        {
            _customerRepository = customerRepository;
            _customerLogRepository = customerLogRepository;
            _unityContainer = unityContainer;
            InitalCommands();
        }

        #region Property

        public ObservableCollection<CustomerLog> CustomerLogs
        {
            get { return _customerLogs; }
            set
            {
                _customerLogs = value;
                RaisePropertyChanged(() => CustomerLogs);
            }
        }

        #endregion

        #region Relay Command

        public RelayCommand<CustomerAccountModel> PaidCommand { get; private set; }
        public RelayCommand<int> ViewAccountCommand { get; private set; }
        #endregion

        #region Private Methods

        private void InitalCommands()
        {
            PaidCommand = new RelayCommand<CustomerAccountModel>(PaidCommandExecute, PaidCommandCanExecute);
            ViewAccountCommand = new RelayCommand<int>(ViewAccountCommandExecute);
        }

        private void PaidCommandExecute(CustomerAccountModel customerAccountModel)
        {
            try
            {
                if (!YesNoMessageBox("Are You Sure Are You Want To Paid?")) return;
                _customerRepository.DuePaid(customerAccountModel.Id, customerAccountModel.PaidAmount);
                Messenger.Default.Send(customerAccountModel.Id, "ReloadAccountInfo");
                ShowMessage("Successfully Paid");
            }
            catch (Exception ex)
            {
                ShowErrorMessage(ex.Message);
            }
        }

        private bool PaidCommandCanExecute(CustomerAccountModel customerAccountModel)
        {
            return customerAccountModel.PaidAmount > 0;
        }

        private void ViewAccountCommandExecute(int id)
        {
            var customerAccountView = _unityContainer.Resolve<CustomerAccountView>();
            customerAccountView.Show();
            customerAccountView.LoadAccountInfo(id);

        }
        #endregion

        #region Override Methods
        internal override void EditCommandExecute(Customer entity)
        {
            var customerView = _unityContainer.Resolve<CustomerView>();
            customerView.Show();
            customerView.EditMode(entity);
        }
        #endregion

        #region public Methods

        public CustomerAccountModel LoadCustomerAccount(int id)
        {
            var customerAccountModel = _customerRepository.AccountInfo(id);
            CustomerLogs = _customerLogRepository.CustomerLog(id);
            return customerAccountModel;
        }
        #endregion
    }
}
