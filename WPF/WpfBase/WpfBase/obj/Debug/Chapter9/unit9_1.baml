   M S B A M L   `   `   `  ����B  >WpfBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:WpfBase.Chapter9WpfBase.Chapter9  5          WpfBase.Chapter9.unit9_1   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:WpfBase.Chapter9     5        J� CommandBindings  5	      )  #System.Windows.Input.CommandBinding  5
   
   -   5           Command$	 New��5
      6(     5   
   -   5        $
 Open��5      6(     5   
   -   5        $
 Save��5      6(   .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��命令绑定��6   .��5      ��  �� Orientation$ Vertical=�6   .+�5      �� $��2q�6   $
��new1��6$   $��ApplicationCommands.New��63   �� 5      $��2q�6   $
��new2��6$   $	��New��63   
 � Tag$/ )ApplicationCommands.New可以简化成New��6A   5      5      �� 5   
   $��禁用命令��6   $��1��6!   .��5      ]� .+�5       o� $	��Top=�6   .@�5!      m� $
��File��6   .@�5"      m�  m� Command$	 New��6#   5#      5$      ]� 5%      .+�5&      `� $	��Top=�6"   .�5'      c� .@�5(      �� $	��New��6%   $	��New��63   �� 5)      $
��Open��6%   $
��Open��64   �� 5*      $
��Save��6%   $
��Save��64   5+      c� 5,      .@�5-      �� $	��Cut��6%   $	��Cut��63   �� 5.      $
��Copy��6%   $
��Copy��64   �� 5/      $��Paste��6%   $��Paste��65   54      55      �� 56      -   5        $��txt_edit��56   3    �� AcceptsReturn . 57      58      59      5:      5;      