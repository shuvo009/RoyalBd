   M S B A M L   `   `   `  ����E  ARoyalBd.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:RoyalBd.UI.ConverterRoyalBd.UI.Converter  5   	   H DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullD2clr-namespace:RoyalBd.Model;assembly=RoyalBd.ModelRoyalBd.Model 5   	   !    RoyalBd.UI.View.ChallanView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   8	converter"clr-namespace:RoyalBd.UI.Converter     5   	   DModel2clr-namespace:RoyalBd.Model;assembly=RoyalBd.Model     5   	   -   5          �Name$  ChllanWindow��5   2    � Title$ Challan��6	   $	��582��6   $	��940��6&    � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico��6H    � 	Resources 5      /   )RoyalBd.UI.Converter.PaymentTypeConverter   PaymentTypeConverter&    RoyalBd.UI.Converter.BoolReverse  BoolReverse��%:   &	        &	        5   
   6)     5	   
   6    5
      .��5      �   WindowStyle#��[ 6    � RowDefinitions 5   
   �� 5      $	��39* �6   �� 5      $
��113* �6   �� 5      $
��282* �6   �� 5      $
��117* �6   .+�5   
   �� $��Challan��6     HeaderStyle#��[ 6#   � 5   
   $��1��6   {�6   �� *
IsEditMode+ �� 	Converter# [  � ColumnDefinitions 5      �� 5      $
��459* �6#   �� 5      $
��473* �6#   .+�5      � -   5         �Name$ ChallanItemGrid��5       5      �� 5      $	��89* �6'   �� 5      $
��150* �6'   �� 5      $	��67* �6'   �� 5      $
��154* �6'    � DataContext 5        RoyalBd.Model.ChallanItem  5       .+�5"      �� $��5,10,0,0q�6   $	��Top=�6-   $��1��6E   	 �� SelectedValuePath$
	 Name��6�   
 �� DisplayMemberPath$

 Name��6�   ��6U   �� *DataContext.Items+ �� ElementName$ ChllanWindow�� �� SelectedValue 6�   �� *ItemNo+�� 5#      $��Right=�6   $��0,11,0,0q�68   $
��Wrap=�6J   $��Item :��6^   $	��Top=�6l   �� 5$      $��Right=�6   $��
0,50.5,0,0q�68   $
��Wrap=�6L   $��Description :��6`   $	��Top=�6u   �� 5%      $��Right=�6   $��0,88.346,0,0q�68   $
��Wrap=�6N   $��Unit :��6b   $	��Top=�6p   �� 5&      $��Right=�6   $��0,10,0,0q�68   $
��Wrap=�6J   $��
Quantity :��6^   $	��Top=�6p   $��2��6�   �� 5'      $��0,49.773,0,0q�6   $
��Wrap=�62   $��Rate :��6F   $	��Top=�6T   $��2��6l   $��Right=�6|   �� 5(      $��5,47.773,0,0q�6   $	��Top=�61   $��1��6I   $
	 Name��6�   $

 Name��6�   ��6Y   �� *DataContext.Descriptions+$ ChllanWindow�� 6�   �� *Description+�� 5)      $��23��6   $��5,85.079,0,0q�6&    �� TextWrapping$
 Wrap=�6<   $	��Top=�6f   $��1��6~   ��6P   �� *Unit+6~   �� 5*      $��23��6   $��
5,8.96,0,0q�6&   $
 Wrap=�6:   $	��Top=�6�   $��3��6�   ��6N   �� *
Quantity+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5+      $��23��6   $��5,46.733,0,0q�6&   $
 Wrap=�6<   $	��Top=�6�   $��3��6�   ��6P   �� *Rate+$ PropertyChanged=�6�   �� 5,      $	��Add��6   $��3��6'   $��5,81.686,0,0q�67   $	��Top=�6M   ��6e   �� $ ChllanWindow�� �� Path$' !DataContext.AddChallanItemCommand���6�   �� $ ChallanItemGrid��$ DataContext�5-      � 5.      $��1��6   $��0q�6#    5/      �� 50      $	��24* �6'   �� 51      $	��62* �6'   �� 52      $	��86* �6'   �� 53      $
��192* �6'   �� 54      $
��109* �6'   .+�56      	� $
��Cash��6   $��1��6-   $
��Left=�6=   $	��Top=�6X   $��0,12,0,0q�6p    d� 	IsChecked 6�   �� $ Challan.PaymentType� �� ConverterParameter$
 Cash��# [   �� Mode$ TwoWay=�	� 57      $
��Bank��6   $��1��6-   $
��Left=�6=   $	��Top=�6X   $��0,45,0,0q�6p    6�   �� $ Challan.PaymentType�$
 Bank��# [  $ TwoWay=�	� 58      $	��Due��6   $��1��6,   $
��Left=�6<   $	��Top=�6W   $��0,78,0,0q�6o    6�   �� $ Challan.PaymentType�$	 Due��# [  $ TwoWay=��� 59      $��2��6   $��Right=�6,   $��0,10,-0.001,0q�6H   $
��Wrap=�6_   $��
Customer :��6s   $	��Top=�6�   �� 5:      $��3��6   $��5,9,0,0q�6+   $	��Top=�6<   $
 CustomerName��6v   $	 Id��6�   ��6T   �� *	Customers+ 6�   �� *Challan.CustomerId+�� 5;      $��2��6   $��Right=�6,   $��0,45,191.999,0q�6H   $
��Wrap=�6`   $��Paid Amount :��6t   $	��Top=�6�   $��2��6�   �� 5<      $��23��6   $��5,39.733,0,0q�6&   $
 Wrap=�6<   $	��Top=�6�   $��3��6�   ��6P   �� *Challan.PaidAmount+$ TwoWay=�$ PropertyChanged=�6�   �� 5=      $
��Save��6   $��4��6(   $��0,78.606,10,0q�68   $	��Top=�6O   ��6g   �� *SaveCommand+(  "System.Windows.Controls.DatePicker  5>      $��3��6   $��5,78,0,0q�6-   $	��Top=�6?      SelectedDate 6W   �� *Challan.ChallanDate+$ TwoWay=��� 5?      $��2��6   $��Right=�6,   $��0,78.606,191.999,0q�6H   $
��Wrap=�6d   $��Date :��6x   $	��Top=�6�   $��2��6�   5@      5B      &   System.Windows.Controls.DataGrid  5C   
   $��0q�6   $��2��6      AutoGenerateColumns .     
IsReadOnly . ��6Y   �� $ ChllanWindow��$ DataContext.ChallanItems�   Columns 5D      0  *System.Windows.Controls.DataGridTextColumn  5E      ,  &System.Windows.Controls.DataGridColumn   Header$
 Item��6@      MinWidth$	 100Q�6N   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ItemNo+6N     5F      $ Description��6E   $	 100Q�6Z    6%   �� *Description+6Z     5G      $
 Unit��6>   $	 100Q�6L    6%   �� *Unit+6L     5H      $ Quantity��6B   $	 100Q�6T    6%   �� *
Quantity+6T     5I      $
 Rate��6>   $	 100Q�6L    6%   �� *Rate+6L     5J      $ Amount��6@   $	 100Q�6P    6%   �� *Amount+6P   4	  .System.Windows.Controls.DataGridTemplateColumn	  5K         
IsReadOnly .  	  CellTemplate 5L      �� 5M      .R�5N      ��  �� Orientation$ 
Horizontal=�6)   .+�5O   "   �� $��50��6)   $��26��64   $��Delete��6�   ��6@   �� $* $DataContext.RemoveChallanItemCommand� �� RelativeSource �� *FindAncestor+ �� AncestorType" ���6�   �� *Id+6�   5P      5Q      5S      5U      � 5V   
   $��	0,10,10,0q�6   $��3��6"   $��Right=�6/   $	��Top=�6K   $��190.996��6c    5W      �� 5X      $	��27* �6#   �� 5Y      $	��70* �6#   .+�5[      �� $��Right=�6   $��0q�64   $
��Wrap=�6?   $��Total :��6S   $	��Top=�6b   $��17.733��6z   �� 5\      $��0��6   $��Right=�6(   $��0,23,0,0q�6D   $
��Wrap=�6V   $��Paid :��6j   $	��Top=�6x   $��17.733��6�   �� 5]      $��2.922,0,0,0q�6   $
��Wrap=�6-   $	��Top=�6f   $��17.733��6~   $��1��6�   ��6A   �� *Challan.TotalAmount+6�   �� 5^      $��2.922,23,0,0q�6   $
��Wrap=�6.   $	��Top=�6f   $��17.733��6~   $��1��6�   ��6B   �� *Challan.PaidAmount+6�   �� 5_      
���   �$��1q�6)   $��1��6=   $��0.422,44,0,0q�6H   $	��Top=�6^    J� RenderTransformOrigin$ 0.5,0.5&�6v   $��1��6�   z�5`      V� 5a      .~�5b      ��   �� ScaleY$  -1Q�6)   �� 5c      �� 5d      T� 5e      5f      5h      �� 5i      $��0��6   $��Right=�6(   $��
0,51.5,0,0q�6D   $
��Wrap=�6X   $��	Balance :��6l   $	��Top=�6}   $��17.733��6�   �� 5j      $��2.922,51.5,0,0q�6   $
��Wrap=�60   $	��Top=�6g   $��17.733��6   $��1��6�   ��6D   �� *Challan.DueAmount+6�   5l      5n      5o      