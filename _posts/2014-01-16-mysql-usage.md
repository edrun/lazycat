---
layout: _post
title: MYSQL基本用法
tags:
    - mysql
---

###
usage:
###

1 login:
>
    mysql -u root -p****** -h XXX.XXX.XXX.XXX -P port -D db_name 

2 create database:
>
    create database test_person;
    use test_person;

3 create tables:
>
    create table testqy(id init(3) not null and auto_increament,name varchar(30) not null,
    gender varchar(30) not null, primary key int(3));
    insert into testqy(name,gender) valaues("zhaox","male") ;

4 show detail of table:
    desc testqy;

5 show datas:
    select * from testqy order by name limited 1;



