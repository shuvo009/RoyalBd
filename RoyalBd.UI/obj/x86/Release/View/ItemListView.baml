   M S B A M L   `   `   `  ����   
RoyalBd.UI"    RoyalBd.UI.View.ItemListView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Icon$0  */RoyalBd.UI;component/Styles/Inventory.ico�� � Title$ 	Item List��$	��300��$	��300�� � WindowStartupLocation$ CenterScreen=�.���    WindowStyle#��[   � RowDefinitions �� $	��36* ��� $
��233* �.+��� $��	Item List��  HeaderStyle#��[ $��0,0,0,2q�&   System.Windows.Controls.DataGrid  $��0,5,0,0q�$��1�����	#FF727272   AutoGenerateColumns .     
IsReadOnly . ���� *
AllItems+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$
 Item��   MinWidth$	 100Q�1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 �� *Name+4  .System.Windows.Controls.DataGridTemplateColumn  
   
IsReadOnly
 .    CellTemplate �� .R���  �� Orientation$ 
Horizontal=�.+��� $��0,0,5,0q�$��41��$��26��$
��Edit������  �� Path$ DataContext.EditCommand� �� RelativeSource �� *FindAncestor+ �� AncestorType" ����� �� $��41��$��26��$��Delete������ $ DataContext.DeleteCommand� �� *FindAncestor+" ����� *Id+