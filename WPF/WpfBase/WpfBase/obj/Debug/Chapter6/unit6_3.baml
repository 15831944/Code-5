   M S B A M L   `   `   `  ����B  >WpfBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:WpfBase.Chapter6WpfBase.Chapter6  5          WpfBase.Chapter6.unit6_3   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:WpfBase.Chapter6     5      .��5	      ��   �� TabStripPlacement$  Bottom=�6   .@�5
   
   �� ��5      �� 5      $��滑块��6   $��17(�6%   $
��Bold"�63   .��5      �  � ShowGridLines .  � RowDefinitions 5      �� 5      �� 5       � ColumnDefinitions 5      �� 5      �� 5      .+�5      A�  A� Rows$ 6��6   .+�5      ]� .+�5      �� ��6$   ��  �� ElementName$ 	slid_u1s1�� �� Path$ Value��� 5      -   5        $��	slid_u1s1��5   !    �� Orientation$ 
Horizontal=�62    � Maximum$	 500Q�6K   	 � Minimum$	 50Q�6Y   
 � LargeChange$
 5Q�6f    � SmallChange$ 5Q�6v   5      �� 5      $��显示刻度条��6   ]� 5      .+�5      �� ��6$   �� $ 	slid_u1s2��$ Value��� 5      -   5        $��	slid_u1s2��5   !   $ 
Horizontal=�62   $	 500Q�6K   $	 50Q�6Y   $
 5Q�6f   $ 5Q�6v    �� TickPlacement$ BottomRight=�6�    �� TickFrequency$ 5Q�6�   5       �� 5!      $��不规则刻度条��6   ]� 5"      .+�5#      �� ��6$   �� $ 	slid_u1s3��$ Value��� 5$      -   5        $��	slid_u1s3��5$   !   $ 
Horizontal=�62   $	 500Q�6K   $	 50Q�6Y   $
 5Q�6f   $ 5Q�6v   $
 Both=�6�    �� Ticks$! 50,60,70,80,100,120,300,360R�6�   5%      5&      A� 5'      $ 6��6   $��1��6'   .+�5(      �� $��拖动显示小数��6   ]� 5)      .+�5*      �� ��6$   �� $ 	slid_u2s1��$ Value��� 5+      -   5        $��	slid_u2s1��5+   !   $ 
Horizontal=�62   $	 500Q�6K   $	 50Q�6Y   $
 5Q�6f   $ 5Q�6v    � Value$
 50.7Q�6�   5,      �� 5-      $��拖动显示整数��6   ]� 5.      .+�5/      �� ��6$   �� $ 	slid_u2s2��$ Value��� 50      -   5        $��	slid_u2s2��50   !   $ 
Horizontal=�62   $	 500Q�6K   $	 50Q�6Y   $
 5Q�6f   $ 5Q�6v   $
 50.7Q�6�    �� IsSnapToTickEnabled . 6�   51      �� 52      $��范围显示��6   ]� 53      .+�54      �� ��6$   �� $ 	slid_u2s3��$ Value��� 55      -   5        $��	slid_u2s3��55   !   $ 
Horizontal=�62   $	 500Q�6K   $	 50Q�6Y   $
 5Q�6f   $ 5Q�6v   $
 50.7Q�6�    .  �� IsSelectionRangeEnabled .  �� SelectionStart 57   !   �� $ 	slid_u2s3��$ Minimum� �� SelectionEnd 58   !   �� $ 	slid_u2s3��$ Value�59      5:      A� 5;      $ 5��6   $��1��6'   .+�5<      ]� .+�5=      �� ��6$   �� $ 	slid_u3s1��$ Value��� 5>      -   5        $��	slid_u3s1��5>   !   $ 
Horizontal=�62   $	 500Q�6K   $	 50Q�6Y   $
 5Q�6f   $ 5Q�6v    . 6�   5?      � 5@       6"   �� $ 	slid_u3s1��$ Maximum�	 6Y   �� $ 	slid_u3s1��$ Minimum� 6�   �� $ 	slid_u3s1��$ Value�� 5A       � IsIndeterminate . 6"   5B      5C      5D      �� 5E   
   ��5F      �� 5G      $��日期控件��6   $��17(�6'   $
��Bold"�65   .��5I      A� $ 2��6    A� Columns$ 2��6#   .+�5J      &   System.Windows.Controls.Calendar  �� 5K       �� Orientation$ Vertical=�6   .+�5L      �� $#��限定日期为2010/1/1之后��6     5M         DisplayDateStart$ 2010/1/1X�6   5N      (  "System.Windows.Controls.DatePicker  5O      5P      5Q      5R      5S      