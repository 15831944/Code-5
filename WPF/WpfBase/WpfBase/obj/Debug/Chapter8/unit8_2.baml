   M S B A M L   `   `   `  ����B  >WpfBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:WpfBase.Chapter8WpfBase.Chapter8  5          WpfBase.Chapter8.unit8_2   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:WpfBase.Chapter8     5        � 	Resources  5	         
CustomFont��%)   &	        *�5
   
   Calibri)�61   5      .��5      A�  A� Rows$ 2��6    A� Columns$ 2��6   .+�5   
   �� $��Source绑定��6   
 � Tag$ Green��6%   .��5      A� $ 3��6   $
 True��6#   .+�5      �� ��6   ��  �� Source# [  5      5      �� 5   
   $��RelativeSourse绑定��6   .��5      A� $ 3��6   
�������.+�5      �� $Q��K博客地址：https://blog.csdn.net/theoldsod2000/article/details/12966773��6   $y�	Collapsed=�6d   �� 5      $��80��6   $��18(�6j   $
��Bold"�6x   $��10q�6�   
���  ����6'   ��  �� RelativeSource �� *Self+ �� Path$ Width�6�   �� 5      $��TemplatedParent��6   $	��100��63   $��50��6?   ��5      �� 5       �� 
TargetType" ��6    .�5      ��  �� Property � ��	 �� Value
	 � � �6;   �� 5       � ��	 5   "   �� 5   &   
 �� 
TargetType"
 ��66   .R�5   *   � .+�5    .   A� ��5!   2   �� 5"   6    �� Color 6F   �� $ Background.Color� �� *TemplatedParent+5$   /   5%   +   5&   '   5(       �� Triggers 5)      P� 5*   "    P� Property �@J�IsMouseOver P� Value . . �5+   &   ��  � ��
	 ��  �6C   5,   #   5.      50      A� 53      $ 2��6   
����  �.+�54      �� 
���   �$��3q�61    �� Padding$ 5q�6E   ._�55      �� 
���  ��$��Stretch=�61   $��Stretch=�6T   56      �� 57      
��� ���$��3q�60   $ 5q�6D   ._�58      �� 
�������.+�59      �� $��Stretch=�6�   $��Stretch=�6�   ��6$   �� $ 
Background� ��  �� Mode$ FindAncestor=� �� AncestorType" ��6�   �� 5:      $��Stretch=�6�   $��Stretch=�6�   ��6$   �� $ 
Background� �� $ FindAncestor=� �� AncestorLevel$ 1��" A�6�   �� 5;      $��Stretch=�6�   $��Stretch=�6�   ��6$   �� $ 
Background� �� $ FindAncestor=�" A�$ 2��6�   5<      5=      5>      5?      5@      �� 5B   
   $��DataContext绑定��6   .��5C      ��  �� Orientation$ Vertical=�6    � DataContext# Z��60   .+�5D      �� $��2q�69   ��6   �� $ Source�69   �� 5E      $��2q�69   ��6   �� $ Source�69   �� 5F      $��2q�69   ��6   �� $ Source�69   �� 5G      $��2q�69   ��6   �� $ Source�69   �� 5H      $��2q�69   ��6   �� $ Source�69   5I      5J      5K      5L      