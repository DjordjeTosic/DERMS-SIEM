   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:UI.ViewUI.View  5      +clr-namespace:UI.ViewModelUI.ViewModel  5      %    UI.View.EventSummaryUserControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:UI.View     5      0	ViewModelclr-namespace:UI.ViewModel     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      .��5      �   � DataContext  5   
   3   -UI.ViewModel.EventSummaryUserControlViewModel  5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   � $��0��6   ��6   �� *MinHeightFilter+.+�5      �� $��10,7,0,0q�6   $
��Left=�6'    � ToolTip$ Filters��6B   $	��Top=�6T    � Cursor$
 Hand��6l   
������ 
������ $��50��6�   $��25��6�   ��6�   ��  �� Path$ FilterOnOffCommand�.��5      � .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 
FilterMenu=�6.   ���	#FF0398E2$��Center=�6W   $��Center=�6r   5      5      �� 5      
������ $��Italic$�6/   ���	#FF0398E2���	#FF0398E2$	��150��6q   $��25��6}   $	��Top=�6�   $
��Left=�6�   $��65,5,0,0q�6�   $ Message��6�   $��0 0 0 1q�6  ��6�   �� *EventsSummaryFilter.Message+y�6'  �� $ FilterVisibility�.��6T  *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5      +  %Microsoft.Xaml.Behaviors.EventTrigger  5         	EventName$ GotFocus��6%   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5      4  .Microsoft.Xaml.Behaviors.Core.CallMethodAction  	   
MethodName$	 OnFocusMessage��6-   
   TargetObject
 6I   �� 5        5       $ 	LostFocus��6%   . 5!        $	 OnOffFocusMessage��6-   
 6L   �� 5"      .��5#   *   5$      (  "System.Windows.Controls.DatePicker  5%      $��25��6K   $
 From��6W   $��
235,5,0,68q�6f   ���	#FF0398E2$��0q�6�   ���	#FF0398E2$
��Left=�6�   $	��150��6     SelectedDate 6   �� *EventsSummaryFilter.From+y�6�   �� $ FilterVisibility�6    5&      $��25��6I   $ To��6U   $��235,43,0,30q�6b   ���	#FF0398E2$��0q�6�   ���	#FF0398E2$
��Left=�6�   $	��150��6   J� RenderTransformOrigin$ -0.251,0.176&�6   6   �� *EventsSummaryFilter.To+y�6�   �� $ FilterVisibility�6  �� 5'      $ 	Component��6   ���	#FF0398E2$��Center=�6B   $
��Left=�6   $��	65,40,0,0q�6  $	��Top=�6.  $	��150��6F  $��1q�6R  ���	#FF0398E2��6f   �� *FilterComponent+ �� SelectedItem 6�   �� *-+EventsSummaryFilter.SelectedFilterComponent+y�6�   �� $ FilterVisibility�6f  �� 5(      $��410,39,0,39q�6   $��Filter��6*   
������ ���	#FF0398E2   HoverButtonEffect#���   6k   $
��Left=�6�   $��84��6  $��20��6  ��6�   �� $ ApplyFiltersCommand�y�6�   �� $ FilterVisibility�6  �� 5)      $��Filter by time��6   $
��Left=�60   $��
233,73,0,7q�6�   ���	#FF0398E2$��1q�6�   ���	#FF0398E2���	#FF0398E2 d� 	IsChecked 6K   �� *" EventsSummaryFilter.FilterByTime+y�6�   �� $ FilterVisibility�5*      � 5+   
   $��1��6   .+�5,      &   System.Windows.Controls.DataGrid  $��1q�6   ���	#FF0398E2   SelectionMode$ Single=�6o      AutoGenerateColumns .     CanUserAddRows .     CanUserDeleteRows .     CanUserResizeRows .     SelectionUnit$ FullRow=�5-   ;   
������ ���	#FF0398E2$
��Bold"�6�   $��14(�6�   ��5,   C   �� *Events+   RowStyle 5.      �� 5/       �� 
TargetType)	  #System.Windows.Controls.DataGridRow" 	 6   .�50      ��  �� Property � �� �� Value$ 0q�6<   �� 51       � ��
 ���� 67   �� 52       �@J�IsHitTestVisible . 6=    �� Triggers 53      P� 54       P� Property �@J�IsMouseOver P� Value . . �56   "   ��  � �� �#4743436?   57      P� 58       �@	 
IsSelected . . �59   "   ��  � �� �	#FFDEDEDE6?   5:      5<         Columns 5?      0
  *System.Windows.Controls.DataGridTextColumn
  5@      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6W   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   �� *	Message+    Header  5A      � 5B      .+�5C   "   �� ���	#FF0398E2$
��Bold"�6?   $��16(�6Q   .��6_   	Message6h   5D      5F      
  5G       . $
 Auto 6Z    6*   �� *	Component+  5H      �� 5I      ���	#FF0398E2$
��Bold"�6<   $��16(�6N   .��6\   	Component6g   5K      
  5L       . $
 Auto 6X    6)   �� *
DateTime+  5M      �� 5N      ���	#FF0398E2$
��Bold"�6<   $��16(�6N   .��6\   	Timestamp6g   5P      5R      5S      5T      5U      