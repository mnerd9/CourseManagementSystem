create database `cms`;
use `cms`;

create table `instructors` (
    `id` int(11) auto_increment,
    `firstname` varchar(50) null,
    `middlename` varchar(50) default "none",
    `lastname` varchar(50) null,
    `gender` varchar(50) default "none",
    `phone` varchar(50) null,
    `address` varchar(255) null,
    `username` varchar(50) null,
    `email` varchar(255) null,
    `password` varchar(255) null,
    `updatedOn` datetime default current_timestamp() on update current_timestamp(),
    primary key(id)
);
create table `courses` (
    `id` int(11) auto_increment,
    `name` varchar(255) default "none",
    `year` int(11) default 1,
    `isActive` int(11) default 0,
    `updatedOn` datetime default current_timestamp() on update current_timestamp(),
    primary key (id)
);

create table `modules` (
    `id` int(11) auto_increment,
    `course` int,
    `code` varchar(20) default "none",
    `name` varchar(255) default "none",
    `year` int(11) default 1,
    `instructor` int,
    `updatedOn` datetime default current_timestamp() on update current_timestamp(),
    primary key (id),
    Foreign Key (course) REFERENCES courses(id),
    Foreign Key(instructor) REFERENCES instructors(id)
);

create table `students` (
    `id` int(11) auto_increment,
    `firstname` varchar(50) null,
    `middlename` varchar(50) default "none",
    `lastname` varchar(50) null,
    `gender` varchar(50) default "none",
    `phone` varchar(50) null,
    `address` varchar(255) null,
    `username` varchar(50) null,
    `email` varchar(255) null,
    `password` varchar(255) null,
    `updatedOn` datetime default current_timestamp() on update current_timestamp(),
    primary key(id)
);

create table `enrolled_modules` (
    `id` int(11) auto_increment,
    `module` int,
    `student` int,
    `instructor` int,
    `updatedOn` datetime default current_timestamp() on update current_timestamp(),
    primary key(id),
    Foreign Key(module) REFERENCES modules(id),
    Foreign Key(instructor) REFERENCES modules(instructor),
    Foreign Key(student) REFERENCES students(id)
);

create table `admins` (
    `id` int(11) auto_increment,
    `firstname` varchar(50) null,
    `middlename` varchar(50) default "none",
    `lastname` varchar(50) null,
    `gender` varchar(50) default "none",
    `phone` varchar(50) null,
    `address` varchar(255) null,
    `username` varchar(50) null,
    `email` varchar(255) null,
    `password` varchar(255) null,
    `updatedOn` datetime default current_timestamp() on update current_timestamp(),
    primary key(id)
);

create table `logs` (
    `id` int(11) auto_increment,
    `description` varchar(255) default "none",
    `type` varchar(50) default "none",
    `updatedOn` datetime default current_timestamp() on update current_timestamp(),
    primary key (id)
);