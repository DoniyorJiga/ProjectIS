   M S B A M L   `   `   `  ����?  ;Game, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:GameGame  5   	       Game.BattleForm   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:Game     5   	   -   5          �Name$  BattleForm1��5   	    � Title$ 
BattleForm��5   	   $��478.625��6   $��846.15��6-    � WindowStartupLocation$ CenterScreen=�6X   .��5	      � .+�5
   
   �� -   5         ��Name$ Throw��5
      $��Кинуть кость��6    $
��Left=�67   $��	10,59,0,0q�6R   $	��Top=�6e   $	��111��6}   $��26��6�   �� 5   
   -   5         ��Name$ Status��5      $
��Left=�6$   $��
229,10,0,0q�6?   $
��Wrap=�6S   $	��Top=�6g   $��Статус игры��6   $	��291��6�    �� TextAlignment$ Center=�6�   �� 5   
   -   5        $
 Pass��5      $��Пас��6   $
��Left=�6-   $��	10,89,0,0q�6H   $	��Top=�6[   $	��112��6s   $��26��6   6�   �� 5   
   -   5         ��Name$ ListPlayers��5      $
��Left=�6'   $	��404��6B   $��
229,30,0,0q�6O    �� TextWrapping$
 Wrap=�6c   $	��Top=�6w   $	��287��6�   " �� VerticalScrollBarVisibility$
 Auto=�6�   ���	#FF6787E8	 �� 
CaretBrush	 �	#FFB49090
 J� OpacityMask

 �   ����	#FFECF8FF �� TextAlignment$ Center=�6  �� 5   
   -   5        $
 Next��5      $#��Следующий раунд��6   $
��Left=�69   $��
10,120,0,0q�6T   $	��Top=�6h   $	��112��6�   $��26��6�   6�   �� 5   
   -   5        $	 End��5      $��End Game��6   $
��Left=�61   $��
10,151,0,0q�6L   $	��Top=�6`   $	��111��6x   $��26��6�   6�   �� 5   
   -   5        $ PlayersStatus��5      $
��Left=�6)   $	��281��6D   $��
524,31,0,0q�6Q   $
 Wrap=�6e   $	��Top=�6y   $	��304��6�   $
 Auto=�6�   ���	#FF6787E8	 �	#FFB49090

 �   ����	#FFDFF9D3 �� 
IsReadOnly . &   System.Windows.Media.TextOptions   TextFormattingMode$ Display=�6,  $ Justify=�6U  �� 5   
   -	   5        $ Status_Copy��5      $
��Left=�6)   $��
525,10,0,0q�6D   $
��Wrap=�6X   $	��Top=�6l   $!��Статус игроков��6�   $	��303��6�   $ Center=�6�   �� 5   
   -
   5        $ DoBet��5      $!��Сделать ставку��6    $
��Left=�69   $��	10,30,0,0q�6T   $	��Top=�6g   $	��111��6   $��24��6�   6�   �� 5   
   -   5        $ Status_Copy1��5      $
��Left=�6*   $��	114,9,0,0q�6E   $
��Wrap=�6X   $	��Top=�6l   $��Ставка��6�   $	��110��6�   $ Center=�6�   �� 5   
   -   5        $
 Bets��5      $
��Left=�6    $��24��6;   $��
126,30,0,0q�6G   $
 Wrap=�6[   $	��Top=�6o   $��98��6�   5      5      