-- create database Ecom_Shop
-- go
use [Ecom_Shop]
go


BEGIN
    DECLARE @sql NVARCHAR(MAX) = N''
	SELECT @sql += N'
		ALTER TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id))
		+ '.' + QUOTENAME(OBJECT_NAME(parent_object_id)) + 
		' DROP CONSTRAINT ' + QUOTENAME(name) + ';'
		FROM sys.foreign_keys;
	EXEC sp_executesql @sql;
END

if exists (select * from sysobjects where name='customers' and xtype='U')
    drop table customers;
go

create table customers (
cst_id int primary key identity(1,1),
cst_name varchar(50),
cst_adress varchar(200),
cst_age int,
cst_phone_number int,
cst_email varchar(100)
);
go


if exists (select * from sysobjects where name='employees' and xtype='U')
    drop table employees;
go

create table employees (
emp_id int primary key identity(1,1),
emp_name varchar(50),
emp_adress varchar(50),
emp_age int,
emp_phone_number int,
emp_email_adress varchar(100)
);
go

if exists (select * from sysobjects where name='transactions' and xtype='U')
    drop table transactions;
go

create table transactions (
trn_id int not null primary key identity(1,1),
trn_str_id int not null,
trn_cst_id int not null,
trn_emp_id int not null,
trn_net money,
trn_gross money,
trn_tax money,
trn_created_at datetime default getdate(),
trn_status varchar(50),
trn_store varchar(100),
trn_receipt_id int
);
go

if exists (select * from sysobjects where name='transaction_details' and xtype='U')
    drop table transaction_details;
go
 
create table transaction_details (
trd_id int not null primary key identity(1,1),
trd_trn_id int not null,
trd_prd_id int not null,
trd_product_type varchar(100),
trd_shipment_sku varchar(100),
trd_created_at datetime default getdate(),
trd_updated_at datetime,
trd_store varchar(100),
trd_value money,
trd_qty_ordered int,
trd_qty_sent int
 );

if exists (select * from sysobjects where name='users' and xtype='U')
    drop table users;
go
create table users (
usr_id int not null primary key identity(1,1),
usr_usr_id int,
usr_email varchar(100),
usr_status varchar(50),
usr_created_at datetime default getdate(),
usr_updated_at datetime,
usr_pass varchar(50),
usr_fristname varchar(50),
usr_lastname varchar(50)
);

if exists (select * from sysobjects where name='products' and xtype='U')
    drop table products;
go

create table products ( 
prd_id int not null primary key identity(1,1),
prd_model varchar(100),
prd_color varchar(50),
prd_size varchar(50),
prd_description varchar(100),
prd_created_at datetime default getdate(),
prd_updated_at datetime,
prd_unit varchar (50)
);

if exists (select * from sysobjects where name='stores' and xtype='U')
    drop table stores;
go

create table stores(
str_id int not null primary key identity(1,1),
str_name varchar(100),
str_status varchar(100),
str_created_at datetime default getdate(),
str_updated_at datetime,
str_code varchar(100),
str_adress varchar(100),
str_square int,
str_usr_id int
);
go

if exists (select * from sysobjects where name='users_history' and xtype='U')
    drop table users_history;
go

create table users_history (
his_id int not null primary key identity(1,1),
his_usr_id int not null,
his_usr_email_old varchar(100),
his_usr_email_new varchar(100),
his_usr_status_old varchar(50),
his_usr_status_new varchar(50),
his_created_at datetime default getdate(),
his_usr_pass varchar(50),
his_usr_fristname varchar(50),
his_usr_lastname varchar(50)
);


alter table transactions add constraint fk_transactions_customers foreign key (trn_cst_id) references customers(cst_id);
alter table transactions add constraint fk_transactions_stores foreign key (trn_str_id) references stores(str_id);
alter table transactions add constraint fk_transactions_employees foreign key (trn_emp_id) references employees(emp_id);
alter table transaction_details add constraint fk_transaction_details_transactions  foreign key (trd_trn_id) references transactions(trn_id);
alter table transaction_details add constraint fk_transaction_details_products  foreign key (trd_prd_id) references products(prd_id);
alter table stores add constraint fk_stores_users  foreign key (str_usr_id) references users(usr_id);
alter table users add constraint fk_users_users  foreign key (usr_usr_id) references users(usr_id);
alter table users_history add constraint fk_users_history_users  foreign key (his_usr_id) references users(usr_id);
go

create or alter view  view_transactions as
select
t.trn_net,
t.trn_tax,
t.trn_gross,
t.trn_receipt_id,
t.trn_created_at,
t.trn_status, 
td.trd_product_type,
td.trd_value,
td.trd_shipment_sku,
p.Prd_Description,
td.trd_qty_ordered,
td.trd_qty_sent,
s.str_name,
s.str_status,
s.str_code,
s.str_adress,
s.str_square
from transactions t
join transaction_details td on td.trd_trn_id = t.trn_id 
join products p on td.trd_prd_id = p.prd_id
join stores s on s.str_id = t.trn_str_id;
go