FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �  j < d i v   i d = " l o a d i n g " > 
     < d i v   c l a s s = " l o a d i n g - t e x t " > L o a d i n g . . . < / d i v > 
     < d i v   c l a s s = " l o a d i n g - p e r c e n t a g e "   i d = " p e r c e n t a g e " > 0 % < / d i v > 
 < / d i v > 
 
 < s t y l e > 
     b o d y   { 
         m a r g i n :   0 ; 
         p a d d i n g :   0 ; 
     } 
     # l o a d i n g   { 
         p o s i t i o n :   f i x e d ; 
         t o p :   0 ; 
         l e f t :   0 ; 
         r i g h t :   0 ; 
         b o t t o m :   0 ; 
         d i s p l a y :   f l e x ; 
         f l e x - d i r e c t i o n :   c o l u m n ; 
         j u s t i f y - c o n t e n t :   c e n t e r ; 
         a l i g n - i t e m s :   c e n t e r ; 
         b a c k g r o u n d :   # 0 0 0 0 0 0 ; 
         z - i n d e x :   9 9 9 9 ; 
     } 
     . l o a d i n g - t e x t   { 
         c o l o r :   w h i t e ; 
         f o n t - s i z e :   2 0 p x ; 
         f o n t - f a m i l y :   A r i a l ,   s a n s - s e r i f ; 
         m a r g i n - b o t t o m :   1 0 p x ; 
     } 
     . l o a d i n g - p e r c e n t a g e   { 
         c o l o r :   w h i t e ; 
         f o n t - s i z e :   1 6 p x ; 
         f o n t - f a m i l y :   A r i a l ,   s a n s - s e r i f ; 
         o p a c i t y :   0 ; 
         t r a n s i t i o n :   o p a c i t y   0 . 5 s   e a s e ; 
     } 
 < / s t y l e > 
 
 < s c r i p t > 
     l e t   p r o g r e s s   =   0 ; 
     c o n s t   l o a d i n g E l e m e n t   =   d o c u m e n t . g e t E l e m e n t B y I d ( ' l o a d i n g ' ) ; 
     c o n s t   p e r c e n t a g e E l e m e n t   =   d o c u m e n t . g e t E l e m e n t B y I d ( ' p e r c e n t a g e ' ) ; 
 
     / /   M o s t r a r   e l   c o n t a d o r   d e s p u � s   d e   5 0 0 m s 
     s e t T i m e o u t ( ( )   = >   { 
         p e r c e n t a g e E l e m e n t . s t y l e . o p a c i t y   =   ' 1 ' ; 
     } ,   5 0 0 ) ; 
 
     c o n s t   i n t e r v a l   =   s e t I n t e r v a l ( ( )   = >   { 
         i f   ( p r o g r e s s   <   1 0 0 )   { 
             p r o g r e s s   + =   1 0 ; 
             p e r c e n t a g e E l e m e n t . t e x t C o n t e n t   =   ` $ { p r o g r e s s } % ` ; 
         }   e l s e   { 
             c l e a r I n t e r v a l ( i n t e r v a l ) ; 
         } 
     } ,   1 0 0 ) ; 
 
     w i n d o w . a d d E v e n t L i s t e n e r ( ' l o a d ' ,   f u n c t i o n ( )   { 
         s e t T i m e o u t ( f u n c t i o n ( )   { 
             l o a d i n g E l e m e n t . s t y l e . o p a c i t y   =   ' 0 ' ; 
             l o a d i n g E l e m e n t . s t y l e . t r a n s i t i o n   =   ' o p a c i t y   0 . 5 s   e a s e ' ; 
             s e t T i m e o u t ( ( )   = >   l o a d i n g E l e m e n t . r e m o v e ( ) ,   5 0 0 ) ; 
         } ,   1 0 0 0 ) ; 
     } ) ; 
 < / s c r i p t > 
 
 a g r e g a l o   a   : 
 	 o      ���� 0 thetext theText��  ��        l     ��������  ��  ��        l   	 ����  I   	�� ��
�� .JonspClpnull���     ****  o    ���� 0 thetext theText��  ��  ��        l     ��������  ��  ��     ��  l  
  ����  O   
     I   ��  
�� .prcskprsnull���     ctxt  m       �    v  �� ��
�� 
faal  J        ��  m    ��
�� eMdsKcmd��  ��    m   
   �                                                                                  sevs  alis    \  Macintosh HD               �ǣ/BD ����System Events.app                                              �����ǣ/        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��       ��   !��     ��
�� .aevtoappnull  �   � **** ! �� "���� # $��
�� .aevtoappnull  �   � **** " k      % %   & &   ' '  ����  ��  ��   #   $  
����  �������� 0 thetext theText
�� .JonspClpnull���     ****
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt�� �E�O�j O� ���kvl U ascr  ��ޭ