   M S B A M L   `   `   `  ����H  DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullD2clr-namespace:RoyalBd.Model;assembly=RoyalBd.ModelRoyalBd.Model  5   	    
RoyalBd.UI"   RoyalBd.UI.View.CustomerView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   DModel2clr-namespace:RoyalBd.Model;assembly=RoyalBd.Model     5   	   -   5          �Name$  CustomerWindow��5   3    � Title$ Customer��6	   $	��419��6   $	��563��6'    � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico��6K   .��5      �    WindowStyle#��[  6    � RowDefinitions 5      �� 5      $	��49* �6   �� 5	      $
��339* �6   .+�5      �� $��Customer��6     HeaderStyle#��[ 6   � 5      -   5         �Name$ CustomerInfo��5   	   $��1��6    5      �� 5      $
��185* �6   �� 5      $
��154* �6    � ColumnDefinitions 5      �� 5      $
��175* �6   �� 5      $
��294* �6   �� 5      $	��86* �6    � DataContext 5         RoyalBd.Model.Customer  5      .+�5      �� $��Right=�6   $��0,13.329,5,0q�6+   $
��Wrap=�6A   $��Name : ��6U   $	��Top=�6d   �� 5      $��0��6   $��1��6   $��0,10,0,0q�6+    �� TextWrapping$
 Wrap=�6=   $	��Top=�6o   ��6Q   �� *CustomerName+6o   �� 5      $��1��6  $��0q�6  $	��Top=�6#  $��1��6;  ��6   ��  �� ElementName$ CustomerWindow��	 �� Path$(	 "DataContext.AddUpdateButtonContent���6n   �� $ CustomerWindow��$"	 DataContext.AddUpdateCommand���6�   �� $ CustomerInfo��$	 DataContext�6;  �� 5      $��0��6   $��0��6   $��Right=�6,   $��0,55.329,5,0q�6H   $
��Wrap=�6^   $��Phone : ��6r   $	��Top=�6�   �� 5      $��0��6   $��1��6   $��0,52,0,0q�6+   $
 Wrap=�6=   $	��Top=�6h   ��6Q   �� *Phone+6h   �� 5      $��0��6   $��0��6   $��Right=�6,   $��0,96.662,5,0q�6H   $
��Wrap=�6^   $��
Address : ��6r   $	��Top=�6�   �� 5      $��0��6   $��1��6   $��0,93.333,0,0q�6+   $
 Wrap=�6A   $	��Top=�6n   $��75��6�   
 �� AcceptsReturn
 . ��6U   �� *	Address+6�   5       5!      5"      