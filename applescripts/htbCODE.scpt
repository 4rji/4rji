FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # Get the current clipboard contents     � 	 	 F   G e t   t h e   c u r r e n t   c l i p b o a r d   c o n t e n t s   
  
 l     ����  r         I    ������
�� .JonsgClp****    ��� null��  ��    o      ���� $0 clipboardcontent clipboardContent��  ��        l     ��������  ��  ��        l     ��  ��    P J Define the HTML template, replacing 'CODEHERE' with the clipboard content     �   �   D e f i n e   t h e   H T M L   t e m p l a t e ,   r e p l a c i n g   ' C O D E H E R E '   w i t h   t h e   c l i p b o a r d   c o n t e n t      l    ����  r        b        b        m    	   �    � < ! D O C T Y P E   h t m l > 
 < h t m l   l a n g = " e n " > 
         < ! - -   B l a n k   S p a c e   - - > 
         < p > < / p > < p > < / p > 
         < b r > 
         < p > < / p > < p > < / p > 
         < b r > 
         < h e a d > 
                 < m e t a   c h a r s e t = " U T F - 8 " > 
                 < t i t l e > C o d e   E x a m p l e   w i t h   C o p y   F u n c t i o n a l i t y < / t i t l e > 
                 < l i n k   h r e f = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / t h e m e s / p r i s m . c s s "   r e l = " s t y l e s h e e t " > 
                 < s t y l e > 
                         . c o p y - c o d e   { 
                                 c u r s o r :   p o i n t e r ; 
                                 b a c k g r o u n d - c o l o r :   # f 0 f 0 f 0 ; 
                                 b o r d e r :   1 p x   s o l i d   # c c c ; 
                                 p a d d i n g :   5 p x   1 0 p x ; 
                                 b o r d e r - r a d i u s :   5 p x ; 
                                 m a r g i n - b o t t o m :   5 p x ; 
                         } 
                 < / s t y l e > 
         < / h e a d > 
         < b o d y > 
         < d i v   c l a s s = ' c o d e - h i g h l i g h t   c o d e - h i g h l i g h t - w i t h - l a b e l '   d a t a - l a b e l = ' H T B ' > 
                 < s p a n   c l a s s = " j s - c o p y - t o - c l i p b o a r d   c o p y - c o d e "   o n c l i c k = " c o p y T o C l i p b o a r d ( ' # p y t h o n - c o d e ' ) " > < / s p a n > 
                 < p r e > < c o d e   c l a s s = " l a n g u a g e - p y t h o n "   i d = " p y t h o n - c o d e " >  o   	 
���� $0 clipboardcontent clipboardContent  m     ! ! � " "r < / c o d e > < / p r e > 
         < / d i v > 
         < s c r i p t   s r c = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / p r i s m . j s " > < / s c r i p t > 
         < s c r i p t > 
         f u n c t i o n   c o p y T o C l i p b o a r d ( e l e m e n t )   { 
                 v a r   t e x t   =   d o c u m e n t . q u e r y S e l e c t o r ( e l e m e n t ) ; 
                 v a r   r a n g e   =   d o c u m e n t . c r e a t e R a n g e ( ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   c l e a r   c u r r e n t   s e l e c t i o n 
                 r a n g e . s e l e c t N o d e ( t e x t ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . a d d R a n g e ( r a n g e ) ;   / /   t o   s e l e c t   t e x t 
                 d o c u m e n t . e x e c C o m m a n d ( " c o p y " ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   t o   d e s e l e c t 
         } 
         < / s c r i p t > 
         < / b o d y > 
 < / h t m l >  o      ���� 0 htmltemplate htmlTemplate��  ��     # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   ' 1 + Set the updated HTML back to the clipboard    ( � ) ) V   S e t   t h e   u p d a t e d   H T M L   b a c k   t o   t h e   c l i p b o a r d &  * + * l    ,���� , I   �� -��
�� .JonspClpnull���     **** - o    ���� 0 htmltemplate htmlTemplate��  ��  ��   +  . / . l     ��������  ��  ��   /  0 1 0 l     ��������  ��  ��   1  2 3 2 l     ��������  ��  ��   3  4 5 4 l     ��������  ��  ��   5  6 7 6 l     ��������  ��  ��   7  8 9 8 l   " :���� : O    " ; < ; I   !�� = >
�� .prcskprsnull���     ctxt = m     ? ? � @ @  v > �� A��
�� 
faal A m    ��
�� eMdsKcmd��   < m     B B�                                                                                  sevs  alis    \  Macintosh HD               �!BD ����System Events.app                                              �����!        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   9  C�� C l     ��������  ��  ��  ��       �� D E F G����   D ��������
�� .aevtoappnull  �   � ****�� $0 clipboardcontent clipboardContent�� 0 htmltemplate htmlTemplate��   E �� H���� I J��
�� .aevtoappnull  �   � **** H k     " K K  
 L L   M M  * N N  8����  ��  ��   I   J ����  !���� B ?������
�� .JonsgClp****    ��� null�� $0 clipboardcontent clipboardContent�� 0 htmltemplate htmlTemplate
�� .JonspClpnull���     ****
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt�� #*j  E�O��%�%E�O�j O� 	���l 
U F � O O� < ! D O C T Y P E   h t m l > 
 < h t m l   l a n g = " e n " > 
         < ! - -   B l a n k   S p a c e   - - > 
         < p > < / p > < p > < / p > 
         < b r > 
         < p > < / p > < p > < / p > 
         < b r > 
         < h e a d > 
                 < m e t a   c h a r s e t = " U T F - 8 " > 
                 < t i t l e > C o d e   E x a m p l e   w i t h   C o p y   F u n c t i o n a l i t y < / t i t l e > 
                 < l i n k   h r e f = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / t h e m e s / p r i s m . c s s "   r e l = " s t y l e s h e e t " > 
                 < s t y l e > 
                         . c o p y - c o d e   { 
                                 c u r s o r :   p o i n t e r ; 
                                 b a c k g r o u n d - c o l o r :   # f 0 f 0 f 0 ; 
                                 b o r d e r :   1 p x   s o l i d   # c c c ; 
                                 p a d d i n g :   5 p x   1 0 p x ; 
                                 b o r d e r - r a d i u s :   5 p x ; 
                                 m a r g i n - b o t t o m :   5 p x ; 
                         } 
                 < / s t y l e > 
         < / h e a d > 
         < b o d y > 
         < d i v   c l a s s = ' c o d e - h i g h l i g h t   c o d e - h i g h l i g h t - w i t h - l a b e l '   d a t a - l a b e l = ' H T B ' > 
                 < s p a n   c l a s s = " j s - c o p y - t o - c l i p b o a r d   c o p y - c o d e "   o n c l i c k = " c o p y T o C l i p b o a r d ( ' # p y t h o n - c o d e ' ) " > < / s p a n > 
                 < p r e > < c o d e   c l a s s = " l a n g u a g e - p y t h o n "   i d = " p y t h o n - c o d e " > < ! D O C T Y P E   h t m l > 
 < h t m l   l a n g = " e n " > 
         < ! - -   B l a n k   S p a c e   - - > 
         < p > < / p > < p > < / p > 
         < b r > 
         < p > < / p > < p > < / p > 
         < b r > 
         < h e a d > 
                 < m e t a   c h a r s e t = " U T F - 8 " > 
                 < t i t l e > C o d e   E x a m p l e   w i t h   C o p y   F u n c t i o n a l i t y < / t i t l e > 
                 < l i n k   h r e f = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / t h e m e s / p r i s m . c s s "   r e l = " s t y l e s h e e t " > 
                 < s t y l e > 
                         . c o p y - c o d e   { 
                                 c u r s o r :   p o i n t e r ; 
                                 b a c k g r o u n d - c o l o r :   # f 0 f 0 f 0 ; 
                                 b o r d e r :   1 p x   s o l i d   # c c c ; 
                                 p a d d i n g :   5 p x   1 0 p x ; 
                                 b o r d e r - r a d i u s :   5 p x ; 
                                 m a r g i n - b o t t o m :   5 p x ; 
                         } 
                 < / s t y l e > 
         < / h e a d > 
         < b o d y > 
         < d i v   c l a s s = ' c o d e - h i g h l i g h t   c o d e - h i g h l i g h t - w i t h - l a b e l '   d a t a - l a b e l = ' H T B ' > 
                 < s p a n   c l a s s = " j s - c o p y - t o - c l i p b o a r d   c o p y - c o d e "   o n c l i c k = " c o p y T o C l i p b o a r d ( ' # p y t h o n - c o d e ' ) " > < / s p a n > 
                 < p r e > < c o d e   c l a s s = " l a n g u a g e - p y t h o n "   i d = " p y t h o n - c o d e " >   R o l l i n g   x 8 6 < / c o d e > < / p r e > 
         < / d i v > 
         < s c r i p t   s r c = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / p r i s m . j s " > < / s c r i p t > 
         < s c r i p t > 
         f u n c t i o n   c o p y T o C l i p b o a r d ( e l e m e n t )   { 
                 v a r   t e x t   =   d o c u m e n t . q u e r y S e l e c t o r ( e l e m e n t ) ; 
                 v a r   r a n g e   =   d o c u m e n t . c r e a t e R a n g e ( ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   c l e a r   c u r r e n t   s e l e c t i o n 
                 r a n g e . s e l e c t N o d e ( t e x t ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . a d d R a n g e ( r a n g e ) ;   / /   t o   s e l e c t   t e x t 
                 d o c u m e n t . e x e c C o m m a n d ( " c o p y " ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   t o   d e s e l e c t 
         } 
         < / s c r i p t > 
         < / b o d y > 
 < / h t m l > < / c o d e > < / p r e > 
         < / d i v > 
         < s c r i p t   s r c = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / p r i s m . j s " > < / s c r i p t > 
         < s c r i p t > 
         f u n c t i o n   c o p y T o C l i p b o a r d ( e l e m e n t )   { 
                 v a r   t e x t   =   d o c u m e n t . q u e r y S e l e c t o r ( e l e m e n t ) ; 
                 v a r   r a n g e   =   d o c u m e n t . c r e a t e R a n g e ( ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   c l e a r   c u r r e n t   s e l e c t i o n 
                 r a n g e . s e l e c t N o d e ( t e x t ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . a d d R a n g e ( r a n g e ) ;   / /   t o   s e l e c t   t e x t 
                 d o c u m e n t . e x e c C o m m a n d ( " c o p y " ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   t o   d e s e l e c t 
         } 
         < / s c r i p t > 
         < / b o d y > 
 < / h t m l > G � P P!� < ! D O C T Y P E   h t m l > 
 < h t m l   l a n g = " e n " > 
         < ! - -   B l a n k   S p a c e   - - > 
         < p > < / p > < p > < / p > 
         < b r > 
         < p > < / p > < p > < / p > 
         < b r > 
         < h e a d > 
                 < m e t a   c h a r s e t = " U T F - 8 " > 
                 < t i t l e > C o d e   E x a m p l e   w i t h   C o p y   F u n c t i o n a l i t y < / t i t l e > 
                 < l i n k   h r e f = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / t h e m e s / p r i s m . c s s "   r e l = " s t y l e s h e e t " > 
                 < s t y l e > 
                         . c o p y - c o d e   { 
                                 c u r s o r :   p o i n t e r ; 
                                 b a c k g r o u n d - c o l o r :   # f 0 f 0 f 0 ; 
                                 b o r d e r :   1 p x   s o l i d   # c c c ; 
                                 p a d d i n g :   5 p x   1 0 p x ; 
                                 b o r d e r - r a d i u s :   5 p x ; 
                                 m a r g i n - b o t t o m :   5 p x ; 
                         } 
                 < / s t y l e > 
         < / h e a d > 
         < b o d y > 
         < d i v   c l a s s = ' c o d e - h i g h l i g h t   c o d e - h i g h l i g h t - w i t h - l a b e l '   d a t a - l a b e l = ' H T B ' > 
                 < s p a n   c l a s s = " j s - c o p y - t o - c l i p b o a r d   c o p y - c o d e "   o n c l i c k = " c o p y T o C l i p b o a r d ( ' # p y t h o n - c o d e ' ) " > < / s p a n > 
                 < p r e > < c o d e   c l a s s = " l a n g u a g e - p y t h o n "   i d = " p y t h o n - c o d e " > < ! D O C T Y P E   h t m l > 
 < h t m l   l a n g = " e n " > 
         < ! - -   B l a n k   S p a c e   - - > 
         < p > < / p > < p > < / p > 
         < b r > 
         < p > < / p > < p > < / p > 
         < b r > 
         < h e a d > 
                 < m e t a   c h a r s e t = " U T F - 8 " > 
                 < t i t l e > C o d e   E x a m p l e   w i t h   C o p y   F u n c t i o n a l i t y < / t i t l e > 
                 < l i n k   h r e f = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / t h e m e s / p r i s m . c s s "   r e l = " s t y l e s h e e t " > 
                 < s t y l e > 
                         . c o p y - c o d e   { 
                                 c u r s o r :   p o i n t e r ; 
                                 b a c k g r o u n d - c o l o r :   # f 0 f 0 f 0 ; 
                                 b o r d e r :   1 p x   s o l i d   # c c c ; 
                                 p a d d i n g :   5 p x   1 0 p x ; 
                                 b o r d e r - r a d i u s :   5 p x ; 
                                 m a r g i n - b o t t o m :   5 p x ; 
                         } 
                 < / s t y l e > 
         < / h e a d > 
         < b o d y > 
         < d i v   c l a s s = ' c o d e - h i g h l i g h t   c o d e - h i g h l i g h t - w i t h - l a b e l '   d a t a - l a b e l = ' H T B ' > 
                 < s p a n   c l a s s = " j s - c o p y - t o - c l i p b o a r d   c o p y - c o d e "   o n c l i c k = " c o p y T o C l i p b o a r d ( ' # p y t h o n - c o d e ' ) " > < / s p a n > 
                 < p r e > < c o d e   c l a s s = " l a n g u a g e - p y t h o n "   i d = " p y t h o n - c o d e " > < ! D O C T Y P E   h t m l > 
 < h t m l   l a n g = " e n " > 
         < ! - -   B l a n k   S p a c e   - - > 
         < p > < / p > < p > < / p > 
         < b r > 
         < p > < / p > < p > < / p > 
         < b r > 
         < h e a d > 
                 < m e t a   c h a r s e t = " U T F - 8 " > 
                 < t i t l e > C o d e   E x a m p l e   w i t h   C o p y   F u n c t i o n a l i t y < / t i t l e > 
                 < l i n k   h r e f = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / t h e m e s / p r i s m . c s s "   r e l = " s t y l e s h e e t " > 
                 < s t y l e > 
                         . c o p y - c o d e   { 
                                 c u r s o r :   p o i n t e r ; 
                                 b a c k g r o u n d - c o l o r :   # f 0 f 0 f 0 ; 
                                 b o r d e r :   1 p x   s o l i d   # c c c ; 
                                 p a d d i n g :   5 p x   1 0 p x ; 
                                 b o r d e r - r a d i u s :   5 p x ; 
                                 m a r g i n - b o t t o m :   5 p x ; 
                         } 
                 < / s t y l e > 
         < / h e a d > 
         < b o d y > 
         < d i v   c l a s s = ' c o d e - h i g h l i g h t   c o d e - h i g h l i g h t - w i t h - l a b e l '   d a t a - l a b e l = ' H T B ' > 
                 < s p a n   c l a s s = " j s - c o p y - t o - c l i p b o a r d   c o p y - c o d e "   o n c l i c k = " c o p y T o C l i p b o a r d ( ' # p y t h o n - c o d e ' ) " > < / s p a n > 
                 < p r e > < c o d e   c l a s s = " l a n g u a g e - p y t h o n "   i d = " p y t h o n - c o d e " >   R o l l i n g   x 8 6 < / c o d e > < / p r e > 
         < / d i v > 
         < s c r i p t   s r c = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / p r i s m . j s " > < / s c r i p t > 
         < s c r i p t > 
         f u n c t i o n   c o p y T o C l i p b o a r d ( e l e m e n t )   { 
                 v a r   t e x t   =   d o c u m e n t . q u e r y S e l e c t o r ( e l e m e n t ) ; 
                 v a r   r a n g e   =   d o c u m e n t . c r e a t e R a n g e ( ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   c l e a r   c u r r e n t   s e l e c t i o n 
                 r a n g e . s e l e c t N o d e ( t e x t ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . a d d R a n g e ( r a n g e ) ;   / /   t o   s e l e c t   t e x t 
                 d o c u m e n t . e x e c C o m m a n d ( " c o p y " ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   t o   d e s e l e c t 
         } 
         < / s c r i p t > 
         < / b o d y > 
 < / h t m l > < / c o d e > < / p r e > 
         < / d i v > 
         < s c r i p t   s r c = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / p r i s m . j s " > < / s c r i p t > 
         < s c r i p t > 
         f u n c t i o n   c o p y T o C l i p b o a r d ( e l e m e n t )   { 
                 v a r   t e x t   =   d o c u m e n t . q u e r y S e l e c t o r ( e l e m e n t ) ; 
                 v a r   r a n g e   =   d o c u m e n t . c r e a t e R a n g e ( ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   c l e a r   c u r r e n t   s e l e c t i o n 
                 r a n g e . s e l e c t N o d e ( t e x t ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . a d d R a n g e ( r a n g e ) ;   / /   t o   s e l e c t   t e x t 
                 d o c u m e n t . e x e c C o m m a n d ( " c o p y " ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   t o   d e s e l e c t 
         } 
         < / s c r i p t > 
         < / b o d y > 
 < / h t m l > < / c o d e > < / p r e > 
         < / d i v > 
         < s c r i p t   s r c = " h t t p s : / / c d n . j s d e l i v r . n e t / n p m / p r i s m j s @ 1 . 2 6 . 0 / p r i s m . j s " > < / s c r i p t > 
         < s c r i p t > 
         f u n c t i o n   c o p y T o C l i p b o a r d ( e l e m e n t )   { 
                 v a r   t e x t   =   d o c u m e n t . q u e r y S e l e c t o r ( e l e m e n t ) ; 
                 v a r   r a n g e   =   d o c u m e n t . c r e a t e R a n g e ( ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   c l e a r   c u r r e n t   s e l e c t i o n 
                 r a n g e . s e l e c t N o d e ( t e x t ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . a d d R a n g e ( r a n g e ) ;   / /   t o   s e l e c t   t e x t 
                 d o c u m e n t . e x e c C o m m a n d ( " c o p y " ) ; 
                 w i n d o w . g e t S e l e c t i o n ( ) . r e m o v e A l l R a n g e s ( ) ;   / /   t o   d e s e l e c t 
         } 
         < / s c r i p t > 
         < / b o d y > 
 < / h t m l >��  ascr  ��ޭ