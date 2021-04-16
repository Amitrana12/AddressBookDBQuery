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
('Anil','Rana','Awas colony.','Rishikesh','UK',265356,'8979325425'),
('Sunil','Semwal','kali mandir.','Ruderperyag','UK',548512,'9876543210'),
('chaman','Dhiyani','puliya.','Devperyag','UK',546522,'8976543210'),
('Raman','Rawat','jhanda choak.','Kotdwar','UK',985151,'8755423025'),
('Saurabh','gupta',' ghantagher.','Dehradun','UK',26232,'7856235620'),
('Gaurabh','Rawat','kotewser.','Ruderperyag','UK',895154,'9875141545');
select * from AddressBook

--[UC4]

update AddressBook
set address = 'Awas vikas colony 487'
where first_name = 'Amit' AND last_name = 'Rana' ;

--[UC5]

delete from AddressBook
where first_name = 'Gaurabh' AND last_name = 'Butola';

--[UC6]

select * from AddressBook 
where city = 'Ruderperyag';
select * from AddressBook 
where state = 'UK';

--[UC7]

select city,COUNT(city) as total_count
from AddressBook 
group by city
select state,COUNT(state) as total_count
from AddressBook 
group by state

 --[UC8]

select * from AddressBook 
where city = 'Kotdwar'
order by first_name;


--[UC9]

Alter table Addressbook
ADD addressbook_name varchar(20) not null default 'AddressBook'; 

alter table Addressbook
add addresd_type varchar(20) not null default 'friends';

update Addressbook set state='UP' where city='Ruderperyag'

update Addressbook set addressbook_name='Addressbook1' where city='Rishikesh'
update Addressbook set addressbook_name='Addressbook2' where city='Ruderperyag'
update Addressbook set addressbook_name='Addressbook3' where city='Devperyag'
update Addressbook set addressbook_name='Addressbook4' where city='Kotdwar'
update Addressbook set addressbook_name='Addressbook5' where city='Dehradun'
select * from AddressBook
update Addressbook set addresd_type='family' where last_name='Rana'
update Addressbook set addresd_type='profession' where last_name='Rawat'

select first_name , last_name from Addressbook where addressbook_name='Addressbook5'
select * from AddressBook where addresd_type='family'


--[UC10]
select COUNT(addresd_type)as tootal_count from AddressBook where addresd_type='family'
select COUNT(addresd_type)as tootal_count from AddressBook where addresd_type='friends'
select COUNT(addresd_type)as tootal_count from AddressBook where addresd_type='profession'




