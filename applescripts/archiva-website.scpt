FasdUAS 1.101.10   ��   ��    k             l     ��  ��    , & Obtener el contenido del portapapeles     � 	 	 L   O b t e n e r   e l   c o n t e n i d o   d e l   p o r t a p a p e l e s   
  
 l    	 ����  r     	    I    ���� 
�� .JonsgClp****    ��� null��    �� ��
�� 
rtyp  m    ��
�� 
TEXT��    o      ���� 0 clipboardtext clipboardText��  ��        l     ��������  ��  ��        l     ��  ��    F @ Generar un n�mero aleatorio para usar en el nombre de la sesi�n     �   �   G e n e r a r   u n   n � m e r o   a l e a t o r i o   p a r a   u s a r   e n   e l   n o m b r e   d e   l a   s e s i � n      l  
  ����  r   
     c   
     l  
  ����  I  
 ����  
�� .sysorandnmbr    ��� nmbr��     �� ! "
�� 
from ! m    ����  B@ " �� #��
�� 
to   # m    ����  ����  ��  ��    m    ��
�� 
TEXT  o      ���� 0 randomnumber randomNumber��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( I C Crear el nombre de la sesi�n de tmux basado en el n�mero aleatorio    ) � * * �   C r e a r   e l   n o m b r e   d e   l a   s e s i � n   d e   t m u x   b a s a d o   e n   e l   n � m e r o   a l e a t o r i o '  + , + l    -���� - r     . / . b     0 1 0 m     2 2 � 3 3  s e s s i o n _ 1 o    ���� 0 randomnumber randomNumber / o      ���� 0 sessionname sessionName��  ��   ,  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 R L Crear el comando tmux con el nombre de sesi�n basado en el n�mero aleatorio    9 � : : �   C r e a r   e l   c o m a n d o   t m u x   c o n   e l   n o m b r e   d e   s e s i � n   b a s a d o   e n   e l   n � m e r o   a l e a t o r i o 7  ; < ; l   / =���� = r    / > ? > b    + @ A @ b    ' B C B b    # D E D b    ! F G F m     H H � I I 0 t m u x   n e w - s e s s i o n   - d   - s   " G o     ���� 0 sessionname sessionName E m   ! " J J � K K � "   ' c d   ~ / a r c h i v e b o x   & &   d o c k e r - c o m p o s e   r u n   a r c h i v e b o x   a d d   - - d e p t h = 0   C n   # & L M L 1   $ &��
�� 
strq M o   # $���� 0 clipboardtext clipboardText A m   ' * N N � O O  ' ? o      ���� 0 tmuxcommand tmuxCommand��  ��   <  P Q P l     ��������  ��  ��   Q  R S R l     �� T U��   T A ; Ejecutar el comando tmux en la primera ventana de Terminal    U � V V v   E j e c u t a r   e l   c o m a n d o   t m u x   e n   l a   p r i m e r a   v e n t a n a   d e   T e r m i n a l S  W X W l  0 j Y���� Y O   0 j Z [ Z k   6 i \ \  ] ^ ] I  6 ;������
�� .miscactvnull��� ��� null��  ��   ^  _ ` _ I  < L�� a b
�� .coredoscnull��� ��� ctxt a o   < ?���� 0 tmuxcommand tmuxCommand b �� c��
�� 
kfil c 4   B H�� d
�� 
cwin d m   F G���� ��   `  e f e l  M M��������  ��  ��   f  g h g l  M M�� i j��   i L F Esperar un momento para asegurar que la sesi�n de tmux se haya creado    j � k k �   E s p e r a r   u n   m o m e n t o   p a r a   a s e g u r a r   q u e   l a   s e s i � n   d e   t m u x   s e   h a y a   c r e a d o h  l m l I  M R�� n��
�� .sysodelanull��� ��� nmbr n m   M N���� ��   m  o p o l  S S��������  ��  ��   p  q r q l  S S�� s t��   s 1 + Iniciar sesi�n en la sesi�n de tmux creada    t � u u V   I n i c i a r   s e s i � n   e n   l a   s e s i � n   d e   t m u x   c r e a d a r  v�� v I  S i�� w x
�� .coredoscnull��� ��� ctxt w b   S \ y z y b   S X { | { m   S V } } � ~ ~   t m u x   a t t a c h   - t   " | o   V W���� 0 sessionname sessionName z m   X [   � � �  " x �� ���
�� 
kfil � 4   _ e�� �
�� 
cwin � m   c d���� ��  ��   [ m   0 3 � ��                                                                                      @ alis    J  Macintosh HD               �B�BD ����Terminal.app                                                   �����B�        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��  ��  ��   X  ��� � l     ��������  ��  ��  ��       
�� � � � � � ���������   � ����������������
�� .aevtoappnull  �   � ****�� 0 clipboardtext clipboardText�� 0 randomnumber randomNumber�� 0 sessionname sessionName�� 0 tmuxcommand tmuxCommand��  ��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     j � �  
 � �   � �  + � �  ; � �  W����  ��  ��   �   � ���������������������� 2�� H J�� N�� ����������� } 
�� 
rtyp
�� 
TEXT
�� .JonsgClp****    ��� null�� 0 clipboardtext clipboardText
�� 
from��  B@
�� 
to  ��  ���� 
�� .sysorandnmbr    ��� nmbr�� 0 randomnumber randomNumber�� 0 sessionname sessionName
�� 
strq�� 0 tmuxcommand tmuxCommand
�� .miscactvnull��� ��� null
�� 
kfil
�� 
cwin
�� .coredoscnull��� ��� ctxt
�� .sysodelanull��� ��� nmbr�� k*��l E�O*����� 	�&E�O��%E�O��%�%��,%a %E` Oa  5*j O_ a *a k/l Olj Oa �%a %a *a k/l U � � � � 2 h t t p s : / / a t t a c k . m i t r e . o r g / � � � �  1 3 6 5 1 7 8 � � � �  s e s s i o n _ 1 3 6 5 1 7 8 � � � �
 t m u x   n e w - s e s s i o n   - d   - s   " s e s s i o n _ 1 3 6 5 1 7 8 "   ' c d   ~ / a r c h i v e b o x   & &   d o c k e r - c o m p o s e   r u n   a r c h i v e b o x   a d d   - - d e p t h = 0   ' h t t p s : / / a t t a c k . m i t r e . o r g / ' '��  ��  ��  ascr  ��ޭ