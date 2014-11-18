﻿using System;
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
using RoyalBd.UI.ViewModel;

namespace RoyalBd.UI.View
{
    /// <summary>
    /// Interaction logic for CustomerListView.xaml
    /// </summary>
    public partial class CustomerListView : Window
    {
        public CustomerListView()
        {
            InitializeComponent();
        }

        [Dependency]
        public CustomerViewModel ItemViewModel
        {
            set
            {
                value.LoadAllItem();
                DataContext = value;
            }
        }
    }
}