   M S B A M L   `   `   `  ���� H  DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP8clr-namespace:RoyalBd.Model.Model;assembly=RoyalBd.ModelRoyalBd.Model.Model   
RoyalBd.UI)   #RoyalBd.UI.View.CustomerAccountView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     JModel8clr-namespace:RoyalBd.Model.Model;assembly=RoyalBd.Model     -     �Name$  CustomerAccountWindow�� � Title$ Customer Account��$	��418��$	��565�� � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico��.���    WindowStyle#��[   � RowDefinitions �� $	��47* ��� $
��340* �.+��� $��Customer Account��  HeaderStyle#��[ � -    �Name$ AccountInfoGrid��$��1�� � ColumnDefinitions �� $
��110* ��� $
��142* ��� $
��122* ��� $
��153* ��� $	��31* � �� $
��127* ��� $
��213* � � DataContext .   (RoyalBd.Model.Model.CustomerAccountModel  .+��� $��Right=�$��0,21,0,0q�$
��Wrap=�$��Total :��$	��Top=�$��17.733��$��35.873���� $��0��$��0��$��Right=�$��0,44,0,0q�$
��Wrap=�$��Paid :��$	��Top=�$��17.733��$��42.067���� $��5,21,0,0q�$
��Wrap=�$	��Top=�$��0��$��1��$��17.733������ *
TotalDue+�� $��5,44,0,0q�$
��Wrap=�$	��Top=�$��0��$��1��$��17.733������ *	TotalPaid+�� 
���   �$��1q�$��1��$��
2.5,65,0,0q�$	��Top=� J� RenderTransformOrigin$ 0.5,0.5&�$��0��$��1��z�V� .~���  �� ScaleY$ -1Q��� �� T� �� $��0��$��0��$��Right=�$��
0,72.5,0,0q�$
��Wrap=�$��	Balance :��$	��Top=�$��17.733��$��51.663���� $��
5,72.5,0,0q�$
��Wrap=�$	��Top=�$��0��$��1��$��17.733������ *	Balance+�� $��Right=�$��0,46,0,0q�$
��Wrap=�$��Amount :��$	��Top=�$��17.733��$��2��$��54.05���� $��3��$��23��$��5,44,0,0q�	 �� TextWrapping$
	 Wrap=�$	��Top=����� *
PaidAmount+
 �� Mode$
 TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� $
��Paid��$��3��$��Center=�$��0,0,0,5q�$��Bottom=�$��34��$��79������  �� ElementName$ CustomerAccountWindow�� �� Path$ DataContext.PaidCommand����� $ AccountInfoGrid��$ DataContext�&   System.Windows.Controls.DataGrid  $��
10,0,10,10q�$��1��$��5��   AutoGenerateColumns .     
IsReadOnly . ���� $ CustomerAccountWindow��$ DataContext.CustomerLogs�   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$
 Date��   MinWidth$	 100Q�1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	LogDate+ �� StringFormat$ {0:dd/MM/yyyy hh:mm}��  $ Description��$	 100Q� �� *	LogType+  $ Paid/Due��$	 100Q� �� *Amount+