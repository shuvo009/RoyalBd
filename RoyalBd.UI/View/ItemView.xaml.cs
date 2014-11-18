
using System.Windows;
using Microsoft.Practices.Unity;
using RoyalBd.Model;
using RoyalBd.UI.ViewModel;


namespace RoyalBd.UI.View
{
    /// <summary>
    /// Interaction logic for ItemView.xaml
    /// </summary>
    public partial class ItemView : Window
    {
        private ItemViewModel _itemViewModel;
        public ItemView()
        {
            InitializeComponent();
        }

        [Dependency]
        public ItemViewModel ItemViewModel
        {
            set
            {
                DataContext = value;
                _itemViewModel = value;
            }
        }

        public void EditMode(Item item)
        {
            _itemViewModel.IsEditMode = true;
            _itemViewModel.AddUpdateButtonContent = "Update";
            NameTextBox.DataContext = item;
        }
    }
}
