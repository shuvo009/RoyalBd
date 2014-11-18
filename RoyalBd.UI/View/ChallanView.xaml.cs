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
    /// Interaction logic for ChallanView.xaml
    /// </summary>
    public partial class ChallanView : Window
    {
        private ChallanViewModel _challanViewModel;

        public ChallanView()
        {
            InitializeComponent();
            Messenger.Default.Register<string>(this, "ChallanWidow", (command) => Close());
        }

        [Dependency]
        public ChallanViewModel ChallanViewModel
        {
            set
            {
                _challanViewModel = value;
                DataContext = value;
            }
        }

        public void LoadChallan(int id)
        {
            _challanViewModel.LoadChallan(id);
        }
    }
}
