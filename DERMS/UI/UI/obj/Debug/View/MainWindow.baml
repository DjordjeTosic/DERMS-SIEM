   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:UI.ViewModelUI.ViewModel  5   	       UI.View.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5   	   *	ViewModelclr-namespace:UI.ViewModel  5   	   -   5          �Name$
  root��5	   	   $	��600��5   	   $	��600��6   $
��1024��6&   $
��1024��66    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�6.    � AllowsTransparency .  � 
ResizeMode$ CanResizeWithGrip=�5   	   $	��0.8q�6(   ���	#FF0398E2.��5      � ���	#FF303030 � DataContext 5   
       UI.ViewModel.MenuViewModel  5       � RowDefinitions 5   
   �� 5      $��35 �6   �� 5      $��30 �6   �� 5      $��* �6   .+�5   
   � -   5        $��0��5      ���	#FF303030.+�5      �� $��5,5,0,0q�6   $"��../Resources/Images/icon.png��6%   $
��Fill=�6K   $��30��6Z   $	��Top=�6f   $
��Left=�6~   $��30��6�   �� 5      $��Center=�6   {�.  ���	#FF0398E2$��Bottom=�6Z   $��15(�6u   $��Bookman Old Style)�6�   $
��Bold"�6�   .��6�   0.Distributed Energy Resources Management System6�   �� 5       �� Orientation$ 
Horizontal=�6   $��Right=�62   $	��5,0q�6N   .+�5      �� -   5         � Cursor$
 Hand��5      $��Bottom=�6'    0  ,MaterialDesignFloatingActionMiniAccentButton#��[  6B   $��28��6�   $��28��6�   
���������6�   Z� ��6�   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 WindowMinimize=�6.   $��0,7,0,0q�6D   
 � LayoutTransform
 5      �� 5       �� CenterX$ 0Q�6-    �� CenterY$ 0Q�69    �� ScaleX$	 1.2Q�6E    �� ScaleY$	 1.2Q�6R   5       5!      �� 5"      -   5        $
 Hand��5"      $��Bottom=�6'   #��[  6B   $��28��6�   $��28��6�   
���������6�   Z� ��6�   Z� .��5#        -   5          Name$ 
WindowSize��5#   .   $	 WindowMaximize=�6B   
 5$      �� 5%      $ 0Q�6-   $ 0Q�69   $	 1.2Q�6E   $	 1.2Q�6R   5'      5(      �� 5)      -   5        $
 Hand��5)      $��Bottom=�6'   #��[  6B   $��28��6�   $��28��6�   
���������6�   Z� ��6�   Z� .��5*        $	 WindowClose=�6.   
 5+      �� 5,      $ 0Q�6-   $ 0Q�69   $	 1.2Q�6E   $	 1.2Q�6R   5.      5/      50      51      � 52   
   -   5         �Name$
 Menu��52      $��1��6   ���	#FF303030.+�53      �� $��0,0,0,1q�6   ���	#FF0398E2._�54      �� $��0,0,0,1q�6   $
��Left=�6.   $ 
Horizontal=�6I   .+�55      �� -   5         ��Name$	 GIS��55   +   $
 Hand��6   $
��Auto��68   $
��Auto��6E   ���#484a48
������ ���	#FF0398E2��56      ��  �� Path$ MenuSelectCommand���6H   ��  �� ElementName$
 root��$# (FocusManager.FocusedElement)�.��57      � $��65��6   .+�58        $	 	MapLegend=�62   $��Center=�6C   �� 59      $��Center=�6$   $	��GIS��6A   $��Champagne & Limousines)�6L   5:      5;      �� 5<      -	   5        $ DERDashboard��5<   +   $
 Hand��6   $
��Auto��6A   $
��Auto��6N   
������ 
������ ���	#FF0398E2��5=      �� $ MenuSelectCommand���6H   �� $
 root��$# (FocusManager.FocusedElement)�.��5>      � $	��155��6   .+�5?        $	 ChartAreaspline=�66   $��Center=�6M   �� 5@      $��Center=�6(   $��DER Dashboard��6E   $��Champagne & Limousines)�6Z   5A      5B      �� 5C      -
   5        $ NetworkModel��5C   +   $
 Hand��6   $
��Auto��6A   $
��Auto��6N   
������ 
������ ���	#FF0398E2��5D      �� $ MenuSelectCommand���6H   �� $
 root��$# (FocusManager.FocusedElement)�.��5E      � $	��145��6   .+�5F        $	 GraphOutline=�66   $��Center=�6J   �� 5G      $��Center=�6(   $��Network Model��6E   $��Champagne & Limousines)�6Z   5H      5I      �� 5J      -   5        $ History��5J   +   $
 Hand��6   $
��Auto��6<   $
��Auto��6I   
������ 
������ ���	#FF0398E2��5K      �� $ MenuSelectCommand���6H   �� $
 root��$# (FocusManager.FocusedElement)�.��5L      � $	��145��6   .+�5M        $	 History=�66   $��Center=�6E   �� 5N      $��Center=�6(   $��History��6E   $��Champagne & Limousines)�6T   5O      5P      o� 5Q      $
 Hand��6    J� Opacity$	 0.9Q�6)   $��14(�67   $��Center=�6E   ���	#FF303030$��Champagne & Limousines)�6w   ���	#FF0398E2$��Center=�6�   $��28��6�   $
��Bold"�6�   .@�5R      m� ���	#FF303030$��28��6:   $
��Auto��6F   ��5S      � 5T   "   $
��Auto��6'   .+�5U   &     $	 ViewGrid=�6>   $��Center=�6N   �� 5V   &   $
��Auto��60   $��	Summaries��6=   $��Center=�6N   $��Center=�6i   $��20,0,0,0q�6�   5W   #   .@�5Y      �� -   5        $ SignalsSummary��5Y   3   $
 Hand��6%   $
��Auto��6K   $
��Auto��6X   
������ 
������ $��0q�6�   ���	#FF0398E2*  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5Z   "   +  %Microsoft.Xaml.Behaviors.EventTrigger  5[   &      	EventName$  PreviewMouseLeftButtonDown��65   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5\   *   4  .Microsoft.Xaml.Behaviors.Core.CallMethodAction     
MethodName$ OnMouseClick��6=      TargetObject 6W   �� 5]   '   .��5_   "   � $	��145��6'   .+�5`   &   �� $��Center=�60   $��Signals Summary��6M   $��Champagne & Limousines)�6d   5a   #   5b      �� 5c      -   5        $ EventSummary��5c   3   $
 Hand��6%   $
��Auto��6I   $
��Auto��6V   
������ 
������ ���	#FF0398E2 5d   "     5e   &   $  PreviewMouseLeftButtonDown��65   . 5f   *     $ OnMouseClick��6=    6W   �� 5g   '   .��5i   "   � $	��145��6'   .+�5j   &   �� $��Center=�60   $��Event Summary��6M   $��Champagne & Limousines)�6b   5k   #   5l      5m      5n      o� 5o      $
 Hand��6   $	 0.9Q�6   $��14(�6(   $��Center=�66   ���	#FF303030$��Champagne & Limousines)�6h   ���	#FF0398E2$��Center=�6�   $��28��6�   $
��Bold"�6�   .@�5p      m� ���	#FF303030$��28��6(   $
��Auto��64   ��5q   	   � 5r   
   $
��Auto��6   .+�5s        $	 Security=�6#   $��Center=�63   �� 5t      $
��Auto��6   $
��SIEM��6"   $��Center=�6.   $��Center=�6I   $��20,0,0,0q�6f   5u      .@�5w   	   �� -   5        $ ServicesOverview��5w      $
 Hand��6   $
��Auto��68   $
��Auto��6E   
������ 
������ $��0q�6�   ���	#FF0398E2 5x   
     5y      $  PreviewMouseLeftButtonDown��6   . 5z        $ OnMouseClick��6    69   �� 5{      .��5}   
   � $	��145��6   .+�5~      �� $��Center=�6   $��Services Overview��62   $��Champagne & Limousines)�6K   5      5�   
   �� 5�   	   -   5        $ CalculationEngine��5�      $
 Hand��6   $
��Auto��69   $
��Auto��6F   
������ 
������ ���	#FF0398E2 5�   
     5�      $  PreviewMouseLeftButtonDown��6   . 5�        $ OnMouseClick��6    69   �� 5�      .��5�   
   � $	��145��6   .+�5�      �� $��Center=�6   $��CalculationEngine��62   $��Champagne & Limousines)�6K   5�      5�   
   �� 5�   	   -   5        $ Scada��5�      $
 Hand��6   $
��Auto��6-   $
��Auto��6:   
������ 
������ ���	#FF0398E2 5�   
     5�      $  PreviewMouseLeftButtonDown��6   . 5�        $ OnMouseClick��6    69   �� 5�      .��5�   
   � $	��145��6   .+�5�      �� $��Center=�6   $��Scada��62   $��Champagne & Limousines)�6?   5�      5�   
   5�   	   5�      5�      5�      5�      � 5�   
   $��2��6   .+�5�      �� $��0q�6   $��1,1,1,1q�6)   ._�5�      �� ��6#   �� *UserControlPresenter+5�      5�      5�      5�      