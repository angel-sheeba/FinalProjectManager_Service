create table sys.parent_tasks (parent_task_id int auto_increment,
parent_task_name varchar(255), project_id long, 
primary key (parent_task_id));

create table sys.projects (project_id int auto_increment, 
project_name varchar(255), start_date varchar(255), end_date varchar(255), 
priority varchar(255), status varchar(255), manager_id varchar(255), 
primary key (project_id));

create table sys.tasks(task_id int auto_increment, 
task_name varchar(255),start_date varchar(255),end_date varchar(255)
,priority varchar(255),status varchar(255), 
parent_task_id int,
project_id int,
employee_id varchar(255),
primary key (task_id),
foreign key(employee_id) references sys.users(employee_id),
foreign key(project_id) references sys.projects(project_id),
foreign key(parent_task_id) references sys.parent_tasks(parent_task_id));


create table sys.users(employee_id varchar(255), 
first_name varchar(255), 
last_name varchar(255),
status varchar(255), primary key(employee_id) );

#alter table sys.users add foreign key(employee_id) references users(employee_id);

#drop table sys.tasks

#select * from sys.projects

