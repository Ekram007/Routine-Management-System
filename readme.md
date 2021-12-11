<<<<<<< HEAD
# Project Description : 

Our project title is **SUST Class Routine Management**. There are 4 types of user in our system. They are Student,Class representative,Teacher and Admin.
### Student: 
1.Can see class with time and class room of current day.<br>
2.Can see routine according to his/her semester.<br>
3.Can add course that he would like to take.<br>
4.Can see his selected courses.<br>
5.Can delete courses.<br>

### Class representative :
1.Can see their classes with time and classroom of current day.<br>
2.Can see routine according to his/her semester.<br>
3.Can add the course that he would like to take.<br>
4.Can see his selected courses.<br>
5.Can delete courses.<br>
6.Can request to admin to change classtime or classsroom.<br>
7.Can see the response of admin for change requests.<br>

### Teacher : 
1.Can see classes with time and classroom of current day.<br>
2.Can see the routine of his/her classes assigned by admin.<br>
3.Can see the list of courses assigned by admin.<br>
4.Can request to admin to change classtime or classsroom.<br>
5.Can see the response of admin for change requests.<br>
6.Can cancel classes.<br>

### Admin :
1.Can see all available classroom,active courses,routines and teachers.<br>
2.Can create classroom,course,routine.<br>
3.Can generate routine with selected course and classrooms.<br>
4.Can assign teacher with courses.<br>
5.Can edit course and classroom attributes.<br>
6.Can change teacher's class schedule.<br>
7.Can see change requests of class.<br>
8.Can accept,reject requests.<br>
9.Can see conflicts of class schedule.<br>
10.Can create Student and teacher dynamically.


# How to run:

1.Download wamp: http://www.wampserver.com/en/  <br>
2.Update windows environment variable path to point to your php install folder (inside wamp installation dir) (here is how you can do this http://stackoverflow.com/questions/17727436/how-to-properly-set-php-environment-variable-to-run-commands-in-git-bash) <br>
3.Create a database locally named `homestead` utf8_general_ci <br>
4.Download composer https://getcomposer.org/download/ <br>
5.Pull Laravel/php project from git provider. <br>
6.Rename `.env.example` file to `.envinside` your project root and fill the database information. (windows wont let you do it, so you have to open your console cd your project root directory and run `mv .env.example .env` ) <br>
Open the console and cd your project root directory and run these commands<br><br>
`composer install or php composer.phar install`<br><br>
`php artisan key:generate`<br><br>
`php artisan migrate`<br><br>
`php artisan db:seed` to run seeders, if any.<br><br>
`php artisan serve`<br><br>
##### You can now access your project at `localhost:8000` :)
=======
