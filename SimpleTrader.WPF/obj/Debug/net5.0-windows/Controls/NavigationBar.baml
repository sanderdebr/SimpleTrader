   M S B A M L   `   `   `  ����K  GSimpleTrader.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:SimpleTrader.WPF.ConvertersSimpleTrader.WPF.Converters  5      E'clr-namespace:SimpleTrader.WPF.ControlsSimpleTrader.WPF.Controls  5      U/clr-namespace:SimpleTrader.WPF.State.Navigators!SimpleTrader.WPF.State.Navigators  5	      I)clr-namespace:SimpleTrader.WPF.ViewModelsSimpleTrader.WPF.ViewModels  5
      -    'SimpleTrader.WPF.Controls.NavigationBar   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @
converters)clr-namespace:SimpleTrader.WPF.Converters     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:SimpleTrader.WPF.Controls     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      ?nav/clr-namespace:SimpleTrader.WPF.State.Navigators     5	      8vm)clr-namespace:SimpleTrader.WPF.ViewModels     5
        � 	Resources  5      @   :SimpleTrader.WPF.Converters.EqualValueToParameterConverter "  EqualValueToParameterConverter��%   &	          5   
   64   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   � $��0��6     BrushPrimary1#��[ 6   .+�5      �� $
��1000��5       �� Padding$ 10q�5      $��28(�5      
�������$��Simple Trader��5      5      � 5    
   $��1��6     BrushPrimary2#��[ 6   .+�5!      � $
��1000��6    �� EdgeMode$ Aliased=�6#     5"        	NavButton �� BasedOn �� 
TargetType��%+   '	�       7  �� 5#      8   " 	�6A   5$       � ColumnDefinitions 5%      �� 5&      $
��Auto �6'   �� 5'      $
��Auto �6'   �� 5(      $
��Auto �6'   �� 5)      $
��Auto �6'   �� 5*      $��* �6'   .+�5-      	� $��0��5.      0   *SimpleTrader.WPF.State.Navigators.ViewType   Home#��Z 50      $
��Home��51      ��5/      �� *UpdateCurrentViewModelCommand+ d� 	IsChecked 52      �� *CurrentViewModel+	 �� Mode$	 OneWay=�
 �� 	Converter#
 [   �� ConverterParameter/   )SimpleTrader.WPF.ViewModels.HomeViewModel"  	� 53      $��1��54         	Portfolio#��Z 56      $��	Portfolio��57      ��55      �� *UpdateCurrentViewModelCommand+ 58      �� *CurrentViewModel+$	 OneWay=�#
 [  4   .SimpleTrader.WPF.ViewModels.PortfolioViewModel"  	� 59      $��2��5:      
   Buy#��Z 5<      $	��Buy��5=      ��5;      �� *UpdateCurrentViewModelCommand+ 5>      �� *CurrentViewModel+$	 OneWay=�#
 [  .   (SimpleTrader.WPF.ViewModels.BuyViewModel"  	� 5?      $��3��5@         Sell#��Z 5B      $
��Sell��5C      ��5A      �� *UpdateCurrentViewModelCommand+ 5D      �� *CurrentViewModel+$	 OneWay=�#
 [  /   )SimpleTrader.WPF.ViewModels.SellViewModel"  5E      5F      5G      5H      