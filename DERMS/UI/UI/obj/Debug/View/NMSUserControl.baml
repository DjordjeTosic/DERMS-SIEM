   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:UI.ViewUI.View  5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5      +clr-namespace:UI.ViewModelUI.ViewModel  5          UI.View.NMSUserControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:UI.View     5      Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5      0	ViewModelclr-namespace:UI.ViewModel     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5	      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
      .��5      �   � DataContext  5      *   $UI.ViewModel.NMSUserControlViewModel  5       � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $��30 �6   �� 5      $��* �6   �� 5      $��30 �6    � ColumnDefinitions 5      �� 5      $��* �6   �� 5      $	��300 �6   .+�5      � $��0��6	   $��2��6   ��6*   �� *MinHeightFilter+.+�5      �� $��10,7,0,0q�6   $
��Left=�6    � ToolTip$ Filters��69   $	��Top=�6K    � Cursor$
 Hand��6c   
������ 
������ $��50��6�   $��25��6�   ��6�   ��  �� Path$ FilterOnOffCommand�.��5      � .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 
FilterMenu=�6   ���	#FF0398E2$��Center=�6H   $��Center=�6c   5       5!      �� 5#      $
 Type��6   ���	#FF0398E2$��Center=�64   $
��Left=�6�   $��	60,31,0,0q�6  $	��Top=�6  $	��150��6/  $��1q�6;  ���	#FF0398E2��6X   �� *
FilterType+ �� SelectedItem 6{   �� *)'SignalsSummaryFilter.SelectedFilterType+y�6�   �� $ FilterVisibility�6O  �� 5$      
������ $��Italic$�6'   ���	#FF0398E2���	#FF0398E2$	��250��6i   $��25��6u   $	��Top=�6�   $
��Left=�6�   $��	280,0,0,0q�6�   $ Address��6�   $��0 0 0 1q�6�   ��6�   �� *SIEMFilter.Address+y�6  �� $ FilterVisibility�.��6D  *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5%      +  %Microsoft.Xaml.Behaviors.EventTrigger  5&      	   	EventName$	 GotFocus��6   *  $Microsoft.Xaml.Behaviors.TriggerBase
   Actions.
 5'      4  .Microsoft.Xaml.Behaviors.Core.CallMethodAction     
MethodName$ OnFocusAddress��6      TargetObject 67   �� 5(        5)      $	 	LostFocus��6   .
 5*        $ OnOffFocusAddress��6    6:   �� 5+      .��5,      5-      (  "System.Windows.Controls.DatePicker  50      $��25��69   $
 From��6E   $��732,10,0,63q�6T   ���	#FF0398E2$��0q�6�   ���	#FF0398E2$
��Left=�6�   $	��150��6�      SelectedDate 6   �� *SIEMFilter.From+y�6�   �� $ FilterVisibility�6�     51      $��25��67   $ To��6C   $��732,42,0,31q�6P   ���	#FF0398E2$��0q�6}   ���	#FF0398E2$
��Left=�6�   $	��150��6�    6   �� *SIEMFilter.To+y�6�   �� $ FilterVisibility�6�   �� 52      
������ $��Italic$�6(   ���	#FF0398E2���	#FF0398E2$	��350��6j   $��25��6v   $	��Top=�6�   $
��Left=�6�   $��
280,50,0,0q�6�   $	 GID��6�   $��0 0 0 1q�6�   ��6�   �� *SIEMFilter.Content+y�6  �� $ FilterVisibility�.��6B   53        54      $	 GotFocus��6   .
 55        $ 
OnFocusGID��6    63   �� 56        57      $	 	LostFocus��6   .
 58        $ OnOffFocusGID��6    66   �� 59      .��5:      5;      �� 5<      $��20��6   $��910,26,0,26q�6   $��Filter��6-   
������ ���	#FF0398E2   HoverButtonEffect#���   6n   $
��Left=�6�   $��84��6
  ��6�   �� $ ApplyFiltersCommand�y�6�   �� *FilterVisibility+6
  �� 5=      $��Filter by time��6   $
��Left=�6'   $��
732,72,0,8q�6z   ���	#FF0398E2$��1q�6�   ���	#FF0398E2���	#FF0398E2 d� 	IsChecked 6B   �� *#!SignalsSummaryFilter.FilterByTime+y�6�   �� $ FilterVisibility�5>      � 5?      $��1��6	   $��2��6   .+�5@      &   System.Windows.Controls.DataGrid  $��1q�6   ���	#FF0398E2   SelectionMode$ Single=�6h      AutoGenerateColumns .     CanUserAddRows .     CanUserDeleteRows .     CanUserResizeRows .     SelectionUnit$ FullRow=�5A   ;   
������ ���	#FF0398E2$
��Bold"�6�   $��14(�6�   ��5@   :   �� *
SiemData+ 5A   l   �� *SelectedDataItem+   RowStyle 5D      �� 5E       �� 
TargetType)	  #System.Windows.Controls.DataGridRow" 	 6   .�5F      ��  �� Property � �� �� Value$ 0q�6*   �� 5G       � ��
 ���� 6%   �� 5H       �@J�IsHitTestVisible . 6+    �� Triggers 5I      P� 5J   	    P� Property �@J�IsMouseOver P� Value . . �5L   
   ��  � �� �#4743436'   5M   
   P� 5N   	    �@	 
IsSelected . . �5O   
   ��  � �� �	#FFDEDEDE6'   5P   
   5R         Columns 5U      4
  .System.Windows.Controls.DataGridTemplateColumn
  5V      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 60    
  CellTemplate 5W      �� 5X   	   .R�5Y   
     $��Center=�6e    6"   �� *
AlarmImage+��6>   �� *AlarmImageColor+6e   5Z   
   5\      0  *System.Windows.Controls.DataGridTextColumn  5^       . $
 Auto 6L       MinWidth$	  200Q�6Y   1  +System.Windows.Controls.DataGridBoundColumn!   Binding! 6   �� *TimeOfEvent+"   Header" 5_      �� 5`   	   ���	#FF0398E2$
��Bold"�6'   $��16(�69   .��6G   	Timestamp6R   5b        5c       . $
 Auto 6_   $	  120Q�6l   ! 6   �� *	Address+# �� StringFormat$# {0:d5}��" 5d      �� 5e   	   ���	#FF0398E2$
��Bold"�6'   $��16(�69   .��6G   	Address6P   5g        5j       . $
 Auto 6I   $	  210Q�6V   ! 6   �� *
Loglevel+" 5k      �� 5l   	   ���	#FF0398E2$
��Bold"�6'   $��16(�69   .��6G   	Log Level6R   5n        5p       . $
 Auto 6J   ! 6   �� *	EventInfo+" 5q      �� 5r   	   ���	#FF0398E2$
��Bold"�6'   $��16(�69   .��6G   Event Description6Z   5t      5v      5w      � 5x      $��2��6	   $��2��6   .+�5y      �� 
������ $��2��6(   $��2��65   .@�5z      �� .��5{      �� $ J� Opacity$	$ 0.9Q�6   ._�5|      �� % �� Orientation$% 
Horizontal=�6   .+�5}   	   �� ���	#FF0398E2$��REGULAR EVENT��6&   $
��Bold"�6>   5   	   5�      5�      �� 5�      .��5�      �� 
������ $	$ 0.9Q�6(   ._�5�      �� $% 
Horizontal=�6   .+�5�   	     $ Shield=�6!   
��� � �$��20��6B   $��20��6M   5�   	   5�      5�      �� 5�      .��5�      �� $	$ 0.9Q�6   ._�5�      �� $% 
Horizontal=�6   .+�5�   	   �� ���	#FF0398E2$��|��6&   $
��Bold"�62   5�   	   5�      5�      �� 5�      .��5�      �� $	$ 0.9Q�6   ._�5�      �� $% 
Horizontal=�6   .+�5�   	   �� ���	#FF0398E2$��POSSIBLE DDOS ATTACK��6&   $
��Bold"�6E   5�   	   5�      5�      �� 5�      .��5�      �� 
������ $	$ 0.9Q�6(   ._�5�      �� $% 
Horizontal=�6   .+�5�   	     $ Shield=�6!   
��� ���$��20��6C   $��20��6N   5�   	   5�      5�      5�      5�      � 5�      $��3��6	   .+�5�      #  LiveCharts.Wpf.CartesianChart  -   5        &  Name$& cartesianChart��5�      $��
10,0,-10,0q�60   &   LiveCharts.Wpf.Charts.Base.Chart'   Series' 5�      #  LiveCharts.Wpf.StepLineSeries  (   PointGeometrySize$( 12Q�6;   )   PointForeground
) �����  LiveCharts.Wpf.Series*   Configuration* 6   �� *mapper++   Fill+ 6j   �� *Color1+,   Values, 6�   �� *ChartValues1+y�6�   �� *VisibilityCPU+  5�      $( 12Q�6;   
) �����* 6   �� *mapper++ 6j   �� *Color2+, 6�   �� *ChartValues2+y�6�   �� *VisibilityRAM+5�      5�      � 5�      $��4��6	   .+�5�      �� 
����� �
����� �$��CPUUsage��62   $
��Left=�6E   $��24��6`   $	��Top=�6m   $	��244��6�   $��	24,-4,0,0q�6�    6�   �� *	ShowCPU+6�   �� 5�      
���Gc��
���Gc��$��RAMUsage��66   $
��Left=�6I   $��24��6d   $	��Top=�6q   $	��275��6�   $��
273,-4,0,0q�6�    6�   �� *	ShowRAM+6�   5�      � 5�      $��3��6	   $��2��6   $��1��6'   .+�5�        $ Shield=�6   $��Center=�6+   $��Center=�6F   $	��200��6�   $	��150��6�   ��6c   �� *
AlertColor+6�   �� 5�      - �� TextAlignment$- Center=�6(   $	��263��6?   $��14(�6K   ���	#FF0398E2$��Bottom=�6p   $��Center=�6�   $��	10,0,27,9q�6�   ��6   �� *	AlertText+6�   5�      5�      5�      