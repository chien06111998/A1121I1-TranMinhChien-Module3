create database manage_orders;
use manage_orders;
-- người giao hàng 
create table shipper(
	id_shipper int primary key,
    name_shipper varchar(50),
    phone_number varchar(20)
);
-- khách hàng
create table customer(
	id_customer int primary key auto_increment,
    name_customer varchar(50),
    address varchar(50),
    phone_number varchar(20),
    id_shipper int,
    foreign key(id_shipper) references shipper(id_shipper)
);
create table shipment_details(
	id_address int primary key,
    delivery_place varchar(50),
    delivery_date datetime
);
-- đơn đặt hàng
create table orders(
	id_order int primary key auto_increment, 
    name_order varchar(50),
    booking_date date,
    note varchar(50),
    unit varchar(20),
    quantity int,
    id_customer int,
    id_shipper int,
    foreign key(id_customer) references customer(id_customer),
    foreign key(id_shipper) references shipper(id_shipper)
);
-- phiếu giao hàng
create table delivery_notes(
	id_delivery_note int primary key auto_increment,
    name_order varchar(50),
    unit varchar(50),
    quantity int,
    unit_price int,
    total_money int,
    id_shipper int,
    id_delivery_date int,
    foreign key(id_shipper) references shipper(id_shipper),
    foreign key(id_delivery_date) references shipment_details(id_address)
);


