   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:UI.ViewModelUI.ViewModel  5      F BDERMSCommon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulllEclr-namespace:DERMSCommon.UIModel.ThreeViewModel;assembly=DERMSCommon"DERMSCommon.UIModel.ThreeViewModel 5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5      %    UI.View.DERDashboardUserControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0	ViewModelclr-namespace:UI.ViewModel     5      ZTreeViewEclr-namespace:DERMSCommon.UIModel.ThreeViewModel;assembly=DERMSCommon     5      Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      .��5      � .+�5   
   �� $
��Bold"�6   $��Cambria)�6"   $��14(�67   
����� �$��260,200,662,309q�6h   .��6�   Current Time:6�   �� 5   
   $
��Bold"�61   $��Cambria)�6M   $��14(�6l   
����� �$��362,204,0,305q�6�   $
��Left=�6�   $	��146��6�   ��6   �� *CurrentTime+6�   �� 5   
   
������ $	��250��6*   $
��Left=�66   ._�5      R� -   5          R�Name$  MainTreeView��5   C   $��1q�6   ���	#FF0398E2$��Stretch=�6Z   $��10q�6x   ��6�   �� *NetworkModel+��5      �� 5       �� DataType>  8DERMSCommon.UIModel.ThreeViewModel.NetworkModelTreeClass"  6\    �� ItemsSource 6/   �� *GeographicalRegions+.R�5      �� -   5        
������    HoverButtonEffect#���   5   �   ��6!   ��  �� ElementName$ MainTreeView�� �� Path$% DataContext.NetworkModelCommand���6�   �� *GID+.��5      �� ���	#FF0398E2��6;   �� *Name+5       �� ItemTemplate 5      �� 5      D  >DERMSCommon.UIModel.ThreeViewModel.GeographicalRegionTreeClass"  6g    67   �� *GeographicalSubRegions+.R�5   "   �� -   5        
������ #���   5   �   ��6)   �� $ MainTreeView��$+ %DataContext.GeographicalRegionCommand���6�   �� *GID+.��5   &   �� ���	#FF0398E2��6C   �� *Name+5   #    5   "   �� 5   &   G  ADERMSCommon.UIModel.ThreeViewModel.GeographicalSubRegionTreeClass"  6c    6?   �� *Substations+.R�5   *   �� -   5        
������ #���   5   �   ��61   �� $ MainTreeView��$. (DataContext.GeographicalSubRegionCommand���6�   �� *GID+.��5   .   �� ���	#FF0398E2��6K   �� *Name+5    +    5!   *   �� 5"   .   <  6DERMSCommon.UIModel.ThreeViewModel.SubstationTreeClass"  6r    6G   �� *SubstationElements+.R�5#   2   �� -   5        
������ #���   5#   �   ��69   �� $ MainTreeView��$# DataContext.SubstationCommand���6�   �� *GID+.��5$   6   �� ���	#FF0398E2��6S   �� *Name+5%   3    5&   2   �� 5'   6   C  =DERMSCommon.UIModel.ThreeViewModel.SubstationElementTreeClass"  6C   .R�5(   :   �� -   5        
������ #���   5(   �   ��6A   �� $ MainTreeView��$* $DataContext.SubstationElementCommand���6�   �� *GID+.��5)   >   �� ���	#FF0398E2��6[   �� *Name+5*   ;   5+   7   5-   /   5/   '   51      53      55      56      � 59   
   $��250,0,2,274q�6   $��Center=�6$   $	��767��6A    � ColumnDefinitions 5:      �� 5;      $
��auto �6#   �� 5<      $
��auto �6#   �� 5=      $
��auto �6#   .+�5?      � $��0��6   $��30q�6#   $	��127��6/   $	��Top=�6<   .+�5@        LiveCharts.Wpf.Gauge  -   5        $��EnergySource��5A   (   $��0��5@      $��
10,10,0,25q�6,      From$ 0Q�5A      	   To$
 3000Q�6   
����� �$
��Left=�6�   $	��169��6�   	   Value	 6<   �� *Consumption+
 �� StringFormat$
 N2��   GaugeActiveFill 5B      �� 5C      .��5D      �  � Color$ DeepSkyBlue��6+    � Offset$	 0.0Q�6?   � 5E      $
 Blue��6+   $	 0.5Q�68   � 5F      $ 
DodgerBlue��6+   $	 1.0Q�6>   5G      5I      �� 5J      $��kW��6   $��Cambria)�6&   $��14(�6;   $
��Bold"�6I   
����� �$��83,107,74,0q�6t   �� 5K      $��
24,-5,42,0q�6   $��Current Consumption��60   $��Cambria)�6K   $��14(�6`   $
��Bold"�6n   
����� �$
��Wrap=�6�   5L      � 5M      $��1��6   $��30q�6#   $	��127��6/   $	��Top=�6<    5N      �� 5O      $
��155* �6'   �� 5P      $	��26* �6'   .+�5R      �� $��0,-3,0,0q�6   $
��Wrap=�6/   $ ��Production from generators��6C   $��Cambria)�6f   $��14(�6{   $
��Bold"�6�   
���Gc��$	��Top=�6�   $��80��6�   $��2��6�     5S      -   5        $��ProductionFromGenerators��5S   @   $��0��6   $��
10,10,0,25q�6,   $ 0Q�5T      $
 2500Q�6   
���Gc��$
��Left=�6x   $	��169��6�   $��2��6�   	 6'   �� *ProductionGenerators+$
 {0:N2}�� 5U      �� 5V      .��5W      � $ Tomato��6+   $	 0.0Q�6:   � 5X      $ Orange��6+   $	 0.5Q�6:   � 5Y      $ DarkRed��6+   $	 1.0Q�6;   5Z      5\      �� 5]      $��kW��6   $��Cambria)�6&   $��14(�6;   $
��Bold"�6I   
���Gc��$��83,107,48,0q�6o    J� RenderTransformOrigin$ 	1.053,0.4&�6�   5^      � 5_      $��2��6   $��30q�6#   $	��127��6/   $	��Top=�6<   .+�5`      �� $��
20,-6,10,0q�6   $
��Wrap=�61   $��Exchange with Sources��6E   $��Cambria)�6c   $��14(�6x   $
��Bold"�6�   
��� ���$	��Top=�6�   $	��108��6�     5a      -	   5        $��EnergyFromSources��5a   @   $��0��6   $��
10,10,0,25q�6,   $ -2500Q�5b      $
 2500Q�6!   
��� ���$
��Left=�6�   $	��169��6�   	 6+   �� *EnergySourceValue+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� 5c      �� 5d      .��5e      � $ Yellow��6+   $	 0.0Q�6:   � 5f      $ LightGoldenrodYellow��6+   $	 0.5Q�6H   � 5g      $ DarkGoldenrod��6+   $	 1.0Q�6A   5h      5j      �� 5k      $��kW��6   $��Cambria)�6&   $��14(�6;   $
��Bold"�6I   
��� ���$��83,107,74,0q�6o   $ 	1.053,0.4&�6�   5l      5n      � 5p   
   $��255,217,10,10q�6    � RowDefinitions 5q      �� 5r      $��50 �6    �� 5s      $��* �6    �� 5t      $��30 �6    .+�5v      � $��0��6   .+�5w      �� $��Center=�6   $��236,8,221,0q�6<   $ ��Consumption and production��6R   $��Cambria)�6x   $��20(�6�   $
��Bold"�6�   
����� �$��31��6�   $	��Top=�6�   �� 5x      -
   5        $��ManualCommanding��5x   5   $��Manual Commanding��6   $��	36,10,0,8q�6M   $
��Auto��6w   $
��Left=�6�   $	��195��6�   �� 5y      $��Automatic Optimization��6   $��	0,10,21,8q�6c   $
��Auto��6w   $��Right=�6�   $	��195��6�   ��6:   �� *OptimizationCommand+6�   5z      � 5|      $��1��6   .+�5}      �� $��Italic$�6   $��Cambria)�6+   $��14(�6@   
����� �$��0,-20,727,206q�6q   .��6�   kW6�   �� 5~      $��Italic$�6   $��Cambria)�6+   $��14(�6@   
����� �$��
0,0,-14,10q�6q   $��Right=�6�   $��25��6�   $��38��6�   $��Bottom=�6�   .��6�   H6�   #  LiveCharts.Wpf.CartesianChart  5      -   5          Name$ cartesianChart��5   %   $��0,0,5,24q�6=   &   LiveCharts.Wpf.Charts.Base.Chart   Series 5�      #	  LiveCharts.Wpf.StepLineSeries	   	  PointGeometrySize$ 12Q�6N    	  PointForeground
 �����
  LiveCharts.Wpf.Series 
  Configuration 6-   �� *mapper+ 
  Fill 6}   �� *Color1+ 
  Values 6�   �� *ChartValues2+y�6�   �� *VisibilityConsumption+	  5�      $ 12Q�6N   
 ����� 6-   �� *mapper+ 6}   �� *Color2+ 6�   �� *ChartValues3+y�6�   �� *VisibilityDERProduction+	  5�      $ 12Q�6N   
 �����
 ��� � 6-   �� *mapper+ 6�   �� *ChartValues1+y�6�   �� *VisibilityGridDemands+5�      5�      � 5�      $��2��6   .+�5�      �� 
����� �$��Consumption��64   $��14(�6J   
����� �$
��Left=�6�   $��67,0,0,0q�6�   $	��Top=�6�    d� 	IsChecked 6q   �� *ShowConsumption+6�   �� 5�      
���Gc��$��DER Production��6/   $��14(�6H   
���Gc��$
��Left=�6�   $��20��6�   $��	227,0,0,0q�6�   $	��Top=�6�    6j   �� *ShowDerProduction+6�   �� 5�      
��� ���$��Exchange with source��6/   $��14(�6N   
��� ���$
��Left=�6�   $��20��6�   $��	397,0,0,0q�6�   $	��Top=�6�    6p   �� *ShowGridDemands+6�   '  !MaterialDesignThemes.Wpf.PackIcon  5�         Kind$ Circle=�6*   $��576,1,163,9q�68   
��� � �6M   �� 5�      $��Current time��6   
��� � �$��15(�6B   $��601,-2,35,2q�6P   5�      5�      5�      5�      