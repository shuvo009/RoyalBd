   M S B A M L   `   `   `  ���� E  ARoyalBd.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:RoyalBd.UI.ConverterRoyalBd.UI.Converter  H DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullD2clr-namespace:RoyalBd.Model;assembly=RoyalBd.ModelRoyalBd.Model !    RoyalBd.UI.View.ChallanView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     8	converter"clr-namespace:RoyalBd.UI.Converter     DModel2clr-namespace:RoyalBd.Model;assembly=RoyalBd.Model     -     �Name$  ChllanWindow�� � Title$ Challan��$	��582��$	��940�� � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico�� � 	Resources /   )RoyalBd.UI.Converter.PaymentTypeConverter   PaymentTypeConverter&    RoyalBd.UI.Converter.BoolReverse  BoolReverse��%   &	        &	          .���   WindowStyle#��[  � RowDefinitions �� $	��39* ��� $
��113* ��� $
��282* ��� $
��117* �.+��� $��Challan��  HeaderStyle#��[ � $��1��{��� *
IsEditMode+ �� 	Converter# [  � ColumnDefinitions �� $
��459* ��� $
��473* �.+�� -    �Name$ ChallanItemGrid�� �� $	��89* ��� $
��150* ��� $	��67* ��� $
��154* � � DataContext   RoyalBd.Model.ChallanItem  .+��� $��5,10,0,0q�$	��Top=�$��1��	 �� SelectedValuePath$
	 Name��
 �� DisplayMemberPath$

 Name������ *DataContext.Items+ �� ElementName$ ChllanWindow�� �� SelectedValue �� *ItemNo+�� $��Right=�$��0,11,0,0q�$
��Wrap=�$��Item :��$	��Top=��� $��Right=�$��
0,50.5,0,0q�$
��Wrap=�$��Description :��$	��Top=��� $��Right=�$��0,88.346,0,0q�$
��Wrap=�$��Unit :��$	��Top=��� $��Right=�$��0,10,0,0q�$
��Wrap=�$��
Quantity :��$	��Top=�$��2���� $��0,49.773,0,0q�$
��Wrap=�$��Rate :��$	��Top=�$��2��$��Right=��� $��5,47.773,0,0q�$	��Top=�$��1��$
	 Name��$

 Name������ *DataContext.Descriptions+$ ChllanWindow�� �� *Description+�� $��23��$��5,85.079,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$��1������ *Unit+�� $��23��$��
5,8.96,0,0q�$
 Wrap=�$	��Top=�$��3������ *
Quantity+ �� UpdateSourceTrigger$ PropertyChanged=��� $��23��$��5,46.733,0,0q�$
 Wrap=�$	��Top=�$��3������ *Rate+$ PropertyChanged=��� $	��Add��$��3��$��5,81.686,0,0q�$	��Top=����� $ ChllanWindow�� �� Path$' !DataContext.AddChallanItemCommand����� $ ChallanItemGrid��$ DataContext�� $��1��$��0q� �� $	��24* ��� $	��62* ��� $	��86* ��� $
��192* ��� $
��109* �.+�	� $
��Cash��$��1��$
��Left=�$	��Top=�$��0,12,0,0q� d� 	IsChecked �� $ Challan.PaymentType� �� ConverterParameter$
 Cash��# [   �� Mode$ TwoWay=�	� $
��Bank��$��1��$
��Left=�$	��Top=�$��0,45,0,0q� �� $ Challan.PaymentType�$
 Bank��# [  $ TwoWay=�	� $	��Due��$��1��$
��Left=�$	��Top=�$��0,78,0,0q� �� $ Challan.PaymentType�$	 Due��# [  $ TwoWay=��� $��2��$��Right=�$��0,10,-0.001,0q�$
��Wrap=�$��
Customer :��$	��Top=��� $��3��$��5,9,0,0q�$	��Top=�$
 CustomerName��$	 Id������ *	Customers+ �� *Challan.CustomerId+�� $��2��$��Right=�$��0,45,191.999,0q�$
��Wrap=�$��Paid Amount :��$	��Top=�$��2���� $��23��$��5,39.733,0,0q�$
 Wrap=�$	��Top=�$��3������ *Challan.PaidAmount+$ TwoWay=�$ PropertyChanged=��� $
��Save��$��4��$��0,78.606,10,0q�$	��Top=����� *SaveCommand+(  "System.Windows.Controls.DatePicker  $��3��$��5,78,0,0q�$	��Top=�   SelectedDate �� *Challan.ChallanDate+$ TwoWay=��� $��2��$��Right=�$��0,78.606,191.999,0q�$
��Wrap=�$��Date :��$	��Top=�$��2��&   System.Windows.Controls.DataGrid  $��0q�$��2��   AutoGenerateColumns .     
IsReadOnly . ���� $ ChllanWindow��$ DataContext.ChallanItems�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$
 Item��   MinWidth$	 100Q�1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *ItemNo+  $ Description��$	 100Q� �� *Description+  $
 Unit��$	 100Q� �� *Unit+  $ Quantity��$	 100Q� �� *
Quantity+  $
 Rate��$	 100Q� �� *Rate+  $ Amount��$	 100Q� �� *Amount+4	  .System.Windows.Controls.DataGridTemplateColumn	     
IsReadOnly .  	  CellTemplate �� .R���  �� Orientation$ 
Horizontal=�.+��� $��50��$��26��$��Delete������ $* $DataContext.RemoveChallanItemCommand� �� RelativeSource �� *FindAncestor+ �� AncestorType" ����� *Id+� $��	0,10,10,0q�$��3��$��Right=�$	��Top=�$��190.996�� �� $	��27* ��� $	��70* �.+��� $��Right=�$��0q�$
��Wrap=�$��Total :��$	��Top=�$��17.733���� $��0��$��Right=�$��0,23,0,0q�$
��Wrap=�$��Paid :��$	��Top=�$��17.733���� $��2.922,0,0,0q�$
��Wrap=�$	��Top=�$��17.733��$��1������ *Challan.TotalAmount+�� $��2.922,23,0,0q�$
��Wrap=�$	��Top=�$��17.733��$��1������ *Challan.PaidAmount+�� 
���   �$��1q�$��1��$��0.422,44,0,0q�$	��Top=� J� RenderTransformOrigin$ 0.5,0.5&�$��1��z�V� .~���   �� ScaleY$  -1Q��� �� T� �� $��0��$��Right=�$��
0,51.5,0,0q�$
��Wrap=�$��	Balance :��$	��Top=�$��17.733���� $��2.922,51.5,0,0q�$
��Wrap=�$	��Top=�$��17.733��$��1������ *Challan.DueAmount+