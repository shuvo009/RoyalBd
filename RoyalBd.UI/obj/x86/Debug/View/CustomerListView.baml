   M S B A M L   `   `   `  ����  
RoyalBd.UI&     RoyalBd.UI.View.CustomerListView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Customer List��5   	   $	��491��6   $	��750��6,    � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico��68   .��5      �    WindowStyle#��[  6    � RowDefinitions 5   
   �� 5      $	��47* �6   �� 5      $
��413* �6   .+�5
   
   �� $��Customer List��6     HeaderStyle#��[ 6)   &   System.Windows.Controls.DataGrid  5   
   $��0,5,0,0q�6   $��1��6$   ���	#FF727272   AutoGenerateColumns .     
IsReadOnly . ��6H   �� *
AllItems+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Name��6F      MinWidth$	 100Q�6T   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *CustomerName+6T     5      $ Phone��6?   $	 100Q�6N    6%   �� *Phone+6N     5      $ Address��6A   $	 100Q�6R    6%   �� *	Address+6R     5      $ 
Total Paid��6C   $	 100Q�6W    6%   �� *	TotalPaid+6W     5      $ 	Total Due��6B   $	 100Q�6U    6%   �� *
TotalDue+6U   4  .System.Windows.Controls.DataGridTemplateColumn  5      	   
IsReadOnly	 . 
   CellTemplate
 5      �� 5      .R�5      ��  �� Orientation$ 
Horizontal=�6)   .+�5   "   �� $��0,0,5,0q�6)   $��80��6:   $��26��6E   $��Account��6�   ��6Q   ��  �� Path$$ DataContext.ViewAccountCommand� �� RelativeSource �� *FindAncestor+ �� AncestorType" ���6�   �� *Id+6�   �� 5   "   $��0,0,5,0q�6)   $��40��6:   $��26��6E   $
��Edit��6�   ��6Q   �� $ DataContext.EditCommand� �� *FindAncestor+" ���6�   �� 6�   �� 5   "   $��50��6)   $��26��64   $��Delete��6�   ��6@   �� $ DataContext.DeleteCommand� �� *FindAncestor+" ���6�   �� *Id+6�   5      5      5      5      5      5       