   M S B A M L   `   `   `  ����H  DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP8clr-namespace:RoyalBd.Model.Model;assembly=RoyalBd.ModelRoyalBd.Model.Model  5   	    
RoyalBd.UI)   #RoyalBd.UI.View.CustomerAccountView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   JModel8clr-namespace:RoyalBd.Model.Model;assembly=RoyalBd.Model     5   	   -   5          �Name$  CustomerAccountWindow��5   ;    � Title$ Customer Account��6	   $	��418��6"   $	��565��6/    � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico��6Z   .��5      �    WindowStyle#��[  6    � RowDefinitions 5   
   �� 5      $	��47* �6   �� 5	      $
��340* �6   .+�5   
   �� $��Customer Account��6     HeaderStyle#��[ 6,   � 5   
   -   5         �Name$ AccountInfoGrid��5      $��1��6    � ColumnDefinitions 5      �� 5      $
��110* �6#   �� 5      $
��142* �6#   �� 5      $
��122* �6#   �� 5      $
��153* �6#   �� 5      $	��31* �6#    5      �� 5      $
��127* �6    �� 5      $
��213* �6     � DataContext 5      .   (RoyalBd.Model.Model.CustomerAccountModel  5      .+�5      �� $��Right=�6   $��0,21,0,0q�64   $
��Wrap=�6F   $��Total :��6Z   $	��Top=�6i   $��17.733��6�   $��35.873��6�   �� 5      $��0��6   $��0��6%   $��Right=�65   $��0,44,0,0q�6Q   $
��Wrap=�6c   $��Paid :��6w   $	��Top=�6�   $��17.733��6�   $��42.067��6�   �� 5      $��5,21,0,0q�6   $
��Wrap=�6*   $	��Top=�6X   $��0��6p   $��1��6}   $��17.733��6�   ��6>   �� *
TotalDue+6�   �� 5      $��5,44,0,0q�6   $
��Wrap=�6*   $	��Top=�6Y   $��0��6q   $��1��6~   $��17.733��6�   ��6>   �� *	TotalPaid+6�   �� 5      
���   �$��1q�6)   $��1��6=   $��
2.5,65,0,0q�6H   $	��Top=�6\    J� RenderTransformOrigin$ 0.5,0.5&�6t   $��0��5       $��1��6   z�5!      V� 5"      .~�5#      ��  �� ScaleY$ -1Q�6)   �� 5$      �� 5%      T� 5&      5'      5)      �� 5*      $��0��6   $��0��6%   $��Right=�65   $��
0,72.5,0,0q�6Q   $
��Wrap=�6e   $��	Balance :��6y   $	��Top=�6�   $��17.733��6�   $��51.663��6�   �� 5+      $��
5,72.5,0,0q�6   $
��Wrap=�6,   $	��Top=�6Y   $��0��6q   $��1��5,      $��17.733��6   ��5+   @   �� *	Balance+5,      �� 5-      $��Right=�6   $��0,46,0,0q�64   $
��Wrap=�6F   $��Amount :��6Z   $	��Top=�6j   $��17.733��6�   $��2��6�   $��54.05��6�   �� 5.      $��3��6   $��23��6&   $��5,44,0,0q�62   	 �� TextWrapping$
	 Wrap=�6D   $	��Top=�6�   ��6X   �� *
PaidAmount+
 �� Mode$
 TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5/      $
��Paid��6   $��3��6$   $��Center=�64   $��0,0,0,5q�6Q   $��Bottom=�6b   $��34��6}   $��79��6�   ��6�   ��  �� ElementName$ CustomerAccountWindow�� �� Path$ DataContext.PaidCommand���6�   �� $ AccountInfoGrid��$ DataContext�&   System.Windows.Controls.DataGrid  50      $��
10,0,10,10q�6   $��1��6+   $��5��68      AutoGenerateColumns .     
IsReadOnly . ��6L   �� $ CustomerAccountWindow��$ DataContext.CustomerLogs�   Columns 51      0  *System.Windows.Controls.DataGridTextColumn  52      ,  &System.Windows.Controls.DataGridColumn   Header$
 Date��6m      MinWidth$	 100Q�6{   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   �� *	LogDate+ �� StringFormat$ {0:dd/MM/yyyy hh:mm}��6{     53      $ Description��6E   $	 100Q�6Z    6)   �� *	LogType+6Z     54      $ Paid/Due��6D   $	 100Q�6V    6)   �� *Amount+6V   56      58      59      5:      