   M S B A M L   `   `   `  ����H  DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullD2clr-namespace:RoyalBd.Model;assembly=RoyalBd.ModelRoyalBd.Model  5   	    
RoyalBd.UI   RoyalBd.UI.View.ItemView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   DModel2clr-namespace:RoyalBd.Model;assembly=RoyalBd.Model     5   	     � Icon$0  */RoyalBd.UI;component/Styles/Inventory.ico��5       � Title$
 Item��5   	   $	��333��6   $	��433��6#    � WindowStartupLocation$ CenterScreen=�6/   .��5      �    WindowStyle#��[  6    � RowDefinitions 5      �� 5	      $	��97* �6   �� 5
      $
��205* �6    � ColumnDefinitions 5      �� 5      $
��141* �6   �� 5      $
��264* �6   �� 5      $
��142* �6   .+�5      �� $��Right=�6   $��0,10,0,0q�6*   $
��Wrap=�6<   $��Item Name :��6P   $	��Top=�6c   $��1��6{   �� 5      -   5         ��Name$ NameTextBox��5      $��1��6!   $��	10,10,0,0q�61   $��1��6D    �� TextWrapping$
 Wrap=�6Q   $	��Top=�6{   ��6e   �� *Name+.��6�    � DataContext 5         RoyalBd.Model.Item  5      .��5      5      �� 5      $
��Wrap=�6   $
��Item��6"   $	��Top=�6.   $��0��6F   $��3��6S   $��0��6g     HeaderStyle#��[ 6w   �� 5   
   $��1��6�   $��	10,54,0,0q�6�   $��1��6�   $	��Top=�6�   $��195.119��6�   $��33.393��6   ��6   �� *AddUpdateButtonContent+��6<   �� *AddUpdateCommand+��6a   ��  �� ElementName$ NameTextBox��	 �� Path$	 DataContext�6   5      5      