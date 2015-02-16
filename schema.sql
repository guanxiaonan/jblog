drop database if exists jblog;
create database jblog;

use jblog;

grant select,insert,update,delete on jblog.* to 'jiffies'@'%' identified by 'jiffies';


-- generating SQL for users:
create table `users` (
  `id` varchar(50) not null,
  `email` varchar(50) not null,
  `password` varchar(50) not null,
  `admin` bool not null,
  `created_at` real not null,
  primary key(`id`)
) engine=innodb default charset=utf8;

-- generating SQL for blogs:
create table `blogs` (
  `id` varchar(50) not null,
  `user_id` varchar(50) not null,
  `title` varchar(50) not null,
  `content` text not null,
  `image` varchar(500) not null,
  `created_at` real not null,
  primary key(`id`)
) engine=innodb default charset=utf8;
