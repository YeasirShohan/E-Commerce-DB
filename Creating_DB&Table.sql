create schema ECommerce_DBA;
use ECommerce_dba;
create table if not exists product(
p_id int not null,
P_name varchar(20) not null,
p_category varchar(20),
p_price float,
primary key(p_id)
);

create table if not exists customer(
c_id int not null,
c_name varchar(20) not null,
c_email varchar(50),
c_join_date date,
primary key(c_id)
);

create table if not exists orders(
o_id int not null,
c_id int not null,
o_date date,
primary key(o_id),
foreign key (c_id) references customer(c_id)
);

create table if not exists order_item(
oi_id int not null,
o_id int not null,
p_id int not null,
oi_quantity int not null,
primary key(oi_id),
foreign key(o_id) references orders(o_id),
foreign key(p_id) references product(p_id)
);

create TABLE if not exists payment(
pay_id int not null,
o_id int not null,
pay_date date not null,
pay_amount float not null,
pay_method varchar(50),
primary key(pay_id),
foreign key(o_id) references orders(o_id)
);














