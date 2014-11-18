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
    /// Interaction logic for DescriptionView.xaml
    /// </summary>
    public partial class DescriptionView : Window
    {
        private DescriptionViewModel _descriptionViewModel;

        public DescriptionView()
        {
            InitializeComponent();
        }

        [Dependency]
        public DescriptionViewModel DescriptionViewModel
        {
            set
            {
                _descriptionViewModel = value;
                DataContext = value;
            }
        }

        public void EditMode(Description description)
        {
            NameTextBox.DataContext = description;
            _descriptionViewModel.IsEditMode = true;
            _descriptionViewModel.AddUpdateButtonContent = "Update";
        }
    }
}
