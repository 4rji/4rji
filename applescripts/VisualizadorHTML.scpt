FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �  � < ! - -   p r e v i e w   - - > 
 < ! D O C T Y P E   h t m l > 
 < h t m l   l a n g = " e s " > 
 < h e a d > 
 < m e t a   c h a r s e t = " U T F - 8 " > 
 < s t y l e > 
     . t o o l t i p   { 
         d i s p l a y :   n o n e ; 
         p o s i t i o n :   a b s o l u t e ; 
         t o p :   0 ;     / *   P o s i c i � n   i n i c i a l   p r e d e t e r m i n a d a ,   s e   a j u s t a r �   d i n � m i c a m e n t e   * / 
         l e f t :   0 ;   / *   P o s i c i � n   i n i c i a l   p r e d e t e r m i n a d a ,   s e   a j u s t a r �   d i n � m i c a m e n t e   * / 
         b o r d e r :   1 p x   s o l i d   # c c c ; 
         b a c k g r o u n d - c o l o r :   # f f f ; 
         w i d t h :   9 0 0 p x ; 
         h e i g h t :   6 0 0 p x ; 
         p a d d i n g :   1 0 p x ; 
         b o x - s h a d o w :   0   0   1 0 p x   r g b a ( 0 , 0 , 0 , 0 . 1 ) ; 
         z - i n d e x :   1 0 0 0 ; 
     } 
     i f r a m e   { 
         w i d t h :   1 0 0 % ; 
         h e i g h t :   1 0 0 % ; 
     } 
     a   { 
         d i s p l a y :   i n l i n e - b l o c k ;   / *   A s e g u r a   q u e   e l   e n l a c e   t i e n e   d i m e n s i o n e s   d e   b l o q u e   p a r a   a l i n e a c i � n   * / 
         m a r g i n - t o p :   5 0 p x ;   / *   S o l o   p a r a   v i s u a l i z a c i � n   d e   e j e m p l o   * / 
     } 
 < / s t y l e > 
 < s c r i p t > 
     f u n c t i o n   m o s t r a r P r e v i s u a l i z a c i o n ( e v e n t ,   u r l )   { 
         v a r   t o o l t i p   =   d o c u m e n t . g e t E l e m e n t B y I d ( ' t o o l t i p ' ) ; 
         v a r   l i n k R e c t   =   e v e n t . t a r g e t . g e t B o u n d i n g C l i e n t R e c t ( ) ;   / /   O b t i e n e   l a s   c o o r d e n a d a s   d e l   e n l a c e 
         t o o l t i p . s t y l e . d i s p l a y   =   ' b l o c k ' ; 
         / /   A l i n e a   l a   p a r t e   s u p e r i o r   d e l   t o o l t i p   c o n   l a   p a r t e   s u p e r i o r   d e l   e n l a c e 
         t o o l t i p . s t y l e . t o p   =   l i n k R e c t . t o p   +   ' p x ' ; 
         / /   C o l o c a   e l   t o o l t i p   a   l a   d e r e c h a   d e l   e n l a c e   c o n   u n   p e q u e � o   m a r g e n 
         t o o l t i p . s t y l e . l e f t   =   ( l i n k R e c t . r i g h t   +   1 0 )   +   ' p x ' ;   / /   1 0 p x   d e   m a r g e n   a   l a   d e r e c h a 
         d o c u m e n t . g e t E l e m e n t B y I d ( ' i f r a m e T o o l t i p ' ) . s r c   =   u r l ; 
     } 
 
     f u n c t i o n   o c u l t a r P r e v i s u a l i z a c i o n ( )   { 
         v a r   t o o l t i p   =   d o c u m e n t . g e t E l e m e n t B y I d ( ' t o o l t i p ' ) ; 
         t o o l t i p . s t y l e . d i s p l a y   =   ' n o n e ' ; 
     } 
 < / s c r i p t > 
 < / h e a d > 
 < b o d y > 
 < a   h r e f = " / i m g / f o l d e r / P A G E . h t m l "   
       o n m o u s e o v e r = " m o s t r a r P r e v i s u a l i z a c i o n ( e v e n t ,   t h i s . h r e f ) "   
       o n m o u s e o u t = " o c u l t a r P r e v i s u a l i z a c i o n ( ) " > 
       N O M B R E P A G I N A 
 < / a > 
 < d i v   i d = " t o o l t i p "   c l a s s = " t o o l t i p " > 
     < i f r a m e   i d = " i f r a m e T o o l t i p "   s r c = " " > < / i f r a m e > 
 < / d i v > 
 < / b o d y > 
 < / h t m l > 
 < ! - -   E n d   o f   p r e v i e w   t e x t   - - > 	 o      ���� 0 thetext theText��  ��        l     ��������  ��  ��        l   	 ����  I   	�� ��
�� .JonspClpnull���     ****  o    ���� 0 thetext theText��  ��  ��        l     ��������  ��  ��        l  
  ����  O   
     I   ��  
�� .prcskprsnull���     ctxt  m       �    v  �� ��
�� 
faal  J        ��  m    ��
�� eMdsKcmd��  ��    m   
     �                                                                                  sevs  alis    \  Macintosh HD               �_�BD ����System Events.app                                              �����_�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��     !�� ! l     ��������  ��  ��  ��       �� " #��   " ��
�� .aevtoappnull  �   � **** # �� $���� % &��
�� .aevtoappnull  �   � **** $ k      ' '   ( (   ) )  ����  ��  ��   %   &  
����   �������� 0 thetext theText
�� .JonspClpnull���     ****
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt�� �E�O�j O� ���kvl U ascr  ��ޭ