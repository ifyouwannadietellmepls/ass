   M S B A M L   `   `   `  ����C  ?BibleoRY, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:BibleoRYBibleoRY  5   	       BibleoRY.Auth   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:BibleoRY     5   	   -   5          � Title$
  Auth��5   	   $
��1080��6   $
��1920��6$    � 	Resources 5	         BibleoRY.DataSet1   dataSet1  employeeViewSource �� Source �� Source��%Y   &	        &	      7     5
   
   6   �� 5   
    6:   �� *
employee+8   5      .��5      �  � DataContext# [ 6   .+�5   
   �� $
��Left=�6   $��39��6+   $��352,342,0,0q�67   $��
Логин��6L   $	��Top=�6\   $	��171��6t   $��14(�6�   $��Times New Roman)�6�   �� 5   
   -   5         ��Name$ Name__Copy23��5   b   $
��Left=�6   $��39��6-   $��573,343,0,0q�69    �� TextWrapping$
 Wrap=�6N   $	��Top=�6x   $	��474��6�   �� 5   
   $
��Left=�6   $��39��6+   $��352,401,0,0q�67   $��Пароль��6L   $	��Top=�6]   $	��171��6u   $��14(�6�   $��Times New Roman)�6�   �� 5   
   -   5        $ 
Name__Copy��5   b   $
��Left=�6   $��39��6-   $��573,401,0,0q�69   $
 Wrap=�6N   $	��Top=�6v   $	��474��6�   �� 5   
   -   5         ��Name$ DeletePers_Copy4��5      $��
Войти��6+   $
��Left=�6;   $��573,463,0,0q�6V   $	��Top=�6k   $	��474��6�   $��64��6�   �� 5   
   -   5        $ DeletePers_Copy��5      $7��1Регистрация преподавателя��6*   $
��Left=�6N   $��313,554,0,0q�6i   $	��Top=�6~   $	��474��6�   $��64��6�   6�   �� 5   
   -   5        $ DeletePers_Copy1��5      $-��'Регистрация студента��6+   $
��Left=�6J   $��896,554,0,0q�6e   $	��Top=�6z   $	��474��6�   $��64��6�   6�   �� 5   
   -   5        $ DeletePers_Copy2��5      $/��)Регистрация слушателя��6+   $
��Left=�6K   $��573,649,0,0q�6f   $	��Top=�6{   $	��474��6�   $��64��6�   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ employeeDataGrid��5      	   AutoGenerateColumns	 .  
   EnableRowVirtualization
 . $��146,298,1367.333,552.667q�6�      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   ��6h   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -	   5        id_employeeColumn��,  &System.Windows.Controls.DataGridColumn   Header$ id employee��5   `      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6u   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6@   �� *id_employee+6u     5      -
   5        nameeColumn��$ namee��5   T   $ SizeToHeader 6c    6:   �� *namee+6c     5      -   5        surnameeColumn��$ surnamee��5   Z   $ SizeToHeader 6l    6=   �� *
surnamee+6l     5      -   5        patronymiceColumn��$ patronymice��5   `   $ SizeToHeader 6u    6@   �� *patronymice+6u     5      -   5        e_mailColumn��$ e mail��5   V   $ SizeToHeader 6f    6;   �� *e_mail+6f     5      -   5        loginColumn��$ login��5   T   $ SizeToHeader 6c    6:   �� *login+6c     5      -   5        passwordeColumn��$ 	passworde��5   \   $ SizeToHeader 6o    6>   �� *	passworde+6o     5      -   5        role_idColumn��$ role id��5   X   $ SizeToHeader 6i    6<   �� *	role_id+6i     5       -   5        prepod_idColumn��$ 	prepod id��5    \   $ SizeToHeader 6o    6>   �� *	prepod_id+6o     5!      -   5        student_idColumn��$ 
student id��5!   ^   $ SizeToHeader 6r    6?   �� *
student_id+6r     5"      -   5        subscription_idColumn��$ subscription id��5"   h   $ SizeToHeader 6�    6D   �� *subscription_id+6�   5$      5&      5'      