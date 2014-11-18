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
using Microsoft.Practices.Unity;
using RoyalBd.Model;
using RoyalBd.UI.ViewModel;

namespace RoyalBd.UI.View
{
    /// <summary>
    /// Interaction logic for CustomerView.xaml
    /// </summary>
    public partial class CustomerView : Window
    {
        private CustomerViewModel _customerViewModel;

        public CustomerView()
        {
            InitializeComponent();
        }

        [Dependency]
        public CustomerViewModel CustomerViewModel
        {
            set
            {
                DataContext = value;
                _customerViewModel = value;
            }
        }

        public void EditMode(Customer entity)
        {
            CustomerInfo.DataContext = entity;
            _customerViewModel.IsEditMode = true;
            _customerViewModel.AddUpdateButtonContent = "Update";
        }
    }
}
