   M S B A M L   `   `   `  ����K  GWpfSerialization, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:WpfSerializationWpfSerialization  5   	   A =Common, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA-clr-namespace:Common.Converts;assembly=CommonCommon.Converts 5   	   !    WpfSerialization.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:WpfSerialization     5   	   Bconverts-clr-namespace:Common.Converts;assembly=Common     5   	     � Title$  序列化测试��5	   	   $	��350��6   $	��525��6$    � 	Resources 5
       �� MergedDictionaries(  "Common.Converts.ConverterBoolColor   BoolConvert �� Color�� 5   
    5      %   &	        (��      5      *1/SystemColors.InactiveSelectionHighlightBrushKey+)  5      6*   �� 5      # Z��6a   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      .+�5   
   �� $��0��6   ��5      �� 5      $��
Parameter1��6   $
��Bold"�6-   $��17(�6?   .��5      A� -   5        $��uim_Head��5   &    A� Columns$ 6��6   .+�5      �� $��名称:��6   $��Right=�6&   �� 5      $
��Left=�66   ��6   �� *
ItemName+66   �� 5      $��地址:��6   $��Right=�6&   �� 5      $
��Left=�69   ��6   �� *ItemAddress+69   �� 5       $��电话:��6   $��Right=�6&   �� 5!      $
��Left=�6<   ��6   �� *ItemPhonNumber+6<   5"      5$      �� 5&   
   $��1��6   ��5'      �� 5(      $��
Parameter2��6   $
��Bold"�6-   $��17(�6?   .��5*      &   System.Windows.Controls.DataGrid  -   5        $��dg_param��5*   3      AutoGenerateColumns .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6C      CanUserAddRows .  	   CanUserDeleteRows	 .  $��Center=�5,      
   CanUserReorderColumns
 .     CanUserSortColumns .     HeadersVisibility$ Column=�5/       �� SelectedIndex$ 0��50         
IsReadOnly .     Columns 52      0  *System.Windows.Controls.DataGridTextColumn  53      ,  &System.Windows.Controls.DataGridColumn   Width$ * 6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *
ItemName+   Header 54      �� 55      $��名称��6(   
�������62   57      4  .System.Windows.Controls.DataGridTemplateColumn  59      $ * 6.    5:      �� 5;      $��状态��6(   
�������62      CellTemplate 5=      �� 5>      .R�5?   "   A� $��13��6*   $��13��65   ��6A   �� *
ItemStatus+ �� 	Converter# [  5@      5B        5D      $ * 6)    63   �� *
ItemPosX+ 5E      �� 5F      $��pos_x��6(   
�������65   5H        5J      $ * 6)    63   �� *
ItemPosY+ 5K      �� 5L      $��pos_y��6(   
�������65   5N        5P      $ * 6)    63   �� *
ItemPosZ+ 5Q      �� 5R      $��pos_z��6(   
�������65   5T      5X      5Z      5[      5\      