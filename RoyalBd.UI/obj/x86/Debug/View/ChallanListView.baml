   M S B A M L   `   `   `  ����H  DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP8clr-namespace:RoyalBd.Model.Model;assembly=RoyalBd.ModelRoyalBd.Model.Model  5   	    
RoyalBd.UI%   RoyalBd.UI.View.ChallanListView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   JModel8clr-namespace:RoyalBd.Model.Model;assembly=RoyalBd.Model     5   	     � Title$  Challan List��5   	   $	��421��6   $	��640��6+    � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico��67   .��5      �    WindowStyle#��[  6    � RowDefinitions 5   
   �� 5      $	��13* �6   �� 5	      $	��15* �6   �� 5
      $
��102* �6   .+�5   
   �� $��Challan List��6     HeaderStyle#��[ 6(   � 5   
   -   5         �Name$ 
SearchGrid��5      $��27,10,285,11q�6#   $��1��69    � DataContext 5      %   RoyalBd.Model.Model.SearchModel  5      .+�5      (  "System.Windows.Controls.DatePicker  $
��Left=�6   $	��Top=�64   $	��131��6L   $��24��6X      SelectedDate 6d   �� *From+ �� Mode$ TwoWay=�  5      $
��Left=�6   $��	182,0,0,0q�64   $	��Top=�6G   $	��138��6_   $��24��6k    6w   �� *To+$ TwoWay=��� 5      $
��Left=�6   $��	150,3,0,0q�63   $
��Wrap=�6F   $��To��6Z   $	��Top=�6d   5      �� 5   
   $��Search��6   $
��Left=�6"   $��
366,10,0,0q�6=   $��1��6Q   $	��Top=�6^   $��85��6v   $��25��6�   ��6�   �� *SearchCommand+��6�   ��  �� ElementName$ 
SearchGrid�� �� Path$ DataContext�&   System.Windows.Controls.DataGrid  5   
   $��
10,0,10,10q�6   $��2��6'   	   AutoGenerateColumns	 .  
   
IsReadOnly
 . ��6b   �� *
Challans+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Date��6l      MinWidth$	 100Q�6z   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ChallanDate+ �� StringFormat$ {0:dd/MM/yyyy hh:mm}��6z     5      $ Total Amount��6E   $	 100Q�6[    6%   �� *TotalAmount+6[     5      $ Payment Type��6E   $	 100Q�6[    6%   �� *PaymentType+6[     5      $ Paid Amount��6D   $	 100Q�6Y    6%   �� *
PaidAmount+6Y     5      $ 	DueAmount��6C   $	 100Q�6V    6%   �� *	DueAmount+6V   4  .System.Windows.Controls.DataGridTemplateColumn  5         
IsReadOnly .    CellTemplate 5      �� 5       .R�5!      ��  �� Orientation$ 
Horizontal=�6)   .+�5"   "   �� $��50��6)   $��26��64   $
��View��6�   ��6@   �� * DataContext.ViewChallanCommand+ �� RelativeSource �� *FindAncestor+ �� AncestorType" ���6�   �� *Id+6�   5#      5$      5&      5(      5*      5+      