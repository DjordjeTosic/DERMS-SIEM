   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:UI.ViewModelUI.ViewModel  5      F BDERMSCommon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulllEclr-namespace:DERMSCommon.UIModel.ThreeViewModel;assembly=DERMSCommon"DERMSCommon.UIModel.ThreeViewModel 5      #clr-namespace:UI.ModelUI.Model  5      %    UI.View.NetworkModelUserControl   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0	ViewModelclr-namespace:UI.ViewModel     5      ZTreeViewEclr-namespace:DERMSCommon.UIModel.ThreeViewModel;assembly=DERMSCommon     5      (Modelclr-namespace:UI.Model     5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      .��5      � .+�5   
   �� 
������ $	��250��6*   $
��Left=�66   ._�5      R� -   5          R�Name$  MainTreeView��5   C   $��1q�6   ���	#FF0398E2$��Stretch=�6Y   $��10q�6w   ��6�   �� *NetworkModel+��5      �� 5       �� DataType>  8DERMSCommon.UIModel.ThreeViewModel.NetworkModelTreeClass"  6[    �� ItemsSource 6/   �� *GeographicalRegions+.R�5      �� -   5        
������    HoverButtonEffect#���   5   �   ��6!   ��  �� ElementName$ MainTreeView�� �� Path$% DataContext.NetworkModelCommand���6�   �� *GID+.��5      �� ���	#FF0398E2��6;   �� *Name+5       �� ItemTemplate 5      �� 5      D  >DERMSCommon.UIModel.ThreeViewModel.GeographicalRegionTreeClass"  6f    67   �� *GeographicalSubRegions+.R�5   "   �� -   5        
������ #���   5   �   ��6)   �� $ MainTreeView��$+ %DataContext.GeographicalRegionCommand���6�   �� *GID+.��5   &   �� ���	#FF0398E2��6C   �� *Name+5   #    5   "   �� 5   &   G  ADERMSCommon.UIModel.ThreeViewModel.GeographicalSubRegionTreeClass"  6c    6?   �� *Substations+.R�5   *   �� -   5        
������ #���   5   �   ��61   �� $ MainTreeView��$. (DataContext.GeographicalSubRegionCommand���6�   �� *GID+.��5   .   �� ���	#FF0398E2��6K   �� *Name+5    +    5!   *   �� 5"   .   <  6DERMSCommon.UIModel.ThreeViewModel.SubstationTreeClass"  6r    6G   �� *SubstationElements+.R�5#   2   �� -   5        
������ #���   5#   �   ��69   �� $ MainTreeView��$# DataContext.SubstationCommand���6�   �� *GID+.��5$   6   �� ���	#FF0398E2��6S   �� *Name+5%   3    5&   2   �� 5'   6   C  =DERMSCommon.UIModel.ThreeViewModel.SubstationElementTreeClass"  6C   .R�5(   :   �� -   5        
������ #���   5(   �   ��6A   �� $ MainTreeView��$* $DataContext.SubstationElementCommand���6�   �� *GID+.��5)   >   �� ���	#FF0398E2��6[   �� *Name+5*   ;   5+   7   5-   /   5/   '   51      53      55      56      �� 57   
   ���	#FF0398E2$��1q�6)   $��255,50,10,10q�6=   ._�58      �� $
��Auto=�6   .��59      �� ��6   �� *NetworkModelItems+��5:      �� 5;      .R�5<      � 5=       � 	Resources 5?      $   UI.Model.NetworkModelViewClass �� RadiusY �� RadiusX	 J� Effect3  -System.Windows.Media.Effects.DropShadowEffect
   
BlurRadius   Color   RenderingBias   ShadowDepth'  !MaterialDesignThemes.Wpf.PackIcon   Kind��%�  (��       5@   '   *, +)�� 6   "  6'   .R�5A      � $
��Left=�6#   .+�5B   "   �� $	��200��6,   $	��315��69   $��20q�6E   ���	#FF2D2D30$ 10��6b   $ 10��6o   	 5C   &     5D   *   $
 6Q�6;   $ 	#FF0398E2��6J   $ Quality=�6\   $ 3Q�6t   5F   #   � 5G   "   $��25q�6'   $	��190��63   $	��295��6@   .+�5H   &   � $��35��6+   $��50��66   $
��Left=�6d   $	��Top=�6   $��10 -7q�6�   ��6B   �� *
BrushColor+	 5I   *     5J   .   $
 5Q�6?   $ 	#FFECECEC��6N   $ Quality=�6`   $ 1Q�6x   .+�5L   *     $��Center=�6X   $��Bottom=�6u   $��5q�6�   
�������$��20��6�   $��20��6�    6B   �� *Kind+6�   5M   '   �� 5N   &   $
��Auto=�63   $��Disabled=�6X   $
��Left=�6   $	��Top=�6�   $��	55 -5 0 0q�6�   .��5O   *   �� $��Champagne & Limousines)�6J   ���	#FF0398E2$��30(�6�   ��64   �� *Name+6�   5P   '   �� 5Q   &   $��5,55,0,0q�63   $
��Auto=�6E   .��5R   *   �� $	��285��6J   $
��Wrap=�6V   $��Champagne & Limousines)�6j   ���	#FF0398E2$��15(�6�   $	��Top=�6�   ��64   �� *Info+6�   5S   '   5T   #   5U      5V      5W      5X      5Y      5Z      �� 5[   
   $��	Filter by��6   $��16(�6$   $
��Bold"�62   $��Italic$�6D   
����� �$
��Left=�6p   $��
255,10,0,0q�6�   $	��Top=�6�   $��70��6�   $��35��6�   �� 5\   
   -   5        $
��Left=�5\      
����� �
����� �$��14(�6a   $��35��6�   $��
351,10,0,0q�6�   $	��Top=�6�   $	��141��6�   ��6o   �� *SearchCriteria+ �� SelectedItem 6�   �� *SelectedCriteria+6  �� 5]   
   $
��Left=�6   
����� �
����� �$��35��6a   $��14(�6m   $��
497,10,0,0q�6{    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��182��6�   ��6�   �� *SearchParameter+6�   �� 5^   
   $��Search��6    � Cursor$
 Hand��6I   $
��Left=�6W   $��
899,10,0,0q�6r   $	��Top=�6�   $	��115��6�   $��35��6�   ��6"   �� $ FilterCommand�6�   5_      5`      