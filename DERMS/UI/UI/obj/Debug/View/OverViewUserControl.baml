   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:UI.ViewUI.View  5      +clr-namespace:UI.ViewModelUI.ViewModel  5      !    UI.View.OverViewUserControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:UI.View     5      0	ViewModelclr-namespace:UI.ViewModel     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      .��5      �   � DataContext  5      /   )UI.ViewModel.OverviewUserControlViewModel  5       � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��* �6    � ColumnDefinitions 5      �� 5      $��* �6   �� 5      $	��300 �6   .+�5      � $��0��6	   $��2��6   ��6*   �� *MinHeightFilter+.+�5      �� $��10,7,0,0q�6   $
��Left=�6    � ToolTip$ Filters��69   $	��Top=�6K    � Cursor$
 Hand��6c   
������ 
������ $��50��6�   $��25��6�   ��6�   ��  �� Path$ FilterOnOffCommand�.��5      � .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 
FilterMenu=�6   ���	#FF0398E2$��Center=�6H   $��Center=�6c   5      5       �� 5"      $
 Type��6   ���	#FF0398E2$��Center=�64   $
��Left=�6�   $��	60,31,0,0q�6  $	��Top=�6  $	��150��6/  $��1q�6;  ���	#FF0398E2��6X   �� *
FilterType+ �� SelectedItem 6{   �� *)'SignalsSummaryFilter.SelectedFilterType+y�6�   �� $ FilterVisibility�6O  �� 5#      
������ $��Italic$�6'   ���	#FF0398E2���	#FF0398E2$	��250��6i   $��25��6u   $	��Top=�6�   $
��Left=�6�   $��	280,0,0,0q�6�   $ Address��6�   $��0 0 0 1q�6�   ��6�   �� *SIEMFilter.Address+y�6  �� $ FilterVisibility�.��6D  *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5$      +  %Microsoft.Xaml.Behaviors.EventTrigger  5%      	   	EventName$	 GotFocus��6   *  $Microsoft.Xaml.Behaviors.TriggerBase
   Actions.
 5&      4  .Microsoft.Xaml.Behaviors.Core.CallMethodAction     
MethodName$ OnFocusAddress��6      TargetObject 67   �� 5'        5(      $	 	LostFocus��6   .
 5)        $ OnOffFocusAddress��6    6:   �� 5*      .��5+      5,      (  "System.Windows.Controls.DatePicker  5/      $��25��69   $
 From��6E   $��732,10,0,63q�6T   ���	#FF0398E2$��0q�6�   ���	#FF0398E2$
��Left=�6�   $	��150��6�      SelectedDate 6   �� *SIEMFilter.From+y�6�   �� $ FilterVisibility�6�     50      $��25��67   $ To��6C   $��732,42,0,31q�6P   ���	#FF0398E2$��0q�6}   ���	#FF0398E2$
��Left=�6�   $	��150��6�    6   �� *SIEMFilter.To+y�6�   �� $ FilterVisibility�6�   �� 51      
������ $��Italic$�6(   ���	#FF0398E2���	#FF0398E2$	��350��6j   $��25��6v   $	��Top=�6�   $
��Left=�6�   $��
280,50,0,0q�6�   $	 GID��6�   $��0 0 0 1q�6�   ��6�   �� *SIEMFilter.Content+y�6  �� $ FilterVisibility�.��6B   52        53      $	 GotFocus��6   .
 54        $ 
OnFocusGID��6    63   �� 55        56      $	 	LostFocus��6   .
 57        $ OnOffFocusGID��6    66   �� 58      .��59      5:      �� 5;      $��20��6   $��910,26,0,26q�6   $��Filter��6-   
������ ���	#FF0398E2   HoverButtonEffect#���   6n   $
��Left=�6�   $��84��6
  ��6�   �� $ ApplyFiltersCommand�y�6�   �� *FilterVisibility+6
  �� 5<      $��Filter by time��6   $
��Left=�6'   $��
732,72,0,8q�6z   ���	#FF0398E2$��1q�6�   ���	#FF0398E2���	#FF0398E2 d� 	IsChecked 6B   �� *#!SignalsSummaryFilter.FilterByTime+y�6�   �� $ FilterVisibility�5=      � 5>      $��1��6	   $��2��6   .+�5?      &   System.Windows.Controls.DataGrid  $��1q�6   ���	#FF0398E2   SelectionMode$ Single=�6h      AutoGenerateColumns .     CanUserAddRows .     CanUserDeleteRows .     CanUserResizeRows .     SelectionUnit$ FullRow=�5@   ;   
������ ���	#FF0398E2$
��Bold"�6�   $��14(�6�   ��5?   :   �� *
SiemData+ 5@   l   �� *SelectedDataItem+   RowStyle 5C      �� 5D       �� 
TargetType)	  #System.Windows.Controls.DataGridRow" 	 6   .�5E      ��  �� Property � �� �� Value$ 0q�6*   �� 5F       � ��
 ���� 6%   �� 5G       �@J�IsHitTestVisible . 6+    �� Triggers 5H      P� 5I   	    P� Property �@J�IsMouseOver P� Value . . �5K   
   ��  � �� �#4743436'   5L   
   P� 5M   	    �@	 
IsSelected . . �5N   
   ��  � �� �	#FFDEDEDE6'   5O   
   5Q         Columns 5T      4
  .System.Windows.Controls.DataGridTemplateColumn
  5U      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 60    
  CellTemplate 5V      �� 5W   	   .R�5X   
     $��Center=�6e    6"   �� *
AlarmImage+��6>   �� *AlarmImageColor+6e   5Y   
   5[      0  *System.Windows.Controls.DataGridTextColumn  5]       . $
 Auto 6L       MinWidth$	  200Q�6Y   1  +System.Windows.Controls.DataGridBoundColumn!   Binding! 6   �� *TimeOfEvent+"   Header" 5^      �� 5_   	   ���	#FF0398E2$
��Bold"�6'   $��16(�69   .��6G   	Timestamp6R   5a        5e       . $
 Auto 6I   $	  210Q�6V   ! 6   �� *
Loglevel+" 5f      �� 5g   	   ���	#FF0398E2$
��Bold"�6'   $��16(�69   .��6G   	Log Level6R   5i        5k       . $
 Auto 6J   ! 6   �� *	EventInfo+" 5l      �� 5m   	   ���	#FF0398E2$
��Bold"�6'   $��16(�69   .��6G   Event Description6Z   5o      5q      5r      � 5s      $��2��6	   $��2��6   .+�5t      �� 
������ $��2��6(   $��2��65   .@�5u      �� .��5v      �� # J� Opacity$	# 0.9Q�6   ._�5w      �� $ �� Orientation$$ 
Horizontal=�6   .+�5x   	   �� ���	#FF0398E2$��REGULAR EVENT��6&   $
��Bold"�6>   5z   	   5{      5|      �� 5}      .��5~      �� 
������ $	# 0.9Q�6(   ._�5      �� $$ 
Horizontal=�6   .+�5�   	     $ Shield=�6!   
��� � �$��20��6B   $��20��6M   5�   	   5�      5�      �� 5�      .��5�      �� $	# 0.9Q�6   ._�5�      �� $$ 
Horizontal=�6   .+�5�   	   �� ���	#FF0398E2$��|��6&   $
��Bold"�62   5�   	   5�      5�      �� 5�      .��5�      �� $	# 0.9Q�6   ._�5�      �� $$ 
Horizontal=�6   .+�5�   	   �� ���	#FF0398E2$��POSSIBLE DDOS ATTACK��6&   $
��Bold"�6E   5�   	   5�      5�      �� 5�      .��5�      �� 
������ $	# 0.9Q�6(   ._�5�      �� $$ 
Horizontal=�6   .+�5�   	     $ Shield=�6!   
��� ���$��20��6C   $��20��6N   5�   	   5�      5�      �� 5�      .��5�      �� $	# 0.9Q�6   ._�5�      �� $$ 
Horizontal=�6   .+�5�   	   �� ���	#FF0398E2$��|��6&   $
��Bold"�62   5�   	   5�      5�      �� 5�      .��5�      �� $	# 0.9Q�6   ._�5�      �� $$ 
Horizontal=�6   .+�5�   	   �� ���	#FF0398E2$'��!POSSIBLE MAN-IN-THE-MIDDLE ATTACK��6&   $
��Bold"�6R   5�   	   5�      5�      �� 5�      .��5�      �� 
������ $	# 0.9Q�6(   ._�5�      �� $$ 
Horizontal=�6   .+�5�   	     $ Shield=�6!   
���  ��$��20��6@   $��20��6K   5�   	   5�      5�      5�      5�      � 5�      $��3��6	   $��2��6   .+�5�      �� $
��1024��6   $��30��6   ���	#FF0398E2$#��CURRENT HEALTH OF SERVICES : ��6;   $
��Bold"�6c   5�      � 5�      $��4��6	   $��2��6   .+�5�        $ Shield=�6   $��Center=�6+   $��Center=�6F   
��� � �$	��200��6v   $	��135��6�   $��43,25,781,27q�6�   �� 5�      $��Service is healthy��6   % �� TextAlignment$% Center=�6'   $	��263��6>   $��14(�6J   ���	#FF0398E2$��Bottom=�6o   $��Center=�6�   $��	0,0,761,0q�6�   �� 5�      $��Network Model Service��6   $% Center=�6*   $	��263��6A   $��14(�6M   ���	#FF0398E2$	��Top=�6r   $��Center=�6�   $��0,-3,761,162q�6�     5�      $ Shield=�6   $��Center=�6+   $��Center=�6F   
���  ��$	��200��6t   $	��135��6�   $��326,25,498,27q�6�   �� 5�      $'��!Possible Man in the Middle Attack��6   $% Center=�66   $	��263��6M   $��14(�6Y   ���	#FF0398E2$��Bottom=�6~   $��Center=�6�   $��308,0,453,0q�6�   & J� RenderTransformOrigin$& 0.491,1.545&�6�   �� 5�      $��Calculation Engine��6   $% Center=�6'   $	��263��6>   $��14(�6J   ���	#FF0398E2$	��Top=�6o   $��Center=�6�   $��308,-3,453,162q�6�   $& 0.491,1.545&�6�     5�      $ Shield=�6   $��Center=�6+   $��Center=�6F   
��� ���$	��200��6w   $	��135��6�   $��636,25,188,27q�6�   �� 5�      $��Possible DDoS Attack��6   $% Center=�6)   $	��263��6@   $��14(�6L   ���	#FF0398E2$��Bottom=�6q   $��Center=�6�   $��610,0,151,0q�6�   $& 0.491,1.545&�6�   �� 5�      $��Scada��6   $% Center=�6   $	��263��61   $��14(�6=   ���	#FF0398E2$	��Top=�6b   $��Center=�6z   $��610,-3,151,162q�6�   $& 0.491,1.545&�6�   5�      5�      5�      