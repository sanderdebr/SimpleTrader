   M S B A M L   `   `   `  ����K  GSimpleTrader.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:SimpleTrader.WPF.ControlsSimpleTrader.WPF.Controls  5      ?$clr-namespace:SimpleTrader.WPF.ViewsSimpleTrader.WPF.Views  5      %    SimpleTrader.WPF.Views.SellView   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      <controls'clr-namespace:SimpleTrader.WPF.Controls     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:SimpleTrader.WPF.Views     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5        � 	Resources  5          BooleanToVisibilityConverter��%   &	        �� 5   
   6'   5      .��5      � $��20q�6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� -   5         ��Name$ cbAssets��5      $��0��5      $	��300��5      ��5      �� *AssetListingViewModel.Assets+ �� SelectedItem 5      �� *SelectedAsset+��5      �� 5      .R�5       ��  �� Orientation$ 
Horizontal=�6!   .+�5!      �� ��6$   �� *Symbol+�� 5"      $
��10,0q�5#      
���   �$��1,0,0,0q�5%      �� 5&      ��6$   �� *Shares+5'      5(      5*      �� 5,   
   $��1��5-      $��0,10,0,0q�5.      $��Center=�5/      
���  �� � DataContext 50      �� *ErrorMessageViewModel+��52      �� *	Message+y�53      �� *
HasMessage+ �� 	Converter# [  �� 55   
   $��2��56      $��0,10,0,0q�57      $��Center=�58      
��� d � 59      �� *StaticMessageViewModel+��5;      �� *	Message+y�5<      �� *
HasMessage+# [  7   1SimpleTrader.WPF.Controls.SearchSymbolResultPanel  5>   
   $��3��6+   $��0,20,0,0q�68   .��5?      �� $��Center=�6   .+�5@      � $
��0,10q�6   .+�5A      �� $	��150��6    $��Shares to sell:��6,   �� 5B      $��50��6   ��6)   �� *SharesToSell+ �� UpdateSourceTrigger$ PropertyChanged=�5C      � 5D      $
��0,10q�6   .+�5E      �� $	��150��6    $��Price per share:��6,   �� 5F      $��50��6   ��6)   �� *
StockPrice+ �� StringFormat$ {0:C}��5G      �� 5H      $
��0,10q�5I      $��Center=�5J      $��32(�5K      ��5L      �� *
TotalPrice+$ {0:C}���� 5M      $
��0,10q�5N      $
��20,5q�5O      $
��Sell��5Q      $��24(�5R      ��5P      �� *SellStockCommand+5R      5S      5T      5U      5V      