   M S B A M L   `   `   `  ����J  FSerialPortTools, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:SerialPortToolsSerialPortTools  5   	        SerialPortTools.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:SerialPortTools     5   	   -   5          � WindowStartupLocation$  CenterScreen=�5   	    � Title$ 串口助手��5	   	   $	��476��6   $	��580��6#    � Icon$ bitbug_favicon.ico��6G    � 	Resources 5      5   /SerialPortTools.InverseNullableBooleanConverter   nullableBoolConverter-   'SerialPortTools.InverseBooleanConverter  boolConverter��%:   &	        &	        5   
   60     5   
   6(   5      .��5      � -   5        $��dataContext��5       � ColumnDefinitions 5   
   �� 5      $	��130 �6   �� 5      $	��58* �6   �� 5      $	��83* �6   �� 5      $
��301* �6   .+�5   
   � -   5        $��configPanel��5      $��5q�6    5      �� 5      $��2* �6#   �� 5      $��3* �6#    � RowDefinitions 5      �� 5      $
��auto �6    �� 5       $
��auto �6    �� 5!      $
��auto �6    �� 5"      $
��auto �6    �� 5#      $
��auto �6    �� 5$      $
��auto �6    �� 5%      $
��auto �6    �� 5&      $
��auto �6    �� 5'      $
��auto �6    �� 5(      $
��auto �6    �� 5)      $
��auto �6    .+�5+      �� $��	串口号��6   �� 5,      $��	波特率��6   $��1��6"   �� 5-      $��	校验位��6   $��2��6"   �� 5.      $��	数据位��6   $��3��6"   �� 5/      $��	停止位��6   $��4��6"   �� 50      $��编 码��6   $��5��6#   �� 51      -   5        $��comboBoxComm��51      $��1��6C   ��6+   �� 6C   �� 52      -   5        $��comboBoxBaudrate��52      $��1��6/   $��1��6<   ��6L   ��  �� Path$ 	Baudrates� �� SelectedIndex 6s   �� $ BaudrateSelected�53      �� 54      -   5        $��comboBoxVerifyBit��54      $��2��60   $��1��6=   ��6M   �� $ 	VerifyBit� 6u   �� $ VerifyBitSelected�55      �� 56      -   5        $��comboBoxDataBit��56      $��3��6.   $��1��6;   ��6K   �� $ DataBit� 6q   �� $ DataBitSelected�57      �� 58      -   5        $��comboBoxStopBit��58      $��4��6.   $��1��6;   ��6L   �� $ StopBit� 6q   �� $ StopBitSelected�59      �� 5:      -	   5        $��comboBoxEncoding��5:      $��5��6/   $��1��6<   ��6M   �� $ Encoding� 6s   �� $ EncodingSelected�5;      �� 5<      -
   5        $��btnOpenSerialPort��5<      $��打开串口��6.   $��2��6=   $��6��6Q   $��5,5,0,0q�6^   6o   �� 5=      $��接收格式��6   $��2��6%   $��7��69   $��5,5,0,0q�6F   .��5>      ��  �� Orientation$ Vertical=�6   .+�5?      	� -   5        $��rbHexReceived��5?   1   $��十六进制��6"   $��0,5,0,0q�6F   
	 � Tag$		 hex��6W   
 d� 	IsChecked
 6�   �� $ IsReceivedToHex�	� 5@      -   5        $��rbCharReceived��5@   1   $��字符模式��6"   $��0,5,0,0q�6G   $
	 char��6X   
 6�   �� $ IsReceivedToHex� �� 	Converter# [  5A      5B      �� 5C      $��发送格式��6   $��2��6%   $��8��69   $��5,5,0,0q�6F   .��5D      �� $ Vertical=�6   .+�5E      	� -   5        $��	rbHexSent��5E   "   $��十六进制��63   $��0,5,0,0q�6B   $		 hex��6S   
 6�   �� $ IsSendToHex�	� 5F      -   5        $��
rbCharSent��5F   "   $��字符模式��64   $��0,5,0,0q�6C   $
	 char��6T   
 6�   �� $ IsSendToHex�# [  5G      5H      �� 5I      $��定时发送(ms)��6   $��2��6)   $��9��6=   $��5,5,0,0q�6J   .��5J      �� $ 
Horizontal=�6   $	��0,5q�66   .+�5K      �� -   5        $��cbTimerSend��5K      $��Center=�62   $	 false��6M   6v   �� 5L      -   5        $��tbTimer��5L      $��80��6R   $��Center=�6]   ��6-   �� $ TimerInterval�{�6x   �� $ 	IsChecked� �� ElementName$ cbTimerSend��# [ 5M      5N      �� 5O      $��发送选项��6   $��2��6%   $��10��69   $��5,5,0,0q�6G   .��5P      �� $ Vertical=�6   $	��0,5q�64   .+�5Q      �� $ 
Horizontal=�6!   $	��0,5q�6:   .+�5R      �� -   5        $��cbAddNewLine��5R   #   $��换行发送��67   $��Center=�6F   
 6a   �� $ IsAddNewLine��� 5S      -   5        
�������$��>��5S   4   $��Center=�6\   $��10,0,0,0q�6w   5T      5[      5\      5]      � 5_   
   -   5        $��commOperation��5_      $��1��6$   $��3��64   ��6H   �� $ configPanel��$ ActualHeight� 5`      �� 5a      $��* �6#   �� 5b      $
��auto �6#    5d      �� 5e      $��2* �6    �� 5f      $
��auto �6    �� 5g      $��* �6    �� 5h      $
��auto �6    �� 5i      $
��auto �6    .+�5m      �� -   5        $��tbReceivedData��5m   j   $��Visible=�6    �� TextWrapping$ WrapWithOverflow=�6I   $��5q�6�   $��1q�6�    �� 
IsReadOnly . 6�   � 5p      $��1��6    5q      �� 5r      �� 5s      �� 5t      �� 5u      �� 5v      $��50 �6'    5x      �� 5y      $
��auto �6$   .+�5{      �� -   5        $��复制接收数据��5{      $	��5,2q�6*   
�������$��5q�6J   6V   �� 5|      -   5        $��清空接收区��5|      $��1��6)   $	��5,2q�69   
�������$��5q�6Y   6e   �� 5}      -   5        $��暂停显示��5}      $��2��6(   $	��5,2q�68   
�������$��5q�6X   6d   �� 5~      -   5        $��保存到文件��5~      $��3��6)   $	��5,2q�69   
�������$��5q�6Y   6e   �� 5      -   5        $	��>>>��5      $��4��6(   $	��5,2q�68   
�������$��5q�6X   6d   5�      �� 5�      -   5        $��
tbSendData��5�      $��2��6(    �� AcceptsReturn . $��1q�6K   $��6q�6_   ��6j   �� $ LastSend�6�   � 5�      $��3��6    5�      �� 5�      �� 5�      �� 5�      �� 5�      �� 5�      $��50 �6'    5�      �� 5�      $
��auto �6$   .+�5�      �� -   5        $��复制发送数据��5�      $	��5,2q�6*   
�������$��5q�6J   6V   �� 5�      -   5        $��清空发送区��5�      $��1��6)   $	��5,2q�69   
�������$��5q�6Y   6e   �� 5�      -   5        $��清空计数器��5�      $��2��6)   $	��5,2q�69   
�������$��5q�6Y   6e   �� 5�      -   5        $��从文件载入��5�      $��3��6)   $	��5,2q�69   
�������$��5q�6Y   6e   �� 5�      -   5        $��发送��5�      $��4��6&   $	��5,2q�66   
�������$��5q�6V   6b   5�      � 5�      $��4��6   $��5q�6    .+�5�      �� -    5        $��tbFindCommNumber��5�       �� TextAlignment$
 Left=�62   $��	5,10,5,10q�6G   5�      �� 5�      -!   5        $��lbCommandStackPanel��5�      $��1��64   $��5��6D   $ Vertical=�6U   $��0,5,5,5q�6l   .+�5�      �� -"   5        $��	lbCommand��5�      $y�	Collapsed=�6�   ��6+   �� $ Commands���6Q   �� $ lbCommandStackPanel��$ ActualHeight���5�      �� 5�      .R�5�      �� $ 
Horizontal=�6)   .+�5�   "   �� -#   5        $	��Hex��5�   +   $��Center=�6a   $��2q�6|   $��12(�6�   
 69   �� $ CommandIsHex�6�   �� 5�   "   $	��190��6M   $��Center=�6Y   $��5q�6t   $��2q�6�   $��12(�6�   ��6+   �� $ CommandData�6�   �� 5�   "   -$   5        $��发送��5�   *   $��Center=�67   $��2q�6R   $��2q�6^   $��12(�6j   6x   �� 5�   "   $��50��6I   $��Center=�6T   $��5q�6o   $��2q�6{   ��6+   �� $ Comment�6{   5�      5�      5�      5�      5�      5�      5�      