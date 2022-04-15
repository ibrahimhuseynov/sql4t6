create database Sqltask
use Sqltask
create table chatagory
(
Id int  identity primary key,
name nvarchar not null
)
create table Procuts
(
id int identity primary key,
name nvarchar not null,
Price decimal,
ChatagiorId int foreign key references chatagory(id),
DiscountAmont decimal,
isnew bit ,
Count int ,
Deck nvarchar(1500),
code nvarchar(10),
CostPrice decimal,
)
create table Praductmage
(
id int identity primary key,
praductId int foreign key references Procuts(id),
image nvarchar not null
)
create table addIttionallInfotypes
(
id int identity primary key,
name nvarchar not null
)
create table addittionalinfo
(
id int identity primary key,
PraductId int foreign key references Procuts(id),
addIttionallInfotypesId int foreign key references addIttionallInfotypes(id),
valus nvarchar not null 
)
create table Users
(
id int identity primary key,
FullName nvarchar(30),
email nvarchar,
image nvarchar,
pasportpash nvarchar,
adress nvarchar
)
create table Orders
(
id int identity primary key,
userId int foreign key references Users(id),
createat datetime2,
status int,
paymentstatus int,
Totalamount decimal,
Adres nvarchar not null,
email nvarchar not null,
Fullname nvarchar not null
)
create table orderItem
(
id int identity primary key,
PraductId int foreign key references Procuts(id),
Orderid int foreign key references Orders(id),
Count int,
prices decimal ,
dicountAmount decimal,
Costprice decimal
)
create table Revlews
(
id int  identity primary key,
PruductId int foreign key references Procuts(id),
userId int foreign key references Users(id),
name nvarchar not null,
email nvarchar not null,
text nvarchar not null,
createat datetime2
)
create table tags
(
id int identity primary key ,
name nvarchar
)
create table Producttags
(
id int identity primary key,
productId int foreign key references Procuts(id),
TagsId int foreign key references tags(id)
)
create table Sliders
(
id int identity primary key,
title nvarchar not null,
text nvarchar not null,
image nvarchar not null, 
Orders int
)
select*from Procuts
select*from Orders
join orderItem on Orders.id=orderItem.id
select*from (Order.userid=user.id)=0
create view cataqoriya
(
select users.id,users.name,users.email,orders.Totalamount from users
 inner join users on users.id=id
  inner join users on users.name=name
   inner join users on users.email=email
   inner join orders on users.totalcounId=avg(Totalamount)
)

