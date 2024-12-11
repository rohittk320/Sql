
-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them, must common row in both table.
use ssi;
create table person2 (
person_id int not null,
last_name varchar(40),
full_name varchar(40) not null,
age int,
primary key (person_id)
);
select * from person2;
insert into person2 (person_id,last_name,full_name,age) values(101,"thakur","rohit",25);
insert into person2 (person_id,last_name,full_name,age) values(102,"malviya","ravi",26);   
insert into person2 (person_id,last_name,full_name,age) values(103,"sharma","nishant",27);   
insert into person2 (person_id,last_name,full_name,age) values(104,"sahu","shubham",28);   
insert into person2 (person_id,last_name,full_name,age) values(105,"tiwari","rishabh",24);   

-- use practice1;
create table product (
product_id int not null,
product_name varchar(40),
quantity int,
price int,
customer_id int,
primary key (product_id)
);
select * from product;
insert into product (product_id,product_name,quantity,price,customer_id) values(1,"laptop",2,2500,103);
insert into product (product_id,product_name,quantity,price,customer_id) values(2,"mobile",5,2600,104);   
insert into product (product_id,product_name,quantity,price,customer_id) values(3,"tv",4,2700,108);   
insert into product (product_id,product_name,quantity,price,customer_id) values(4,"ac",6,2800,106);   
insert into product (product_id,product_name,quantity,price,customer_id) values(5,"color",7,2400,103);   
insert into product (product_id,product_name,quantity,price,customer_id) values(6,"tshirt",1,2000,101);   
insert into product (product_id,product_name,quantity,price,customer_id) values(7,"jacket",2,1200,103);   
insert into product (product_id,product_name,quantity,price,customer_id) values(8,"water colour",2,12000,111);   

-- inner join -> Returns records that have matching values in both tables
select * from person2 join product on person2.person_id = product.customer_id order by person2.person_id;
select * from ssi.person2 join practice1.product on person2.person_id = product.customer_id order by person2.person_id;  -- for diffrent database
select count(*) from person2 join product on person2.person_id = product.customer_id order by person2.person_id;

-- left join ->  Returns all records from the left table, and the matched records from the right table
select * from person2 left join product on person2.person_id = product.customer_id order by person2.person_id;
select count(*) from person2 left join product on person2.person_id = product.customer_id order by person2.person_id;

-- right join -> Returns all records from the right table, and the matched records from the left table
select * from person2 right join product on person2.person_id = product.customer_id order by person2.person_id;
select count(*) from person2 right join product on person2.person_id = product.customer_id order by person2.person_id;

-- full outer join = left join + union + right join -> Returns all records when there is a match in either left or right table
select * from person2  left join product on person2.person_id = product.customer_id
union 
select * from person2  right join product on person2.person_id = product.customer_id;
