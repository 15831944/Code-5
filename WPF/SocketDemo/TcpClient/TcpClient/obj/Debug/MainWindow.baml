   M S B A M L   `   `   `  ����D  @TcpClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:TcpClient	TcpClient  5   	       TcpClient.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:TcpClient     5   	   -   5          � Title$  Tcp客户端��5   	   $	��500��6   $	��800��6%   .��5	      �  � RowDefinitions 5
   
   �� 5      $��5* �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��4* �6   �� 5      $��* �6   .+�5   
   �� -   5        $��ListViwe��5   0   $��0��6   $��0��6    
����·�6@   �� 5   
   -   5        $��btnClean��5      $��0��6!   $��0��6.   $��清屏��6>   $��Right=�6K   $��Bottom=�6g   �� 5   
   $��1��6    �� Orientation$ Vertical=�6%   .+�5      �� $��连接��6   $��20(�6#   .��5      �� $ Vertical=�6   .+�5      �� $ 
Horizontal=�6!   .+�5      �� $��20(�6    $��Center=�6.   $��Center=�6K   $	��ip:��6f   �� 5      -   5        $��labIpAdd��5   f   $��15(�6"   $
��Left=�60   $��Center=�6K   $	��100��6v   $��	127.0.0.1��6�   5      �� 5      $ 
Horizontal=�6!   .+�5      �� $��20(�6"   $��Center=�60   $��Center=�6M   $��port:��6h   �� 5      -   5        $��labPort��5   f   $��15(�6"   $
��Left=�60   $��Center=�6K   $��60��6u   $
��1001��6�   5      �� 5      -   5        $��
btnConnect��5      $��40��6/   $��20(�6;   $��连接服务器��6I   $��2q�6Y   5       5!      5+      �� 5,   
   -   5        $��txtSendMessage��5,      $��1��6(   $��0��65   $��40��6E   
�������6Q   �� 5-   
   -   5        $��btnSend��5-      $��1��6!   $��1��6.   $��20(�6>   $��发送��6L   {�. $��2q�6j   5.      5/      