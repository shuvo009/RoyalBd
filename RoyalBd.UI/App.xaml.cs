using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Windows;
using Microsoft.Practices.Unity;
using RoyalBd.DataAccess.Interfaces;
using RoyalBd.DataAccess.Repository;
using RoyalBd.UI.View;

namespace RoyalBd.UI
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public App()
        {
           this.InitializeComponent();
        }


        protected override void OnStartup(StartupEventArgs e)
        {
            InitDi();
        }

        #region Private Method
        private void InitDi()
        {
            IUnityContainer container = new UnityContainer();
            container.RegisterType<IChallanItemRepository, ChallanItemRepository>();
            container.RegisterType<IChallanRepository, ChallanRepository>();
            container.RegisterType<ICustomerLogRepository, CustomerLogRepository>();
            container.RegisterType<ICustomerRepository, CustomerRepository>();
            container.RegisterType<IDescriptionRepository, DescriptionRepository>();
            container.RegisterType<IItemRepository, ItemRepository>();
            container.RegisterType<IAccountRepository, AccountRepository>();

            var loginView = container.Resolve<LoginView>();
            loginView.Show();
        }
        #endregion

        private void App_OnStartup(object sender, StartupEventArgs e)
        {
        }
    }

 
}
