   M S B A M L   `   `   `  ����C  ?BibleoRY, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:BibleoRYBibleoRY  5   	       BibleoRY.Admin   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:BibleoRY     5   	   -   5          � Title$  Admin��5   	   $
��1080��6   $
��1920��6%    � 	Resources 5	         BibleoRY.DataSet1   dataSet1  employeeViewSource �� Source �� Source  subscription_ViewSource  bookViewSource��%�   &	        &	      7   &	 A     7   &	 t     7     5
   
   6   �� 5   
    6:   �� *
employee+8   �� 5   
    6?   �� *subscription_+8   �� 5   
    66   �� *book+8   5      .��5      �  � DataContext# [ 6    � ColumnDefinitions 5   
   �� 5       � RowDefinitions 5   
   �� 5      $
��373* �6   �� 5      $
��678* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ employeeDataGrid��5         AutoGenerateColumns .  	   EnableRowVirtualization	 . $
��Left=�6�   $	��Top=�6�   
   RowDetailsVisibilityMode$
 VisibleWhenSelected=�6�   $	��683��6�   $��	10,33,0,0q�6�   $	��580��6  $��2��6  ��6h   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        id_employeeColumn��,  &System.Windows.Controls.DataGridColumn   Header$ id employee��5   `      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6u   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6@   �� *id_employee+6u     5      -   5        nameeColumn��$ namee��5   T   $ SizeToHeader 6c    6:   �� *namee+6c     5      -   5        surnameeColumn��$ surnamee��5   Z   $ SizeToHeader 6l    6=   �� *
surnamee+6l     5      -   5        patronymiceColumn��$ patronymice��5   `   $ SizeToHeader 6u    6@   �� *patronymice+6u     5      -   5        e_mailColumn��$ e mail��5   V   $ SizeToHeader 6f    6;   �� *e_mail+6f     5      -   5        loginColumn��$ login��5   T   $ SizeToHeader 6c    6:   �� *login+6c     5      -	   5        passwordeColumn��$ 	passworde��5   \   $ SizeToHeader 6o    6>   �� *	passworde+6o     5       -
   5        role_idColumn��$ role id��5    X   $ SizeToHeader 6i    6<   �� *	role_id+6i     5!      -   5        prepod_idColumn��$ 	prepod id��5!   \   $ SizeToHeader 6o    6>   �� *	prepod_id+6o     5"      -   5        student_idColumn��$ 
student id��5"   ^   $ SizeToHeader 6r    6?   �� *
student_id+6r     5#      -   5        subscription_idColumn��$ subscription id��5#   h   $ SizeToHeader 6�    6D   �� *subscription_id+6�   5%        5&   
   -   5        $ subscription_DataGrid��5&       .  	 . $
��Left=�6�   $	��Top=�6�   $��
622,33,0,0q�6�   $
 VisibleWhenSelected=�6�   $	��621��6+  $	��335��68  $��2��6D  ��6m   �� # [  5'        5(      -   5        id_subscription_Column��$ id subscription��5(   j   $ SizeToHeader 6�    6E   �� *id_subscription_+6�   4  .System.Windows.Controls.DataGridTemplateColumn  5)      -   5        date_endingColumn��$ date ending��5)   D   $ SizeToHeader 6Y      CellTemplate 5*      �� 5+      .R�5,      (  "System.Windows.Controls.DatePicker     SelectedDate 6)   �� *date_ending+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 5-      5/        50      -   5        statusColumn��$ status��50   V   $ SizeToHeader 6f    6;   �� *status+6f     51      -   5        number_subscription_Column��$ number subscription��51   r   $ SizeToHeader 6�    6I   �� *number_subscription_+6�   53      �� 54   
   -   5         ��Name$ DeletePers_Copy4��54      $)��#Создать абонемент
��6+   $
��Left=�6Q   $��622,286.333,0,0q�6l   $	��Top=�6�   $	��335��6�   $��57��6�   $��1��6�     55   
   -   5        $ bookDataGrid��55       .  	 . $
��Left=�6�   $	��Top=�6�   $��
979,33,0,0q�6�   $
 VisibleWhenSelected=�6�   $	��683��6  $	��243��6&  $��2��62  ��6d   �� # [  56        57      -   5        id_bookColumn��$ id book��57   X   $ SizeToHeader 6i    6<   �� *	id_book+6i     58      -   5        name_bookColumn��$ 	name book��58   \   $ SizeToHeader 6o    6>   �� *	name_book+6o     59      -   5        number_bookColumn��$ number book��59   `   $ SizeToHeader 6u    6@   �� *number_book+6u   5;      �� 5<   
   $
��Left=�6   $��25��6+   $��1241,100,0,0q�67   $��Количество��6M   $	��Top=�6b   $	��155��6z   $��14(�6�   $��Times New Roman)�6�   �� 5=   
   -   5         ��Name$ Name__Copy30��5=   c   $
��Left=�6   $��23��6-   $��1250,131,0,0q�69    �� TextWrapping$
 Wrap=�6O   $	��Top=�6y   $	��116��6�   �� 5>   
   -   5        $ InsertPers_Copy7��5>      $��Добавить��6+   $
��Left=�6>   $��1251,169,0,0q�6Y   $	��Top=�6o   $	��115��6�   $��21��6�   �� 5?   
   -   5        $ UpdatePers_Copy7��5?      $��Изменить��6+   $
��Left=�6>   $��1251,197,0,0q�6Y   $	��Top=�6o   $	��115��6�   $��21��6�   �� 5@   
   -   5        $ DeletePers_Copy7��5@      $��Удалить��6+   $
��Left=�6=   $��1251,223,0,0q�6X   $	��Top=�6n   $	��115��6�   $��21��6�   �� 5A   
   $
��Left=�6   $��25��6+   $��1241,41,0,0q�67   $��Наименование��6L   $	��Top=�6c   $	��155��6{   $��14(�6�   $��Times New Roman)�6�   �� 5B   
   -   5        $ 
Name__Copy��5B   b   $
��Left=�6   $��23��6-   $��1250,72,0,0q�69   $
 Wrap=�6N   $	��Top=�6v   $	��116��6�   5D      5E      