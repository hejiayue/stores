drop table goods;

create table goods
(
       id number(10) primary key,
       goodsName varchar2(100) not null,
       billStatus number(5) not null,
       goodsDistrict number(5) not null,
       goodsPrice number(10,2) not null,
       goodsCount number(10) not null,
       creationTime date not null
);

create sequence g_id
start with 1
increment by 1;

alter session set nls_date_format='YYYY-MM-DD HH24:MI:SS';

insert into goods values(g_id.nextval,'ÒÂ·þ',2,5,144.0,19,'2011-01-25 13:25:01');
insert into goods values(g_id.nextval,'Ê³Æ·',2,5,150.0,56,'2011-01-25 13:25:01');

select * from goods;

commit;

