   M S B A M L   `   `   `  ����E  ARoyalBd.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:RoyalBd.UI.HelpersRoyalBd.UI.Helpers  5   	   H DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullD2clr-namespace:RoyalBd.Model;assembly=RoyalBd.ModelRoyalBd.Model 5   	       RoyalBd.UI.View.LoginView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   4helpers clr-namespace:RoyalBd.UI.Helpers     5   	   DModel2clr-namespace:RoyalBd.Model;assembly=RoyalBd.Model     5   	   -   5          �Name$  LoginWindow��5   	    � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico��5       � Title$ Login��5   	   $	��342��6   $	��454��6$    � 
ResizeMode$ NoResize=�60    � WindowStartupLocation$ CenterScreen=�6F   .��5	      � -   5         �Name$ RootGrid��5	   -      WindowStyle#��[  6    � RowDefinitions 5
      �� 5      $	��83* �6   �� 5      $	��52* �6   �� 5      $	��44* �6   �� 5      $
��134* �6    � ColumnDefinitions 5      �� 5      $	��93* �6   �� 5      $	��69* �6   �� 5      $
��202* �6   �� 5      $	��84* �6    � DataContext 5        RoyalBd.Model.Account  5      .+�5   
   �� $
��Wrap=�6   $��Login��6(   $	��Top=�65   $��4��6M     HeaderStyle#��[ 6a   �� 5   
   $��
Username :��6   $��1��6&   $��0q�66   $��Center=�6A   $��1��6\   �� 5      $��0q�6   $��2��6   $��Center=�6'   $��1��6B   $
��Auto��6O   ��6]   �� *
Username+	 �� Mode$	 TwoWay=�
 �� UpdateSourceTrigger$
 PropertyChanged=��� 5       $��
Password :��6   $��Center=�6    $��1��6;   $��0q�6K   $��2��6V   G� 5!      $��Center=�6   $��0q�6+   $��2��66   $��2��6F   '   !RoyalBd.UI.Helpers.PasswordHelper   Attach .    Password 6x   �� *
Password+$	 TwoWay=�$
 PropertyChanged=��� 5#   
   $��Login��6   $��0q�6!   $��3��6,   $��2��69   $	��Top=�6I   $��33��6a   ��6m   �� *DataContext.LoginCommand+ �� ElementName$ LoginWindow����6�   �� *DataContext+$ RootGrid��5%      5&      