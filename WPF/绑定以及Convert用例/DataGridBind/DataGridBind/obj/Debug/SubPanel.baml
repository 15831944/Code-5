   M S B A M L   `   `   `  ����G  CDataGridBind, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:DataGridBindDataGridBind  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5          DataGridBind.SubPanel   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:DataGridBind     5      6sys&clr-namespace:System;assembly=mscorlib     5      ���	#FF474747  � 	Resources  5
       �� 
TargetType �� Property �� Value   BlackOrangeButton �� BasedOn  GroupBoxHeaderBase&   System.Windows.Controls.DataGrid=  7System.Windows.Controls.Primitives.DataGridColumnHeader)  #System.Windows.Controls.DataGridRow �� Triggers P� Property P� Value*  $System.Windows.Controls.DataGridCell �� 
TargetType  TabControlS_Base	 �� Color  CuttingModeTypeEnum
 S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters M� Type   DataGridBind.CuttingMode�� 5   
   %j
  '��       '�� �     7   '�� R    '��     7  '  �    '  �    '  �    '  Z    '�� 	    7  (�� =	    5W      *1/SystemColors.InactiveSelectionHighlightBrushKey+)&	 W	    �� 5      " ��6   .�5      ��  � ��$ Right=�6?   �� 5       � ��$ Center=�6=   �� 5       � ��
 �����6/   �� 5       � ��$	 100��6*   �� 5       � ��$ 3q�6+   5      �� 5      " ��6   8   .�5      ��  � ��$	 100��6*   �� 5       � ��$ 3q�6+   5      �� 5      " ��6   .�5      ��  � ��$ Right=�6?   �� 5       � ��$ Center=�6=   �� 5       � ��$	 100��6*   �� 5       � ��$ 3q�6+   5      �� 5      " ��6   8   .�5      ��  � ��
 ��� �6/   �� 5       � �� �	#FF2727276/   �� 5        � ��$ 20(�6-   �� 5!       � ��$ 1q�64   �� 5"       � ��
 �����60   5#      �� 5$      "  6   .�5%      ��  �@ CanUserAddRows .  63   �� 5&       �@ CanUserDeleteRows .  66   �� 5'       �@ CanUserReorderColumns .  6:   �� 5(       �@ CanUserResizeColumns .  69   �� 5)       �@ CanUserResizeRows .  66   �� 5*       �@ CanUserSortColumns .  67   �� 5+       �@ AutoGenerateColumns .  68   �� 5,       �@ HeadersVisibility$ Column=�66   �� 5-       � ��
 �����6/   �� 5.       �@ SelectionMode$ Single=�62   �� 5/       � ��
 ���� 6/   �� 50      % �@ HorizontalScrollBarVisibility$ Disabled=�6B   51      �� 52      "  6   .�53      ��  � �� �	#FF01FFFF6/   �� 54       � ��$ Center=�6?   �� 55       � ��$ Center=�6=   �� 56       � �� �	#FF2727276/   �� 57       � ��$ 14(�6-   58      �� 59      "  6   .�5:      ��  � ��
 ���� 6/   �� 5;       � ��$ Center=�6?    5<      P� 5=       �@J�IsMouseOver . . �5>      ��  � ��
 ���F�67   5?      5A      �� 5B      "  6   .�5C      ��  � ��$ Center=�6=   �� 5D       � ��$ Center=�6?   �� 5E       � �� 5F      �� 5G      "  6*   .R�5H      � #��z��6#   .+�5I   "   �� #��z��63   #��z��6r   5J      5K      5M      �� 5N       � ��$ 14(�6-    5O      P� 5P       �@ 
IsSelected . . �5Q      ��  � ��
 ���F�67   �� 5R       � ��
 �����67   5S      5U      �� 5V      " ��6   8   6,   �� 5W      #	 Z��6a   S� 5X      $
 	GetValues��6=   "  6T    5Y      M� 5Z      "  6   5\      5]      .��5_      �  � RowDefinitions 5`   
   �� 5a      $��50 �6   �� 5b      $��* �6   .+�5d   
   A� -   5        $��ungFunctions��5d       A� Columns$ 4��6*   $
��Left=�66   $��2��6Q   .+�5e      �� -   5         ��Name$ btnAdd��5e      $��增加��6%   �� 5f      -   5        $ 	btnDelete��5f      $��删除��6(   �� 5g      -   5        $ btnDeleteAll��5g      $��全部删除��6+   5h        5i   
   -   5        $��dgvRecipeItems��5i       $��1��6      
IsReadOnly .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6I   $��0,0,0,199.76q�6r   ��6Y   ��    Columns 5j      4  .System.Windows.Controls.DataGridComboBoxColumn  5k      ,	  &System.Windows.Controls.DataGridColumn 	  Header$ CuttingMode��6)      SelectedItemBinding 6>   �� *	CutMode+   ItemsSource 5l   -   ��  �� Source# [ 0
  *System.Windows.Controls.DataGridTextColumn
  5m      $ OffsetX:��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   �� *	OffsetX+ �� StringFormat$ F4��
  5n      $ OffsetY��6%    66   �� *	OffsetY+$ F4��
  5o      $ StartX��6%    65   �� *StartX+$ F4��
  5p      $
 EndX��6%    63   �� *EndX+$ F4��
  5q      $ Power��6%    64   �� *Power+$ F4��5s      5t      5u      