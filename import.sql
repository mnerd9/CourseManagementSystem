create database `cms`;
use `cms`;

create table `instructors` (
    `id` int(11) auto_increment,
    `firstname` varchar(50) null,
    `middlename` varchar(50) default "none",
    `lastname` varchar(50) null,
    `gender` int(1) default 0,
    `phone` varchar(50) null,
    `address` varchar(255) null,
    `username` varchar(50) null,
    `email` varchar(255) null,
    `password` varchar(255) null,
    `updatedOn` datetime default current_timestamp() on update current_timestamp(),
    primary key(id)
);

create table `modules` (
    `id` int(11) auto_increment,
    `code` varchar(20) default "none",
    `course` varchar(255) default "none",
    `instructor` int,
    `updatedOn` datetime default current_timestamp() on update current_timestamp(),
    primary key (id),
    Foreign Key (instructor) REFERENCES instructors(id)
);

create table `students` (
    `id` int(11) auto_increment,
    `firstname` varchar(50) null,
    `middlename` varchar(50) default "none",
    `lastname` varchar(50) null,
    `gender` int(1) default 0,
    `phone` varchar(50) null,
    `address` varchar(255) null,
    `username` varchar(50) null,
    `email` varchar(255) null,
    `password` varchar(255) null,
    `updatedOn` datetime default current_timestamp() on update current_timestamp(),
    primary key(id)
);

create table `admins` (
    `id` int(11) auto_increment,
    `firstname` varchar(50) null,
    `middlename` varchar(50) default "none",
    `lastname` varchar(50) null,
    `gender` int(1) default 0,
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