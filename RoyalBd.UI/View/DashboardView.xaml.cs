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

namespace RoyalBd.UI.View
{
    /// <summary>
    /// Interaction logic for DashboardView.xaml
    /// </summary>
    public partial class DashboardView : Window
    {
        public DashboardView()
        {
            InitializeComponent();
        }

        [Dependency]
        public IUnityContainer UnityContainer { get; set; }

        private void NewChallanMenuItemClick(object sender, RoutedEventArgs e)
        {
            UnityContainer.Resolve<ChallanView>().Show();
        }

        private void ChalanListMenuItemClick(object sender, RoutedEventArgs e)
        {
            UnityContainer.Resolve<ChallanListView>().Show();
        }

        private void NewCustomerMenuItemClick(object sender, RoutedEventArgs e)
        {
            UnityContainer.Resolve<CustomerView>().Show();
        }

        private void CustomerListMenuItemClick(object sender, RoutedEventArgs e)
        {
            UnityContainer.Resolve<CustomerListView>().Show();
        }

        private void NewDescriptionMenuItemClick(object sender, RoutedEventArgs e)
        {
            UnityContainer.Resolve<DescriptionView>().Show();
        }

        private void DescriptionListMenuItemClick(object sender, RoutedEventArgs e)
        {
            UnityContainer.Resolve<DescriptionListView>().Show();
        }

        private void NewItemMenuItemClick(object sender, RoutedEventArgs e)
        {
            UnityContainer.Resolve<ItemView>().Show();
        }

        private void ItemListMenuItemClick(object sender, RoutedEventArgs e)
        {
            UnityContainer.Resolve<ItemListView>().Show();
        }
    }
}
