   M S B A M L   `   `   `  ����B  >WpfBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:WpfBase.Chapter8WpfBase.Chapter8  5          WpfBase.Chapter8.unit8_1   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:WpfBase.Chapter8     5      .��5	      �   � RowDefinitions  5
   
   �� 5      $��* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��简单元素绑定��6   .��5      ��  �� Orientation$ Vertical=�6   .+�5      �� -   5        $��slider_fontsize��5       � Minimum$ 10Q�60    � Maximum$ 40Q�6=    �� TickPlacement$ BottomRight=�6J    �� TickFrequency$ 1Q�6f   �� 5      $��依赖属性绑定��6   ��6*   ��  �� ElementName$ slider_fontsize�� �� Path$ Value�5      5      �� 5   
   $��OneWay绑定��6   $��1��6%   .��5      �� $ Vertical=�6   .+�5      �� -   5        $��	slid_r0c1��5      	 �� Orientation$	 
Horizontal=�6*   $	 500Q�6C   $ 50Q�6Q   
 � LargeChange$
 5Q�6^    � SmallChange$ 5Q�6n    � Value$
 50.7Q�6~    �� IsSnapToTickEnabled . $ BottomRight=�5   !   $ 5Q�5   !    �� IsSelectionRangeEnabled .  �� SelectionStart 5   !   �� $ 	slid_u2s3��$ Minimum� �� SelectionEnd 5    !   �� $ 	slid_u2s3��$ Value��� 5!      $	 
Horizontal=�6   $	 500Q�62   $ 50Q�6@   $
 5Q�6M   $ 5Q�6]    .  5"   !   �� $ 	slid_r0c1��$ Value� �� Mode$ OneWay=�5#      5$      �� 5%   
   $��OneWayToSource绑定��6   $��2��6-   .��5&      �� $ Vertical=�6   .+�5'      �� -   5        $��	slid_r0c2��5'      $	 
Horizontal=�6*   $	 500Q�6C   $ 50Q�6Q   $
 5Q�6^   $ 5Q�6n   $
 50.7Q�6~    . $ BottomRight=�5(   !   $ 5Q�5)   !    .  5+   !   �� $ 	slid_u2s3��$ Minimum� 5,   !   �� $ 	slid_u2s3��$ Value��� 5-      $	 
Horizontal=�6   $	 500Q�62   $ 50Q�6@   $
 5Q�6M   $ 5Q�6]    .  5.   !   �� $ 	slid_r0c2��$ Value�$ OneWayToSource=��� 5/      $��WrapWithOverflow=�6   $���}OneWayToSource是将自身的值绑定到别的控件的属性上，其他模式的绑定都是将别的属性引用到自身��6<   50      51      �� 53   
   $��TwoWay绑定��6   $��1��6%   $��0��62   .��54      �� $ Vertical=�6   .+�55      �� -   5        $��	slid_r1c0��55      $	 
Horizontal=�6*   $	 500Q�6C   $ 50Q�6Q   $
 5Q�6^   $ 5Q�6n   $
 50.7Q�6~    . $ BottomRight=�56   !   $ 5Q�57   !    .  59   !   �� $ 	slid_u2s3��$ Minimum� 5:   !   �� $ 	slid_u2s3��$ Value��� 5;      $	 
Horizontal=�6   $	 500Q�62   $ 50Q�6@   $
 5Q�6M   $ 5Q�6]    .  5<   !   �� $ 	slid_r1c0��$ Value�$ TwoWay=�5=      5>      �� 5?   
   $��使用代码绑定��6   $��1��6#   $��1��60   .��5@      �� $ Vertical=�6   .+�5A      �� -   5        $��slider_fontsize2��5A      $ 10Q�61   $ 40Q�6>   $ BottomRight=�6K   $ 1Q�6g   �� 5B      -   5        $��txt_codeBind��5B      $��代码绑定��60   ��6<   �� $ slider_fontsize��$ Value�5C      5D      �� 5E   
   $��多属性绑定��6   $��1��6"   $��2��6/   .��5F      �� $ Vertical=�6   .+�5G      �� -   5        $��slider_r1c2��5G   $   $��3q�6   $ 10Q�67   $ 40Q�6D   �� 5H      -   5        $��txt_r1c2��5H   %   $��3q�6   $��多属性绑定��65   �� 5I      -	   5        $��	com_color��5I   &   $��3q�6   .@�5J      �� -
   5        $	��Red��5J   D   
���  ��6R   �� 5K      -   5        $��Green��5K   D   
��� � �6T   �� 5L      -   5        $
��Blue��5L   D   
����  �6S   5M      �� 5N      $��3q�6   ��6'   �� $ txt_r1c2��$
 Text���6W   �� $ 	com_color��$ 
Background���6�   �� $ slider_r1c2��$ Value�5O      5P      5R      5S      