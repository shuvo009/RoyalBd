using System.Windows;
using GalaSoft.MvvmLight.Messaging;
using Microsoft.Practices.Unity;
using RoyalBd.UI.ViewModel;

namespace RoyalBd.UI.View
{
    /// <summary>
    ///     Interaction logic for LoginView.xaml
    /// </summary>
    public partial class LoginView : Window
    {
        public LoginView()
        {
            InitializeComponent();
            Messenger.Default.Register<string>(this, "CloseLoginWindow", (s) => Close());
        }

        [Dependency]
        public LoginViewModel LoginViewModel
        {
            set { DataContext = value; }
        }
    }
}