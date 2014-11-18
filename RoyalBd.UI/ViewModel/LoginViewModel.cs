using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GalaSoft.MvvmLight.Command;
using GalaSoft.MvvmLight.Messaging;
using Microsoft.Practices.Unity;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.Model;
using RoyalBd.UI.View;

namespace RoyalBd.UI.ViewModel
{
    public class LoginViewModel : BaseViewModel<Account>
    {
        private readonly IAccountRepository _accountRepository;
        private readonly IUnityContainer _unityContainer;

        public LoginViewModel(IAccountRepository accountRepository, IUnityContainer unityContainer)
            : base(accountRepository)
        {
            _accountRepository = accountRepository;
            _unityContainer = unityContainer;
            InitalCommands();
        }

        #region Relay Command

        public RelayCommand<Account> LoginCommand { get; private set; }
        public RelayCommand<string> ChangePasswordCommand { get; private set; }
        #endregion

        #region Private Methods

        private void InitalCommands()
        {
            LoginCommand = new RelayCommand<Account>(LoginCommandExecute, LoginCommandCanExecute);
            ChangePasswordCommand = new RelayCommand<string>(ChangePasswordCommandExecute, ChangePasswordCanCommandExecute);
        }

        private void LoginCommandExecute(Account account)
        {
            try
            {
                if (!_accountRepository.Login(account))
                {
                    ShowErrorMessage("Invalid Username And Password");
                    account.Password = String.Empty;
                    return;
                }
                var dashBoardView = _unityContainer.Resolve<DashboardView>();
                dashBoardView.Show();
                Messenger.Default.Send("Login Success","CloseLoginWindow");
            }
            catch (Exception ex)
            {
                ShowErrorMessage(ex.Message);
            }
        }

        private bool LoginCommandCanExecute(Account account)
        {
            return !String.IsNullOrEmpty(account.Username)
                   && !String.IsNullOrEmpty(account.Password);
        }

        private void ChangePasswordCommandExecute(string password)
        {
            try
            {
                if (!YesNoMessageBox("Are You Sure Are You Want To Change Password ?")) return;
                _accountRepository.ChangePassword(password);
                ShowMessage("Password Changed Successfully");
            }
            catch (Exception ex)
            {
                ShowErrorMessage(ex.Message);
            }
        }

        private bool ChangePasswordCanCommandExecute(string password)
        {
            return !String.IsNullOrEmpty(password);
        }
        #endregion
    }
}
