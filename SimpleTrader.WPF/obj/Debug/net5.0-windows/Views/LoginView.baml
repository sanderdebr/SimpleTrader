   M S B A M L   `   `   `  ����J  FPasswordBoxMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`Aclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVMPasswordBoxMVVM.Components  5      K GSimpleTrader.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:SimpleTrader.WPF.ViewsSimpleTrader.WPF.Views 5      &    SimpleTrader.WPF.Views.LoginView   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      X
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
��auto �6$   .+�5@      � $��0��6   $
��0,10q�6$    � ColumnDefinitions 5A      �� 5B      $
��auto �6+    z� SharedSizeGroup$ Label��68   �� 5C      $	��300 �6+   .+�5F      �� $��0��6    $��Username��60   �� 5G      $��1��5H      $��20,0,0,0q�5I      ��5J      �� *
Username+ �� UpdateSourceTrigger$ PropertyChanged=�5K      � 5M      $��1��6   $
��0,10q�6$    5N      �� 5O      $
��auto �6+   $ Label��68   �� 5P      $	��300 �6+   .+�5S      �� $��0��6    $��Password��60   4   .PasswordBoxMVVM.Components.BindablePasswordBox  5T      $��1��5U      $��20,0,0,0q�5V         Password 5W      �� *
Password+5X      �� 5Z      $��2��5[      $��10q�5\      $��Center=�5]      $��Login��5_       �� 	IsDefault$
 True��5`      ��5^      �� *LoginCommand+5`      �� 5b      $��3��5c      $��0,10,0,0q�5d      $��Center=�5e      
������ $��Don't have an account?��5h      $��14(�5i      
����  ���5g      �� *ViewRegisterCommand+5j      �� 5l      $��4��5m      $��0,10,0,0q�5n      $��Center=�5o      
���  �� � DataContext 5p      �� *ErrorMessageViewModel+��5r      �� *	Message+y�5s      �� *
HasMessage+ �� 	Converter# [  5t      5u      5v      5w      