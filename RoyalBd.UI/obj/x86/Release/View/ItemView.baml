   M S B A M L   `   `   `  ���� H  DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullD2clr-namespace:RoyalBd.Model;assembly=RoyalBd.ModelRoyalBd.Model   
RoyalBd.UI   RoyalBd.UI.View.ItemView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     DModel2clr-namespace:RoyalBd.Model;assembly=RoyalBd.Model       � Icon$0  */RoyalBd.UI;component/Styles/Inventory.ico�� � Title$
 Item��$	��333��$	��433�� � WindowStartupLocation$ CenterScreen=�.���    WindowStyle#��[   � RowDefinitions �� $	��97* ��� $
��205* � � ColumnDefinitions �� $
��141* ��� $
��264* ��� $
��142* �.+��� $��Right=�$��0,10,0,0q�$
��Wrap=�$��Item Name :��$	��Top=�$��1���� -    ��Name$ NameTextBox��$��1��$��	10,10,0,0q�$��1�� �� TextWrapping$
 Wrap=�$	��Top=����� *Name+.�� � DataContext    RoyalBd.Model.Item  .���� $
��Wrap=�$
��Item��$	��Top=�$��0��$��3��$��0��  HeaderStyle#��[ �� $��1��$��	10,54,0,0q�$��1��$	��Top=�$��195.119��$��33.393������ *AddUpdateButtonContent+���� *AddUpdateCommand+����  �� ElementName$ NameTextBox��	 �� Path$	 DataContext�