   M S B A M L   `   `   `  ���� H  DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP8clr-namespace:RoyalBd.Model.Model;assembly=RoyalBd.ModelRoyalBd.Model.Model   
RoyalBd.UI%   RoyalBd.UI.View.ChallanListView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     JModel8clr-namespace:RoyalBd.Model.Model;assembly=RoyalBd.Model       � Title$  Challan List��$	��421��$	��640�� � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico��.���    WindowStyle#��[   � RowDefinitions �� $	��13* ��� $	��15* ��� $
��102* �.+��� $��Challan List��  HeaderStyle#��[ � -    �Name$ 
SearchGrid��$��27,10,285,11q�$��1�� � DataContext %   RoyalBd.Model.Model.SearchModel  .+�(  "System.Windows.Controls.DatePicker  $
��Left=�$	��Top=�$	��131��$��24��   SelectedDate �� *From+ �� Mode$ TwoWay=�  $
��Left=�$��	182,0,0,0q�$	��Top=�$	��138��$��24�� �� *To+$ TwoWay=��� $
��Left=�$��	150,3,0,0q�$
��Wrap=�$��To��$	��Top=��� $��Search��$
��Left=�$��
366,10,0,0q�$��1��$	��Top=�$��85��$��25������ *SearchCommand+����  �� ElementName$ 
SearchGrid�� �� Path$ DataContext�&   System.Windows.Controls.DataGrid  $��
10,0,10,10q�$��2��	   AutoGenerateColumns	 .  
   
IsReadOnly
 . ���� *
Challans+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$
 Date��   MinWidth$	 100Q�1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *ChallanDate+ �� StringFormat$ {0:dd/MM/yyyy hh:mm}��  $ Total Amount��$	 100Q� �� *TotalAmount+  $ Payment Type��$	 100Q� �� *PaymentType+  $ Paid Amount��$	 100Q� �� *
PaidAmount+  $ 	DueAmount��$	 100Q� �� *	DueAmount+4  .System.Windows.Controls.DataGridTemplateColumn     
IsReadOnly .    CellTemplate �� .R���  �� Orientation$ 
Horizontal=�.+��� $��50��$��26��$
��View������ * DataContext.ViewChallanCommand+ �� RelativeSource �� *FindAncestor+ �� AncestorType" ����� *Id+