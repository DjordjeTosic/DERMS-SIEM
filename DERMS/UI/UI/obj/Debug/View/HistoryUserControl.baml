   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:UI.ViewModelUI.ViewModel  5      F BDERMSCommon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulllEclr-namespace:DERMSCommon.UIModel.ThreeViewModel;assembly=DERMSCommon"DERMSCommon.UIModel.ThreeViewModel 5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5           UI.View.HistoryUserControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0	viewModelclr-namespace:UI.ViewModel     5      ZTreeViewEclr-namespace:DERMSCommon.UIModel.ThreeViewModel;assembly=DERMSCommon     5      Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5	      N
wpftoolkit9http://schemas.microsoft.com/netfx/2009/xaml/presentation    5
      .��5      � .+�5   
   �� 
������ $	��250��6*   $
��Left=�66   ._�5      R� -   5          R�Name$  MainTreeView��5   C   $��1q�6   ���	#FF0398E2$��Stretch=�6Y   $��10q�6w   ��6�   �� *NetworkModel+��5      �� 5       �� DataType>  8DERMSCommon.UIModel.ThreeViewModel.NetworkModelTreeClass"  6[    �� ItemsSource 6/   �� *GeographicalRegions+.R�5      �� -   5        
������    HoverButtonEffect#���   5   �   ��6!   ��  �� ElementName$ MainTreeView�� �� Path$% DataContext.NetworkModelCommand���6�   �� *GID+.��5      �� ���	#FF0398E2��6;   �� *Name+5       �� ItemTemplate 5      �� 5      D  >DERMSCommon.UIModel.ThreeViewModel.GeographicalRegionTreeClass"  6f    67   �� *GeographicalSubRegions+.R�5   "   �� -   5        
������ #���   5   �   ��6)   �� $ MainTreeView��$+ %DataContext.GeographicalRegionCommand���6�   �� *GID+.��5   &   �� ���	#FF0398E2��6C   �� *Name+5   #    5   "   �� 5   &   G  ADERMSCommon.UIModel.ThreeViewModel.GeographicalSubRegionTreeClass"  6c    6?   �� *Substations+.R�5   *   �� -   5        
������ #���   5   �   ��61   �� $ MainTreeView��$. (DataContext.GeographicalSubRegionCommand���6�   �� *GID+.��5   .   �� ���	#FF0398E2��6K   �� *Name+5   +    5   *   �� 5    .   <  6DERMSCommon.UIModel.ThreeViewModel.SubstationTreeClass"  6r    6G   �� *SubstationElements+.R�5!   2   �� -   5        
������ #���   5!   �   ��69   �� $ MainTreeView��$# DataContext.SubstationCommand���6�   �� *GID+.��5"   6   �� ���	#FF0398E2��6S   �� *Name+5#   3    5$   2   �� 5%   6   C  =DERMSCommon.UIModel.ThreeViewModel.SubstationElementTreeClass"  6C   .R�5&   :   �� -   5        
������ #���   5&   �   ��6A   �� $ MainTreeView��$* $DataContext.SubstationElementCommand���6�   �� *GID+.��5'   >   �� ���	#FF0398E2��6[   �� *Name+5(   ;   5)   7   5+   /   5-   '   5/      51      53      54      � 56   
   $��255,10,10,10q�6    � RowDefinitions 57      �� 58      $	��250 �6    �� 59      $��* �6    .+�5;      � $��0��6   .+�5<      �� $��	11,29,0,0q�6    � ToolTip$ Period��6.   ���	#FF0398E2$��Center=�6V   $
��Left=�6�   $	��Top=�6�   $	��100��6�   $��1q�6   ���	#FF0398E2��6z   �� *Period+ �� SelectedItem 6�   �� *SelectedPeriod+*  $Microsoft.Xaml.Behaviors.Interaction	   Triggers	 5=      +  %Microsoft.Xaml.Behaviors.EventTrigger  5>      
   	EventName$
 SelectionChanged��6)   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5?      4	  .Microsoft.Xaml.Behaviors.Core.CallMethodAction	   	  
MethodName$ HistorySelect��61    	  TargetObject 6L   �� 5@      5B      �� 5C      $��	11,69,0,0q�6   $ Month��6.   ���	#FF0398E2$��Center=�6U   $
��Left=�6�   $	��Top=�6�   $	��100��6�   $��1q�6�   ���	#FF0398E2��6y   �� *Mesec+ 6�   �� *SelectedMesec+y�6)  �� *	IsMesec+	 5D        5E      $
 SelectionChanged��6)   . 5F      	  $ HistorySelectMesec��61    6Q   �� 5G      5I      �� 5K      $��
11,109,0,0q�6   $ Month��6/   ���	#FF0398E2$��Center=�6V   $
��Left=�6�   $	��Top=�6�   $	��100��6�   $��1q�6   ���	#FF0398E2��6z   �� *Godina+ 6�   �� *SelectedGodina+y�6,  �� *
IsGodina+	 5L        5M      $
 SelectionChanged��6)   . 5N      	  $ HistorySelectGodina��61    6R   �� 5O      5Q      �� 5S      $��	11,69,0,0q�6   $	 Day��6-   ���	#FF0398E2$��Center=�6R   $
��Left=�6�   $	��Top=�6�   $	��100��6�   $��1q�6�   ���	#FF0398E2��6v   �� *Dan+ 6�   �� *SelectedDan+y�6"  �� *IsDan+.@�5T      �� (
  "System.Windows.Controls.DatePicker
  5U      	 5V        5W   "   $
 SelectedDateChanged��61   . 5X   &   	  $ HistorySelectDan��69    6W   �� 5Y      5[      5\      5^      �� 5_      -   5         ��Name$	 Min��5_      ���	#FF0398E2���	#FF0398E2$��192,10,521,182q�6V   .��5`      �� $��
-38 30 0 0q�6    	Minimum6=   	 5a        5b      $
 Checked��6)   . 5c      	  $ HistoryFilter��61    6L   �� 5d        5e      $
 	Unchecked��6)   . 5f      	  $ HistoryFilter��61    6L   �� 5g      5i      �� 5j      -   5        $	 Max��5j      ���	#FF0398E2���	#FF0398E2$��258,10,455,182q�6W   	 5k        5l      $
 Checked��6)   . 5m      	  $ HistoryFilter��61    6L   �� 5n        5o      $
 	Unchecked��6)   . 5p      	  $ HistoryFilter��61    6L   �� 5q      .��5s      �� $��
-38 30 0 0q�6    	Maximum6=   5t      �� 5u      -	   5        $	 Avg��5u      ���	#FF0398E2���	#FF0398E2$��323,10,390,182q�6W   	 5v        5w      $
 Checked��6)   . 5x      	  $ HistoryFilter��61    6L   �� 5y        5z      $
 	Unchecked��6)   . 5{      	  $ HistoryFilter��61    6L   �� 5|      .��5~      �� $��
-34 30 0 0q�6    	Average6=   5      �� 5�      $��
651,29,0,0q�6   $	��Top=�6.   $��98��6F   $��28��6Q   $��Filter��6]   
������ ���	#FF0398E2#���   6�   $
��Left=�6  ��6�   �� $ ApplyFiltersCommand�y�6�   �� *FilterVisibility+6  5�      � 5�      $��1��6   y�6    �� *IsDan+.+�5�      �� $��Italic$�6   $��Cambria)�6+   $��14(�6@   
����� �$��0,-20,727,206q�6q   .��6�   kW6�   �� 5�      $��Italic$�6   $��Cambria)�6+   $��14(�6@   
����� �$��
0,0,-14,10q�6q   $��Right=�6�   $��25��6�   $��38��6�   $��Bottom=�6�   y�6�   �� *IsDan+.��6�   H6�   #  LiveCharts.Wpf.CartesianChart  5�      $��0,0,0,24q�6%   &   LiveCharts.Wpf.Charts.Base.Chart   Series 5�      "  LiveCharts.Wpf.ScatterSeries    LiveCharts.Wpf.Series   Values 6,   �� *ChartValues+y�6K   �� *IsDan+5�      5�      � 5�      $��1��6   y�6    �� *	IsMesec+.+�5�      �� $��Italic$�6   $��Cambria)�6+   $��14(�6@   
����� �$��0,-20,727,206q�6q   .��6�   kW6�   �� 5�      $��Italic$�6   $��Cambria)�6+   $��14(�6@   
����� �$��
0,0,-14,10q�6q   $��Right=�6�   $��25��6�   $��38��6�   $��Bottom=�6�   y�6�   �� *	IsMesec+.��6�   D6�     5�      $��0,0,0,24q�6%    5�         6,   �� *ChartValuesMonth+y�6P   �� *	IsMesec+5�      5�      � 5�      $��1��6   y�6    �� *	IsGodinaa+.+�5�      �� $��Italic$�6   $��Cambria)�6+   $��14(�6@   
����� �$��0,-20,727,206q�6q   .��6�   kW6�   �� 5�      $��Italic$�6   $��Cambria)�6+   $��14(�6@   
����� �$��
0,0,-14,10q�6q   $��Right=�6�   $��25��6�   $��38��6�   $��Bottom=�6�   y�6�   �� *	IsGodinaa+.��6�   M6�     5�      $��0,0,0,24q�6%    5�         6,   �� *ChartValuesYear+y�6O   �� *	IsGodinaa+5�      5�      5�      5�      5�      