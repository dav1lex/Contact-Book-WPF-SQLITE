   M S B A M L   `   `   `  ����F  BKontaktbook, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:KontaktbookKontaktbook  5   	       Kontaktbook.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Kontaktbook     5   	   $	��450��5	   
   $	��800��6     � 
ResizeMode$  NoResize=�6#    � Title$ Contact Book��69   ��5
      �� 5   
    �� EndPoint$ 0.5,1&�6    � MappingMode$ RelativeToBoundingBox=�6/    �� 
StartPoint$ 0.5,0&�6S   .��5      �  � Color$ 	#FFB2B2B2��6    � Offset$ 1Q�6-   � 5      $ White��6   5      .��5      � $	��432��6    � ColumnDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $��20 �6    � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5       $
��auto �6   �� 5!      $
��auto �6   �� 5"      $
��auto �6   �� 5#      $��* �6   �� 5$      $��20 �6   .+�5'   
   �� $��Contact Book��6   $��2��6(   $��1��6<   $��1��6I   $��
-5,-30,0,0q�6Y   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6m   $��48(�6�   	 J� Effect	 5(      3  -System.Windows.Media.Effects.DropShadowEffect  5)      
   	Direction$	
 352Q�6#      
BlurRadius$ 8Q�63      Opacity$	 0.3Q�6B   5+      �� 5,   
   $
��Name��6   $��0,0,0,15q�6    $��2��62   $��1��6?   $��20(�6O   $��Center=�6^   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6{   $��Center=�6�   $
��Bold"�6�   �� 5-   
   $��0,0,0,15q�6   $��3��6'   $��1��64   $��20(�6D   $��Center=�6R   $��Center=�6o   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�   $
��Bold"�6�   $��Surname��6�   �� 5.   
   $��Phone number��6   $��0,0,0,15q�6(   $��4��6:   $��1��6G   $��20(�6W   $��Center=�6e   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�   $��Center=�6�   $
��Bold"�6�   6�   �� 5/   
   $��E-mail��6   $��5��6"   $��0,0,0,15q�6/   $��1��6B   $��20(�6R   $��Center=�6`   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6}   $��Center=�6�   $
��Bold"�6�   6�   �� 50   
   $��Date of birth��6   $��0,7,0,13q�6)   $��6��6;   $��1��6H   $��20(�6X   $��Center=�6f   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�   $��Center=�6�   $
��Bold"�6�   6�   �� 52   
   -   5         ��Name$ 	btnsubmit��52      $��1��6%   $��Add Contact��65   $��7��6K   $��Center=�6X   $
��0,17q�6u   $��59��6�   $	��155��6�   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�53         btn-success#��[  6I   $��Center=�6n   $��25(�6�   $��2��6�   	 54        55      $ 7Q�6#   $	
 318Q�62   $	 0.3Q�6B      ShadowDepth$ 4Q�6P   57      �� 58   
   -   5        $ btnclear��58      $��4��6$   $��Clear��64   $��7��6D   $��55��6Q   $	��105��6]   $��0q�6i   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6t     	btn-clear#��[ 6�   $
��Left=�6�   $��Center=�6  $��25(�6  	 59        5:      $ 7Q�6#   $	
 318Q�62   $	 0.3Q�6B   $ 4Q�6P   5<      �� 5=   
   -   5        $ 	btndelete��5=      $��4��6%   $��Delete��65   $��7��6F   $��Right=�6S   $��Center=�6o   $	��105��6�   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�     
btn-danger#��[ 5>      $��55��65   $��0q�6A   $��25(�6d   	 5?        5@      $ 7Q�6#   $	
 318Q�62   $	 0.3Q�6B   $ 4Q�6P   5B      �� 5C   
   -   5        $ 
btnrefresh��5C      $��4��6&   $��Refresh��66   $��7��6H   $��Right=�6U   $��Center=�6q   $	��105��6�   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�     btn-warning#��[ 5D      $��55��66   $��	0,0,125,0q�6B   $��25(�6n   	 5E        5F      $ 7Q�6#   $	
 318Q�62   $	 0.3Q�6B   $ 4Q�6P   5H      �� 5I   
   -   5        $ 	btnupdate��5I      $��4��6%   $��Update��65   $��7��6F   $
��Left=�6S   $��Center=�6n   $	��105��6�   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�     btn-primary#��[ 5J      $��55��66   $��	125,0,0,0q�6B   $��25(�6m   	 5K        5L      $ 7Q�6#   $	
 318Q�62   $	 0.3Q�6B   $ 4Q�6P   5N      �� 5Q   
   -   5         ��Name$ txtName��5Q      $��2��6#   $��2��63   
���   �$��20��6T   $	��115��6`   $��Center=�6l   $��Center=�6�   $��0,0,0,15q�6�   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�   $��15(�6�    �� SelectionBrush �	#FFA4A4A46�   �� 5R   
   -   5        $ 
txtSurname��5R      $��2��6&   $��3��66   
���   �$	��115��6W   $��20��6c   $��Center=�6o   $��Center=�6�   $��0,0,0,15q�6�   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�   $��15(�6�    �	#FFA4A4A46�   �� 5S   
   -   5        $ txtPhone��5S      $��2��6$   $��4��64   
���   �$	��115��6U   $��20��6a   $��Center=�6m   $��Center=�6�   $��0,0,0,15q�6�   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�   $��15(�6�    �	#FFA4A4A46�   �� 5T   
   -	   5        $ txtemail��5T      $��2��6$   $��5��64   
���   �$	��115��6U   $��20��6a   $��Center=�6m   $��Center=�6�   $��0,0,0,15q�6�   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�   $��15(�6�    �	#FFA4A4A46�   (  "System.Windows.Controls.DatePicker  5U   
   -
   5          Name$ btndatepicker��5U      $��2��6,   $��6��6<   $��Center=�6I   $��Center=�6d   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�   $��0,0,0,-1q�6�   $	��117��6�   $��31��6�   $��15(�6�   ���	#99FDFDFD6�   �� 5X   
   $��Selected User's ID: ��6   $��4��60   $��60,0,0,0q�6@   $��1��6R   $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6_   �� 5Y   
   -   5         ��Name$ labelid��5Y      $��4��6"   $��	160,0,0,0q�62   $��1��6E   $
��Bold"�6R   $��Consolas)�6d   $��Italic$�6z   $��46��6�   &   System.Windows.Controls.DataGrid  5[   
   -   5          Name$ dataGrid��5[      $��2��6%   $��5��62   $��4��6C      
IsReadOnly . $0��*/Kontaktbook;component/Font/#HelveticaNeue)�6�   $��16(�6�   �� 5\   
   $��1��6   ���	#FFF4F4F5$
��Left=�65   $��2��6P   $��0,0,0,23q�6[   $��1��6m   ���	#F2727272$��Bottom=�6�   $	��750��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��8��6�   z�5]      V� 5^      .~�5_      ��  �� ScaleY$ -1Q�6%   �� 5`      �� 5a      T� 5b      5c      5e      5f      5g      