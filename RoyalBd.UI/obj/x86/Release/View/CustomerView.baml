   M S B A M L   `   `   `  ���� H  DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullD2clr-namespace:RoyalBd.Model;assembly=RoyalBd.ModelRoyalBd.Model   
RoyalBd.UI"   RoyalBd.UI.View.CustomerView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     DModel2clr-namespace:RoyalBd.Model;assembly=RoyalBd.Model     -     �Name$  CustomerWindow�� � Title$ Customer��$	��419��$	��563�� � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico��.���    WindowStyle#��[   � RowDefinitions �� $	��49* ��� $
��339* �.+��� $��Customer��  HeaderStyle#��[ � -    �Name$ CustomerInfo��$��1�� �� $
��185* ��� $
��154* � � ColumnDefinitions �� $
��175* ��� $
��294* ��� $	��86* � � DataContext    RoyalBd.Model.Customer  .+��� $��Right=�$��0,13.329,5,0q�$
��Wrap=�$��Name : ��$	��Top=��� $��0��$��1��$��0,10,0,0q� �� TextWrapping$
 Wrap=�$	��Top=����� *CustomerName+�� $��1��$��0q�$	��Top=�$��1������  �� ElementName$ CustomerWindow��	 �� Path$(	 "DataContext.AddUpdateButtonContent����� $ CustomerWindow��$"	 DataContext.AddUpdateCommand����� $ CustomerInfo��$	 DataContext��� $��0��$��0��$��Right=�$��0,55.329,5,0q�$
��Wrap=�$��Phone : ��$	��Top=��� $��0��$��1��$��0,52,0,0q�$
 Wrap=�$	��Top=����� *Phone+�� $��0��$��0��$��Right=�$��0,96.662,5,0q�$
��Wrap=�$��
Address : ��$	��Top=��� $��0��$��1��$��0,93.333,0,0q�$
 Wrap=�$	��Top=�$��75��
 �� AcceptsReturn
 . ���� *	Address+