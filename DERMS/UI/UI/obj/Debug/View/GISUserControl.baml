   M S B A M L   `   `   `  ����d  `Microsoft.Maps.MapControl.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35tRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPFMicrosoft.Maps.MapControl.WPF  5       UI   UI.View.GISUserControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      `mRclr-namespace:Microsoft.Maps.MapControl.WPF;assembly=Microsoft.Maps.MapControl.WPF     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      .��5
      � .+�5   
   �� $��	5,2,5,131q�6   $��1q�6$   ���	#FF0398E2._�5      '   !Microsoft.Maps.MapControl.WPF.Map  -   5           Name$	  Map��5      +   %Microsoft.Maps.MapControl.WPF.MapCore   CredentialsProviderT   NMicrosoft.Maps.MapControl.WPF.Design.ApplicationIdCredentialsProviderConverter$r lghV2tH3euIcFS6PJc15d~LzFfZi11UyYhzBE6DbxtgQ~AstUsgFCapPH3oNisYL2azqlLp0ImbaticuKzrTKjts-U-4q7Ii4OuGWx23lEBqI 6!      Culture$ en-au��5      *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5      +  %Microsoft.Xaml.Behaviors.EventTrigger  5         	EventName$  PreviewMouseLeftButtonDown��6%   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5      4  .Microsoft.Xaml.Behaviors.Core.CallMethodAction     
MethodName$ OnMouseClick��6-      TargetObject 6G   �� 5        5      $ MouseDoubleClick��6%   . 5        $  GetCoordinatesOnMouseClick��6-    6U   �� 5      5      5      9� 5   
   $	��Top=�6    9� ExpandDirection$
 Down=�6+   $��0,3,7,0q�6B   $��Legend��6S   $��14(�6c   $
��Bold"�6q   ���	#FF007ACC$��Italic$�6�   ���	#FF303030$��Right=�6�   $	��280��6�   .��5      �� $	��320��6   
�������._�5      � .+�5      �� -   5        	 ��Name$	 EnergySource��5      $��10,6,250,289q�65   $��20��6K   $��20��6W   
 d� 	IsChecked
 6b   �� *$"VisibilityOfElements[EnergySource]+ 5        5      $ PreviewMouseLeftButtonUp��6-   . 5   "     $! ExecuteVisibilityOfElements��65    6^   �� 5       5"      �� 5#      $*��$../Resources/Images/EnergySource.png��6   $��30,6,210,289q�6J   �� 5$      $��Energy Source��6   $
��Left=�64   $��63,6,0,0q�6O   $	��Top=�6a   $��Champagne & Limousines)�6y   ���	#FF007ACC$
��Bold"�6�   $��Italic$�6�   $��14(�6�   �� 5%      -   5        $	 
SolarPanel��5%      $��10,36,250,259q�63   $��20��6J   $��20��6V   
 6a   �� *" VisibilityOfElements[SolarPanel]+ 5&        5'      $ PreviewMouseLeftButtonUp��6-   . 5(   "     $! ExecuteVisibilityOfElements��65    6^   �� 5)      5+      �� 5,      $(��"../Resources/Images/SolarPanel.png��6   $��30,36,210,259q�6H   �� 5-      $��Solar Panel��6   $
��Left=�62   $��	63,36,0,0q�6M   $	��Top=�6`   $��Champagne & Limousines)�6x   ���	#FF007ACC$
��Bold"�6�   $��Italic$�6�   $��14(�6�   �� 5.      -   5        $	 WindTurbine��5.      $��10,66,250,229q�64   $��20��6L   $��20��6X   
 6c   �� *#!VisibilityOfElements[WindTurbine]+ 5/        50      $ PreviewMouseLeftButtonUp��6-   . 51   "     $! ExecuteVisibilityOfElements��65    6^   �� 52      54      �� 55      $)��#../Resources/Images/WindTurbine.png��6   $��30,66,210,229q�6I    J� RenderTransformOrigin$ 	0.52,0.89&�6`   �� 56      $��Wind Turbine��6   $
��Left=�63   $��	63,66,0,0q�6N   $	��Top=�6a   $��Champagne & Limousines)�6y   ���	#FF007ACC$
��Bold"�6�   $��Italic$�6�   $��14(�6�   �� 57      -   5        $	 EnergyConsumer��57      $��10,96,250,199q�67   $��20��6O   $��20��6[   
 6f   �� *&$VisibilityOfElements[EnergyConsumer]+ 58        59      $ PreviewMouseLeftButtonUp��6-   . 5:   "     $! ExecuteVisibilityOfElements��65    6^   �� 5;      5=      �� 5>      $,��&../Resources/Images/EnergyConsumer.png��6   $��30,96,210,199q�6L   �� 5?      $��Energy Consumer��6   $
��Left=�66   $��	63,96,0,0q�6Q   $	��Top=�6d   $��Champagne & Limousines)�6|   ���	#FF007ACC$
��Bold"�6�   $��Italic$�6�   $��14(�6�   �� 5@      -   5        $	 DERBlue��5@      $��10,126,250,169q�60   $��20��6I   $��20��6U   
 6`   �� *VisibilityOfElements[DERBlue]+ 5A        5B      $ PreviewMouseLeftButtonUp��6-   . 5C   "     $! ExecuteVisibilityOfElements��65    6^   �� 5D      5F      �� 5G      $%��../Resources/Images/Breaker.png��6   $��30,126,210,169q�6E   �� 5H      $��DER powered breaker��6   $
��Left=�6:   $��
63,126,0,0q�6U   $	��Top=�6i   $��Champagne & Limousines)�6�   ���	#FF007ACC$
��Bold"�6�   $��Italic$�6�   $��14(�6�   �� 5I      -   5        $	 DERGreen��5I       $��10,156,250,139q�62   $��20��6J   $��20��6V   
 6a   �� * VisibilityOfElements[DERGreen]+ 5J        5K      $ PreviewMouseLeftButtonUp��6-   . 5L   "     $! ExecuteVisibilityOfElements��65    6^   �� 5M      5O      �� 5P      $&�� ../Resources/Images/Breaker2.png��6   $��30,156,210,139q�6F   �� 5Q      $#��Energy Source powered breaker��6   $
��Left=�6D   $��
63,156,0,0q�6_   $	��Top=�6s   $��Champagne & Limousines)�6�   ���	#FF007ACC$
��Bold"�6�   $��Italic$�6�   $��14(�6�   �� 5R      -   5        $	 DERRed��5R      $��10,186,250,109q�6/   $��20��6H   $��20��6T   
 6_   �� *VisibilityOfElements[DERRed]+ 5S        5T      $ PreviewMouseLeftButtonUp��6-   . 5U   "     $! ExecuteVisibilityOfElements��65    6^   �� 5V      5X      �� 5Y      $&�� ../Resources/Images/Breaker3.png��6   $��30,186,210,109q�6F   �� 5Z      $��Not powered breaker��6   $
��Left=�6:   $��
63,186,0,0q�6U   $	��Top=�6i   $��Champagne & Limousines)�6�   ���	#FF007ACC$
��Bold"�6�   $��Italic$�6�   $��14(�6�   �� 5[      -	   5        $	 LineBlue��5[      $��10,216,250,79q�61   $��20��6I   $��20��6U   
 6`   �� * VisibilityOfElements[LineBlue]+ 5\        5]      $ PreviewMouseLeftButtonUp��6-   . 5^   "     $! ExecuteVisibilityOfElements��65    6^   �� 5_      5a      �� 5b      $$��../Resources/Images/ACLine.png��6   $��30,216,210,79q�6D   �� 5c      $!��DER powered AC Line Segment��6   $
��Left=�6B   $��
63,216,0,0q�6]   $	��Top=�6q   $��Champagne & Limousines)�6�   ���	#FF007ACC$
��Bold"�6�   $��Italic$�6�   $��14(�6�   �� 5d      -
   5        $	 	LineGreen��5d      $��10,246,250,49q�62   $��20��6J   $��20��6V   
 6a   �� *!VisibilityOfElements[LineGreen]+ 5e        5f      $ PreviewMouseLeftButtonUp��6-   . 5g   "     $! ExecuteVisibilityOfElements��65    6^   �� 5h      5j      �� 5k      $%��../Resources/Images/ACLine2.png��6   $��30,246,210,49q�6E   �� 5l      $
��Left=�6   $��
63,246,0,0q�67   $	��Top=�6K   $��Champagne & Limousines)�6c   ���	#FF007ACC$
��Bold"�6�   $��Italic$�6�   $��14(�6�   .��5m      �� Energy Source powered�� 6<   AC Line Segment6Y   5n      �� 5o      -   5        $	 LineRed��5o      $��10,290,250,0q�60   $��20��6G   $��20��6S   
 6^   �� *VisibilityOfElements[LineRed]+ 5p        5q      $ PreviewMouseLeftButtonUp��6-   . 5r   "     $! ExecuteVisibilityOfElements��65    6^   �� 5s      5u      �� 5v      $%��../Resources/Images/ACLine3.png��6   $��30,293,210,2q�6E   �� 5w      $!��Not powered AC Line Segment��6   $
��Left=�6B   $��
63,293,0,0q�6]   $	��Top=�6q   $��Champagne & Limousines)�6�   ���	#FF007ACC$
��Bold"�6�   $��Italic$�6�   $��14(�6�   5x      5y      5z      �� 5{   
   $��	10,10,0,0q�6   $	��200��6%   $��30��61   $	��Top=�6=   ���	#FF0398E2
�������$
��Left=�6�   ��6U   �� *SearchParameter+.��6�    5|        5}      $ GotFocus��6!   . 5~        $ OnFocusSearchParameter��6)    6M   �� 5        5�      $ 	LostFocus��6!   . 5�        $ OnOffFocusSearchParameter��6)    6P   �� 5�      .��5�   &   5�      �� 5�   
   $��
215,10,0,0q�6   $
��Left=�6%   $	��100��6@   $	��Top=�6L   ��6d   ��  �� Path$ SearchCommand�.��6�   Search6�   �� 5�   
   $��5,0,5,10q�6   $��1q�6#   ���	#FF007ACC$	��116��6O   $��Bottom=�6\   ._�5�      �� -   5         ��Name$ GISTextBlock��5�       �� 
IsReadOnly .  �� TextWrapping$
 Wrap=�6>   $�� ��6R   $��Disabled=�6Z   $
��Auto=�6�   $��14(�6�   5�      5�      5�      