using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using GalaSoft.MvvmLight.Messaging;
using Microsoft.Practices.Unity;
using RoyalBd.UI.ViewModel;

namespace RoyalBd.UI.View
{
    /// <summary>
    /// Interaction logic for CustomerAccountView.xaml
    /// </summary>
    public partial class CustomerAccountView : Window
    {
        private CustomerViewModel _customerViewModel;

        public CustomerAccountView()
        {
            InitializeComponent();
            Messenger.Default.Register<int>(this, "ReloadAccountInfo", LoadAccountInfo);
        }

        [Dependency]
        public CustomerViewModel CustomerViewModel
        {
            set
            {
                _customerViewModel = value;
                DataContext = value;
            }
        }

        public void LoadAccountInfo(int id)
        {
            AccountInfoGrid.DataContext = _customerViewModel.LoadCustomerAccount(id);
        }
    }
}
