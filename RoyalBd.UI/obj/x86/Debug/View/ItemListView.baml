   M S B A M L   `   `   `  ����  
RoyalBd.UI"    RoyalBd.UI.View.ItemListView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Icon$0  */RoyalBd.UI;component/Styles/Inventory.ico��5   	    � Title$ 	Item List��5   	   $	��300��6   $	��300��6(    � WindowStartupLocation$ CenterScreen=�64   .��5      �    WindowStyle#��[  6    � RowDefinitions 5      �� 5      $	��36* �6   �� 5	      $
��233* �6   .+�5   
   �� $��	Item List��6     HeaderStyle#��[ 6%   $��0,0,0,2q�6J   &   System.Windows.Controls.DataGrid  5   
   $��0,5,0,0q�6   $��1��6$   ���	#FF727272   AutoGenerateColumns .     
IsReadOnly . ��6H   �� *
AllItems+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Item��68      MinWidth$	 100Q�6F   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6   �� *Name+6F   4  .System.Windows.Controls.DataGridTemplateColumn  5      
   
IsReadOnly
 .    CellTemplate 5      �� 5      .R�5      ��  �� Orientation$ 
Horizontal=�6)   .+�5   "   �� $��0,0,5,0q�6)   $��41��6:   $��26��6E   $
��Edit��6�   ��6Q   ��  �� Path$ DataContext.EditCommand� �� RelativeSource �� *FindAncestor+ �� AncestorType" ���6�   �� 6�   �� 5   "   $��41��6)   $��26��64   $��Delete��6�   ��6@   �� $ DataContext.DeleteCommand� �� *FindAncestor+" ���6�   �� *Id+6�   5      5      5      5      5      5      