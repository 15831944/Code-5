   M S B A M L   `   `   `  ����B  >WpfBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:WpfBase.Chapter5WpfBase.Chapter5  5          WpfBase.Chapter5.unit5_4   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:WpfBase.Chapter5     5      .��5	      ��   �� TabStripPlacement$  Bottom=�6   .@�5
   
   �� ��5      �� 5      $��鼠标位置��6   $��17(�6'   $
��Bold"�65   .��5      �  � RowDefinitions 5      �� 5      $��* �6$   �� 5      $��30 �6$    � ColumnDefinitions 5      �� 5      $��3* �6'   �� 5      $
��1.1* �6'   .+�5      �� -   5        $��
canv_board��5      
���   �$��	40,40,0,0q�6>   �� 5      -   5        $��lab_pos��5   %   $��1��6   $��Center=�64   �� 5      -   5        $��
list_event��5   6   $��1��6   $��2q�6+   66   �� 5      -   5        $��	btn_clear��5   A   $��1��6   $��1��6&   $��2q�66   $��清理��6R   5      5      �� 5   
   ��5      �� 5      $��鼠标拖放��6   $��17(�6'   $
��Bold"�65   .��5!      �  5"      �� 5#      $��* �6$   �� 5$      $��* �6$    5&      �� 5'      $��* �6'   �� 5(      $��* �6'   .+�5*      �� -   5        $��
lab_source��5*      $��Drag from this lable��6*   $��Center=�6I   $��Center=�6d   
�������6�   �� 5+      -   5        $��	canv_move��5+      
�������$��1��6A   .+�5,      �� -   5        $��lab_move��5,      $��1��6,   $��Drag this lable move��69   
�������6Y   5-      �� 5.      $��1��6   $��To this Lable��6+   .��5/      �� -   5        $��
lab_target��5/       J� 	AllowDrop . 
���   �$��2q�6S   $��Stretch=�6g   $��Stretch=�6�   50      �� 51      $��1��6   $��1��6+   $��To this TextBox��68   .��52      �� -	   5        $��
txt_target��52      $��Stretch=�60   $��Stretch=�6L   53      54      55      56      58      