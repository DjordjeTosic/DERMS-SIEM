   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:UI.ViewUI.View  5   	   U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5      $    UI.View.ManualCommandingWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:UI.View     5   	   Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5        � Title$  Manual Commanding��5	   	   $	��460��6#   $	��400��60   .��5
      � $��1��6   ���	#FF303030.+�5   
   �� $��Flexibility��6   $��Cambria)�6'   $��20(�6<   $
��Bold"�6J   
���"�"�$��149,192,117,204q�6u   �� 5   
   -   5        $��ValueKW��5       �� TextAlignment$ Center=�6!   $��18(�68   $��30��6F   $��160,230,160,0q�6R   $��0��6i    �� TextWrapping$
 Wrap=�6r   
���"�"�$	��Top=�6�   �� 5   
   $��%��6    �� FontSize$ 18(�6   $��Bottom=�6,    �� 
Foreground
 �"�"�$��232,0,122,169q�6`   	� 5   
   -   5        $��Increase��5   )   $��Increase��6    d� 	IsChecked$
 TrueY�69   $
��Left=�6J   $��20��6e   $��159,288,0,0q�6q   
���"�"�$	��Top=�6�   $	��120��6�   	� 5   
   -   5        $��Decrease��5   )   $��Decrease��6   $
��Left=�69   $��20��6T   $��159,324,0,0q�6`   
���"�"�$	��Top=�6�   $	��120��6�   �� 5   
   -   5        $��Manual Commanding��5      $
��Left=�6-   $��120,375,0,0q�6H   $	��Top=�6]   $	��150��6u   ��6�   �� *	Command+6�   � 5   
   $��0��6   $��
10,15,10,0q�6   $	��172��63   $	��Top=�6@   .+�5        LiveCharts.Wpf.PieChart  -   5        $��IncreaseGauge��5   n   $��0��6   &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$
 Left=�6+   $��
10,0,184,0q�6A   
���"�"�   Series 5        LiveCharts.Wpf.PieSeries    LiveCharts.Wpf.Series   Title$" Maximum Increase Flexibility��6$   	   Values;  5LiveCharts.Wpf.Converters.NumericChartValuesConverter$	 14 6I   
   
DataLabels
 . 6U     5      $" Maximum Decrease Flexibility��6$   $	 4 6I   
 . 6T   5      5      5      5      