   M S B A M L   `   `   `  ����J  FPasswordBoxMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`Aclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVMPasswordBoxMVVM.Components  5      K GSimpleTrader.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:SimpleTrader.WPF.ViewsSimpleTrader.WPF.Views 5      )   #SimpleTrader.WPF.Views.RegisterView   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      X
componentsAclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVM     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:SimpleTrader.WPF.Views     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      $��24(�5        � 	Resources  5          BooleanToVisibilityConverter��%   &	        �� 5   
   6'   5      ��5      �� 5   
    �� ImageSource$ /Resources/bg.jpg��5       �� Opacity$	 0.5Q�5       j� Stretch$ UniformToFill=�5      .��5      �� $��25q�5   	    �� Padding$ 50q�5   	   $��Center=�5   	   $��Center=�5   	   
�������  BrushPrimary2#��[ 5   	   $��3q�5   	    �� CornerRadius$ 10��5   	    J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5          
BlurRadius$ 10Q�6      Color$
 Gray��6/   ._�5"   
   � 	 � IsSharedSizeScope$
	 True��6   
 � RowDefinitions
 5#      �� 5$      $
��auto �6    �� 5%      $
��auto �6    �� 5&      $
��auto �6    .+�5)      �� $��0��5*      $��Center=�5+      $��48(�5,      $��Simple Trader��5-      �� 5/      $��1��50      $
��0,10q�51      $��Center=�52      $��18(�53      $
��Thin"�54      $5��/The world's simplest stock trading application.��55      � 57      $��2��6   $
��0,20q�6    
 58      �� 59      $
��auto �6$   �� 5:      $
��auto �6$   �� 5;      $
��auto �6$   �� 5<      $
��auto �6$   �� 5=      $
��auto �6$   �� 5>      $
��auto �6$   �� 5?      $
��auto �6$   .+�5B      � $��0��6   $
��0,10q�6$    � ColumnDefinitions 5C      �� 5D      $
��auto �6+    z� SharedSizeGroup$ Label��68   �� 5E      $	��300 �6+   .+�5H      �� $��0��6    $��Email��60   �� 5I      $��1��5J      $��20,0,0,0q�5K      ��5L      �� *Email+ �� UpdateSourceTrigger$ PropertyChanged=�5M      � 5O      $��1��6   $
��0,10q�6$    5P      �� 5Q      $
��auto �6+   $ Label��68   �� 5R      $	��300 �6+   .+�5U      �� $��0��6    $��Username��60   �� 5V      $��1��5W      $��20,0,0,0q�5X      ��5Y      �� *
Username+$ PropertyChanged=�5Z      � 5\      $��2��6   $
��0,10q�6$    5]      �� 5^      $
��auto �6+   $ Label��68   �� 5_      $	��300 �6+   .+�5b      �� $��0��6    $��Password��60   4   .PasswordBoxMVVM.Components.BindablePasswordBox  5c      $��1��5d      $��20,0,0,0q�5e         Password 5f      �� *
Password+5g      � 5i      $��3��6   $
��0,10q�6$    5j      �� 5k      $
��auto �6+   $ Label��68   �� 5l      $	��300 �6+   .+�5o      �� $��0��6    $��Password��60     5p      $��1��5q      $��20,0,0,0q�5r       5s      �� *ConfirmPassword+5t      �� 5v      $��4��5w      $��10q�5x      $��Center=�5y      $��Register��5{       �� 	IsDefault$
 True��5|      ��5z      �� *RegisterCommand+5|      �� 5~      $��5��5      $��0,10,0,0q�5�      $��Center=�5�      
������ $��Already have an account?��5�      $��14(�5�      
����  ���5�      �� *ViewLoginCommand+5�      �� 5�      $��5��5�      $��0,10,0,0q�5�      $��Center=�5�      
���  �� � DataContext 5�      �� *ErrorMessageViewModel+��5�      �� *	Message+y�5�      �� *
HasMessage+ �� 	Converter# [  5�      5�      5�      5�      