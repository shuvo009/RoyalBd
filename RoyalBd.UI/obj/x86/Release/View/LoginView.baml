   M S B A M L   `   `   `  ���� E  ARoyalBd.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:RoyalBd.UI.HelpersRoyalBd.UI.Helpers  H DRoyalBd.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullD2clr-namespace:RoyalBd.Model;assembly=RoyalBd.ModelRoyalBd.Model     RoyalBd.UI.View.LoginView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     4helpers clr-namespace:RoyalBd.UI.Helpers     DModel2clr-namespace:RoyalBd.Model;assembly=RoyalBd.Model     -     �Name$  LoginWindow�� � Icon$0 */RoyalBd.UI;component/Styles/Inventory.ico�� � Title$ Login��$	��342��$	��454�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�.��� -    �Name$ RootGrid��   WindowStyle#��[   � RowDefinitions �� $	��83* ��� $	��52* ��� $	��44* ��� $
��134* � � ColumnDefinitions �� $	��93* ��� $	��69* ��� $
��202* ��� $	��84* � � DataContext   RoyalBd.Model.Account  .+��� $
��Wrap=�$��Login��$	��Top=�$��4��  HeaderStyle#��[ �� $��
Username :��$��1��$��0q�$��Center=�$��1���� $��0q�$��2��$��Center=�$��1��$
��Auto������ *
Username+	 �� Mode$	 TwoWay=�
 �� UpdateSourceTrigger$
 PropertyChanged=��� $��
Password :��$��Center=�$��1��$��0q�$��2��G� $��Center=�$��0q�$��2��$��2��'   !RoyalBd.UI.Helpers.PasswordHelper   Attach .    Password �� *
Password+$	 TwoWay=�$
 PropertyChanged=��� $��Login��$��0q�$��3��$��2��$	��Top=�$��33������ *DataContext.LoginCommand+ �� ElementName$ LoginWindow������ *DataContext+$ RootGrid��