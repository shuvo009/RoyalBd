   M S B A M L   `   `   `  ����   
RoyalBd.UI&     RoyalBd.UI.View.CustomerListView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  Customer List��$	��491��$	��750�� � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico��.���    WindowStyle#��[   � RowDefinitions �� $	��47* ��� $
��413* �.+��� $��Customer List��  HeaderStyle#��[ &   System.Windows.Controls.DataGrid  $��0,5,0,0q�$��1�����	#FF727272   AutoGenerateColumns .     
IsReadOnly . ���� *
AllItems+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$
 Name��   MinWidth$	 100Q�1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *CustomerName+  $ Phone��$	 100Q� �� *Phone+  $ Address��$	 100Q� �� *	Address+  $ 
Total Paid��$	 100Q� �� *	TotalPaid+  $ 	Total Due��$	 100Q� �� *
TotalDue+4  .System.Windows.Controls.DataGridTemplateColumn  	   
IsReadOnly	 . 
   CellTemplate
 �� .R���  �� Orientation$ 
Horizontal=�.+��� $��0,0,5,0q�$��80��$��26��$��Account������  �� Path$$ DataContext.ViewAccountCommand� �� RelativeSource �� *FindAncestor+ �� AncestorType" ����� *Id+�� $��0,0,5,0q�$��40��$��26��$
��Edit������ $ DataContext.EditCommand� �� *FindAncestor+" ����� �� $��50��$��26��$��Delete������ $ DataContext.DeleteCommand� �� *FindAncestor+" ����� *Id+