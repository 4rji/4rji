FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �  v # ! / b i n / b a s h 
 
 #   L i s t a   d e   p a q u e t e s   a   i n s t a l a r 
 p a q u e t e s = ( " n a n o "   " z s h " ) 
 
 #   F u n c i � n   p a r a   v e r i f i c a r   s i   u n   p a q u e t e   e s t �   i n s t a l a d o   ( D e b i a n / U b u n t u / K a l i ) 
 p a q u e t e _ i n s t a l a d o _ a p t ( )   { 
         d p k g   - l   " $ 1 "   |   g r e p   - q   ' ^ i i '     
 } 
 
 #   F u n c i � n   p a r a   v e r i f i c a r   s i   u n   p a q u e t e   e s t �   i n s t a l a d o   ( C e n t O S / R H E L ) 
 p a q u e t e _ i n s t a l a d o _ y u m ( )   { 
         y u m   l i s t   i n s t a l l e d   " $ 1 "   & >   / d e v / n u l l 
 } 
 
 #   F u n c i � n   p a r a   v e r i f i c a r   s i   u n   p a q u e t e   e s t �   i n s t a l a d o   ( F e d o r a ) 
 p a q u e t e _ i n s t a l a d o _ d n f ( )   { 
         d n f   l i s t   i n s t a l l e d   " $ 1 "   & >   / d e v / n u l l 
 } 
 
 #   F u n c i � n   p a r a   v e r i f i c a r   s i   u n   p a q u e t e   e s t �   i n s t a l a d o   ( A r c h   L i n u x ) 
 p a q u e t e _ i n s t a l a d o _ p a c m a n ( )   { 
         p a c m a n   - Q i   " $ 1 "   & >   / d e v / n u l l 
 } 
 
 #   D e t e c t a r   e l   s i s t e m a   o p e r a t i v o 
 i f   [   - f   / e t c / o s - r e l e a s e   ] ;   t h e n 
         .   / e t c / o s - r e l e a s e 
         O S = $ I D 
 f i 
 
 #   I n s t a l a r   p a q u e t e s   b a s a d o s   e n   e l   s i s t e m a   o p e r a t i v o 
 f o r   p a q u e t e   i n   " $ { p a q u e t e s [ @ ] } " ;   d o 
         c a s e   $ O S   i n 
                 " d e b i a n " | " u b u n t u " | " k a l i " ) 
                         i f   !   p a q u e t e _ i n s t a l a d o _ a p t   " $ p a q u e t e " ;   t h e n 
                                 e c h o   " I n s t a l a n d o   e l   p a q u e t e   $ p a q u e t e . . . " 
                                 s u d o   a p t - g e t   i n s t a l l   - y   " $ p a q u e t e " 
                         f i 
                         ; ; 
                 " c e n t o s " | " r h e l " ) 
                         i f   !   p a q u e t e _ i n s t a l a d o _ y u m   " $ p a q u e t e " ;   t h e n 
                                 e c h o   " I n s t a l a n d o   e l   p a q u e t e   $ p a q u e t e . . . " 
                                 s u d o   y u m   i n s t a l l   - y   " $ p a q u e t e " 
                         f i 
                         ; ; 
                 " f e d o r a " ) 
                         i f   !   p a q u e t e _ i n s t a l a d o _ d n f   " $ p a q u e t e " ;   t h e n 
                                 e c h o   " I n s t a l a n d o   e l   p a q u e t e   $ p a q u e t e . . . " 
                                 s u d o   d n f   i n s t a l l   - y   " $ p a q u e t e " 
                         f i 
                         ; ; 
                 " a r c h " ) 
                         i f   !   p a q u e t e _ i n s t a l a d o _ p a c m a n   " $ p a q u e t e " ;   t h e n 
                                 e c h o   " I n s t a l a n d o   e l   p a q u e t e   $ p a q u e t e . . . " 
                                 s u d o   p a c m a n   - S   - - n o c o n f i r m   " $ p a q u e t e " 
                         f i 
                         ; ; 
                 * ) 
                         ; ; 
         e s a c 
 d o n e 
 	 o      ���� 0 
scripttext 
scriptText��  ��        l     ��������  ��  ��        l   	 ����  I   	�� ��
�� .JonspClpnull���     ****  o    ���� 0 
scripttext 
scriptText��  ��  ��        l     ��������  ��  ��        l  
  ����  O   
     I   ��  
�� .prcskprsnull���     ctxt  m       �    v  �� ��
�� 
faal  m    ��
�� eMdsKcmd��    m   
   �                                                                                  sevs  alis    \  Macintosh HD               �_�BD ����System Events.app                                              �����_�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��         l     ��������  ��  ��      !�� ! l     ��������  ��  ��  ��       �� " #��   " ��
�� .aevtoappnull  �   � **** # �� $���� % &��
�� .aevtoappnull  �   � **** $ k      ' '   ( (   ) )  ����  ��  ��   %   &  
����  �������� 0 
scripttext 
scriptText
�� .JonspClpnull���     ****
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt�� �E�O�j O� 	���l U ascr  ��ޭ