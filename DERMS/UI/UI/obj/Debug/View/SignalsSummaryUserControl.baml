   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:UI.ViewModelUI.ViewModel  5      '    !UI.View.SignalsSummaryUserControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0	ViewModelclr-namespace:UI.ViewModel     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      .��5      �   � RowDefinitions  5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $��30 �6   .+�5   
   � $��0��6   ��6   �� *MinHeightFilter+.+�5      �� $��10,7,0,0q�6   $
��Left=�6'    � ToolTip$ Filters��6B   $	��Top=�6T    � Cursor$
 Hand��6l   
������ 
������ $��50��6�   $��25��6�   ��6�   ��  �� Path$ FilterOnOffCommand�.��5      � .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 
FilterMenu=�6.   ���	#FF0398E2$��Center=�6W   $��Center=�6r   5      5      �� 5      
������ $��Italic$�6/   ���	#FF0398E2���	#FF0398E2$	��150��6q   $��25��6}   $	��Top=�6�   $
��Left=�6�   $��65,5,0,0q�6�   $
 Name��6�   $��0 0 0 1q�6  ��6�   �� *SignalsSummaryFilter.Name+y�6"  �� $ FilterVisibility�.��6O  *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5      +  %Microsoft.Xaml.Behaviors.EventTrigger  5         	EventName$ GotFocus��6%   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5      4  .Microsoft.Xaml.Behaviors.Core.CallMethodAction     
MethodName$ OnFocusName��6-   	   TargetObject	 6F   �� 5        5      $ 	LostFocus��6%   . 5        $ OnOffFocusName��6-   	 6I   �� 5      .��5    *   5!      �� 5"      $
 Type��6   ���	#FF0398E2$��Center=�6=   $
��Left=�6�   $��	65,40,0,0q�6  $	��Top=�6   $	��150��68  $��1q�6D  ���	#FF0398E2��6a   �� *
FilterType+
 �� SelectedItem
 6�   �� *)'SignalsSummaryFilter.SelectedFilterType+y�6�   �� $ FilterVisibility�6X  �� 5#      
������ $��Italic$�60   ���	#FF0398E2���	#FF0398E2$	��150��6r   $��25��6~   $	��Top=�6�   $
��Left=�6�   $��	230,5,0,0q�6�   $ Address��6�   $��0 0 0 1q�6  ��6�   �� *SignalsSummaryFilter.Address+y�6*  �� $ FilterVisibility�.��6W   5$        5%      $ GotFocus��6%   . 5&        $ OnFocusAddress��6-   	 6I   �� 5'        5(      $ 	LostFocus��6%   . 5)        $ OnOffFocusAddress��6-   	 6L   �� 5*      .��5+   *   5,      �� 5-      
������ $��Italic$�60   ���	#FF0398E2���	#FF0398E2$	��150��6r   $��25��6~   $	��Top=�6�   $
��Left=�6�   $��
230,40,0,0q�6�   $ Address��6  $��0 0 0 1q�6  ��6�   �� * SignalsSummaryFilter.OwnersGID+y�6-  �� $ FilterVisibility�.��6Z   5.        5/      $ GotFocus��6%   . 50        $ OnFocusOwnersGID��6-   	 6K   �� 51        52      $ 	LostFocus��6%   . 53        $ OnOffFocusOwnersGID��6-   	 6N   �� 54      .��55   *   56      �� 57      
������ $��Italic$�60   ���	#FF0398E2���	#FF0398E2$	��150��6r   $��25��6~   $	��Top=�6�   $
��Left=�6�   $��
395,40,0,0q�6�   $ 	Raw Value��6   $��0 0 0 1q�6  ��6�   �� *SignalsSummaryFilter.RawValue+y�6.  �� $ FilterVisibility�.��6[   58        59      $ GotFocus��6%   . 5:        $ OnFocusRawValue��6-   	 6J   �� 5;        5<      $ 	LostFocus��6%   . 5=        $ OnOffFocusRawValue��6-   	 6M   �� 5>      .��5?   *   5@      (  "System.Windows.Controls.DatePicker  5A      $��25��6L   $
 From��6X   $��
560,6,0,54q�6g   ���	#FF0398E2$��0q�6�   ���	#FF0398E2$
��Left=�6�   $	��150��6     SelectedDate 6   �� *SignalsSummaryFilter.From+y�6�   �� $ FilterVisibility�6    5B      $��25��6J   $ To��6V   $��560,40,0,20q�6c   ���	#FF0398E2$��0q�6�   ���	#FF0398E2$
��Left=�6�   $	��150��6   6   �� *SignalsSummaryFilter.To+y�6�   �� $ FilterVisibility�6  �� 5C      $ Alarm��6   ���	#FF0398E2$��Center=�6>   $
��Left=�6�   $��	725,5,0,0q�6  $	��Top=�6#  $	��150��6;  $��1q�6G  ���	#FF0398E2��6b   �� *FilterAlarm+
 6�   �� **(SignalsSummaryFilter.SelectedFilterAlarm+y�6�   �� $ FilterVisibility�6[  �� 5D      
������ $��Italic$�61   ���	#FF0398E2���	#FF0398E2$	��150��6s   $��25��6   $	��Top=�6�   $
��Left=�6�   $��
725,40,0,0q�6�   $	 GID��6�   $��0 0 0 1q�6
  ��6�   �� *SignalsSummaryFilter.GID+y�6$  �� $ FilterVisibility�.��6Q   5E        5F      $ GotFocus��6%   . 5G        $ 
OnFocusGID��6-   	 6E   �� 5H        5I      $ 	LostFocus��6%   . 5J        $ OnOffFocusGID��6-   	 6H   �� 5K      .��5L   *   5M      �� 5N      $��20��6   $��910,26,0,26q�6!   $��Filter��66   
������ ���	#FF0398E2   HoverButtonEffect#���   6w   $
��Left=�6�   $��84��6  ��6�   �� $ ApplyFiltersCommand�y�6�   �� *FilterVisibility+6  �� 5O      $��Filter by time��6   $
��Left=�60   $��560, 75, 0, 5q�6�   ���	#FF0398E2$��1q�6�   ���	#FF0398E2���	#FF0398E2 d� 	IsChecked 6K   �� *#!SignalsSummaryFilter.FilterByTime+y�6�   �� $ FilterVisibility�5P      � 5Q   
   $��1��6   .+�5R      &   System.Windows.Controls.DataGrid  $��1q�6   ���	#FF0398E2   SelectionMode$ Single=�6o      AutoGenerateColumns .     CanUserAddRows .     CanUserDeleteRows .     CanUserResizeRows .     SelectionUnit$ FullRow=�5S   ;   
������ ���	#FF0398E2$
��Bold"�6�   $��14(�6�   ��5R   C   �� *Points+
 5S   l   �� *SelectedDataItem+ J� InputBindings 5T      d� 5U       d� MouseAction$ LeftDoubleClicke�6#    �� Command 6A   �� *SelectedPointCommand+ �� CommandParameter 6j   �� *Points+   RowStyle 5X      �� 5Y       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6   .�5Z      ��  �� Property � �� �� Value$ 0q�6<   �� 5[       � ��
 ���� 67   �� 5\       �@J�IsHitTestVisible . 6=    �� Triggers 5]      P� 5^       P� Property �@J�IsMouseOver P� Value . . �5`   "   ��  � �� �#4743436?   5a      P� 5b       �@ 
IsSelected . . �5c   "   ��  � �� �	#FFDEDEDE6?   5d      5f         Columns 5i      4	  .System.Windows.Controls.DataGridTemplateColumn	  5j      ,
  &System.Windows.Controls.DataGridColumn 
  
IsReadOnly .   
  Width5  /System.Windows.Controls.DataGridLengthConverter$
  Auto 6?   ! 	  CellTemplate! 5k      �� 5l      .R�5m   "     $��Center=�6}    6:   �� *
AlarmImage+��6V   �� *AlarmImageColor+6}   5n      5p      0  *System.Windows.Controls.DataGridTextColumn  5q       . $
  Auto 6T   1  +System.Windows.Controls.DataGridBoundColumn"   Binding" 6)   �� *Name+# 
  Header# 5r      � 5s      .+�5t   "   �� ���	#FF0398E2$
��Bold"�6?   $��16(�6Q   .��6_   Use6d   5u      5w        5x       . $
  Auto 6U   " 6*   �� *Type+# 5y      �� 5z      ���	#FF0398E2$
��Bold"�6<   $��16(�6N   .��6\   Type6b   5|        5}       . $
  Auto 6n   $ 
  MinWidth$	$ 120Q�6{   " 6)   �� *	Address+% �� StringFormat$% {0:d5}��# 5~      �� 5      ���	#FF0398E2$
��Bold"�6<   $��16(�6N   .��6\   	Address6e   5�        5�       . $
  Auto 6X   " 6)   �� *
RawValue+# 5�      �� 5�      ���	#FF0398E2$
��Bold"�6<   $��16(�6N   .��6\   Value6c   5�        5�       . $
  Auto 6Y   $	$ 200Q�6f   " 6)   �� *	Timestamp+# 5�      �� 5�      ���	#FF0398E2$
��Bold"�6<   $��16(�6N   .��6\   	Timestamp6g   5�        5�       . $
  Auto 6U   $	$ 210Q�6b   " 6)   �� *Alarm+# 5�      �� 5�      ���	#FF0398E2$
��Bold"�6<   $��16(�6N   .��6\   Alarm6c   5�        5�       . $
  Auto 6]   & 
  SortDirection$& 
DescendingX�6j   " 6)   �� *GidGeneratora+# 5�      �� 5�      ���	#FF0398E2$
��Bold"�6<   $��16(�6N   .��6\   
Owners GID6h   5�        5�       . $
  Auto 6S   " 6)   �� *Gid+# 5�      �� 5�      ���	#FF0398E2$
��Bold"�6<   $��16(�6N   .��6\   GID6a   5�      5�      5�      � 5�   
   $��2��6   .+�5�      �� 
������ $��2��61   $��2��6>   .@�5�      �� .��5�      �� ' J� Opacity$	' 0.9Q�6   ._�5�      �� ( �� Orientation$( 
Horizontal=�6%   .+�5�      �� ���	#FF0398E2$��
HIGH ALARM��6;   $
��Bold"�6P   5�      5�      5�      �� 5�      .��5�      �� ���#cc0000$	' 0.9Q�63   ._�5�      �� $( 
Horizontal=�6%   .+�5�      �� $�� ��6$   $
��Bold"�6/   $��20��6K   $��20��6V   5�      5�      5�      �� 5�      .��5�      �� $	' 0.9Q�6   ._�5�      �� $( 
Horizontal=�6%   .+�5�      �� ���	#FF0398E2$��|��6;   $
��Bold"�6G   5�      5�      5�      �� 5�      .��5�      �� $	' 0.9Q�6   ._�5�      �� $( 
Horizontal=�6%   .+�5�      �� ���	#FF0398E2$��	LOW ALARM��6;   $
��Bold"�6O   5�      5�      5�      �� 5�      .��5�      �� ���#ff3300$	' 0.9Q�63   ._�5�      �� $( 
Horizontal=�6%   .+�5�      �� $�� ��6$   $
��Bold"�6/   $��20��6K   $��20��6V   5�      5�      5�      �� 5�      .��5�      �� $	' 0.9Q�6   ._�5�      �� $( 
Horizontal=�6%   .+�5�      �� ���	#FF0398E2$��|��6;   $
��Bold"�6G   5�      5�      5�      �� 5�      .��5�      �� $	' 0.9Q�6   ._�5�      �� $( 
Horizontal=�6%   .+�5�      �� ���	#FF0398E2$��ABNORMAL VALUE��6;   $
��Bold"�6T   5�      5�      5�      �� 5�      .��5�      �� ���#ff33cc$	' 0.9Q�63   ._�5�      �� $( 
Horizontal=�6%   .+�5�      �� $�� ��6$   $
��Bold"�6/   $��20��6K   $��20��6V   5�      5�      5�      �� 5�      .��5�      �� $	' 0.9Q�6   ._�5�      �� $( 
Horizontal=�6%   .+�5�      �� ���	#FF0398E2$��|��6;   $
��Bold"�6G   5�      5�      5�      �� 5�      .��5�      �� $	' 0.9Q�6   ._�5�      �� $( 
Horizontal=�6%   .+�5�      �� ���	#FF0398E2$��REASONABILITY FAILURE��6;   $
��Bold"�6[   5�      5�      5�      �� 5�      .��5�      �� ���#ff9966$	' 0.9Q�63   ._�5�      �� $( 
Horizontal=�6%   .+�5�      �� $�� ��6$   $
��Bold"�6/   $��20��6K   $��20��6V   5�      5�      5�      5�      5�      5�      5�      