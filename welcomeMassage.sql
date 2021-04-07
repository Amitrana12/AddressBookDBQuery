--Welcome to my address book DB by Amit rana.......
--[UC1]

create database AddressBookServiceDB
use AddressBookServiceDB
--[UC2]
create table AddressBook
(
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    address varchar(50) not null,
    city varchar(20),
    state varchar(20),
    zip int,
    phone_number varchar(10) not null
);

