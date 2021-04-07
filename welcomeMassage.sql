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

--[UC3]

insert into AddressBook values
('Amit','Rana','Awas vikas colony.','Rishikesh','UK',265356,'8979325434'),
('Sumit','Semwal','kali mandir.','Ruderperyag','UK',548512,'9876543210'),
('Naman','Dhiyani','puliya.','Devperyag','UK',546522,'8976543210'),
('Aman','Rawat','jhanda choak.','Kotdwar','UK',985151,'8755423025'),
('Saurabh','Sajwan',' ghantagher.','Dehradun','UK',26232,'7856235620'),
('Gaurabh','Butola','kotewser.','Ruderperyag','UK',895154,'9875141545');
select * from AddressBook

--[UC4]

update AddressBook
set address = 'Awas vikas colony 487'
where first_name = 'Amit' AND last_name = 'Rana' ;

--[UC5]

delete from AddressBook
where first_name = 'Gaurabh' AND last_name = 'Butola';

