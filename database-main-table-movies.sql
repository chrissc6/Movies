use master;
go
--after creating database once uncomment alter statement
alter database Movies set single_user with rollback immediate
go
drop database if exists Movies;
go
create database Movies;
go
use Movies;
go
--after this create your tables

create table Film (
ID int not null primary key identity(1,1),
Name nvarchar(30),
Genre nvarchar(30),
Released nvarchar(11),
Rating nvarchar(5),
RunTime nvarchar(10),
Budget int
);
go


insert into film
(Name,Genre,Released,Rating,RunTime,Budget)
values
('The Matrix','Action Sci-Fi','1999-03-31','R','2h 12min', 63000000)


insert into Film
(Name,Genre,Released,Rating,RunTime)
values
('TRON','Action Adventure Sci-Fi','1982-07-09','PG','1h 36min'),
('TRON Legacy','Action Adventure Fantasy','2010-12-17','PG','2h 5min'),
('Flatland 2','Animation Family Sci-Fi','2012-05-01','NONE','0h 36min'),
('Source Code','Sci-Fi Thriller','2011-04-01','PG-13','1h 33min'),
('Hackers','Comedy Crime Drama','1995-09-15','PG-13','1h 47min'),
('War Games','Sci-Fi Thriller','1983-06-03','PG','1h 54min'),
('The Social Network','Biography Drama','2010-10-01','PG-13','2h 0min'),
('The Imitation Game','Biography Drama Thriller','2014-12-25','PG-13','1h 54min'),
('Pirates of Silicon Valley','Biography Drama History','1999-06-20','NONE','1h 35min'),
('The Net','Action Crime Drama','1995-07-28','PG-13','1h 54min'),
('Primer','Drama Sci-Fi Thriller','2004-10-08','PG-13','1h 17min'),
('Office Space','Comedy','1999-02-19','R','1h 29min'),
('Ex Machina','Drama Mystery Sci-Fi','2015-04-24','R','1h 48min'),
('Snowden','Biography Drama Thriller','2016-09-16','R','2h 14min'),
('Algorithm','Crime Drama Thriller','2014-07-19','NONE','1h 31min'),
('Live Free or Die Hard','Action Adventure Thriller','2007-06-27','PG-13','2h 8min'),
('Jobs','Biography Drama','2013-08-16','PG-13','2h 8min'),
('Upgrade','Action Sci-Fi Thriller','2018-06-01','R','1h 40min'),
('Ready Player One','Action Adventure Sci-Fi','2018-03-29','PG-13','2h 20min'),
('Gamer','Action Sci-Fi Thriller','2009-09-04','R','1h 35min'),
('Transcendence','Drama Mystery Romance','2014-04-18','PG-13','1h 59min'),
('Lucy','Action Sci-Fi Thriller','2014-07-25','R','1h 29min'),
('The Internship','Comdey','2013-06-07','PG-13','1h 59min')
go




select * from Film
go


create table CastList(
Id int not null primary key identity(1,1),
FilmId int not null foreign key references Film(id),
Name nvarchar(30),
Director bit not null default 0,
Actor bit not null default 1,
Producer bit not null default 0,
Writer bit not null default 0
);
go

insert into castlist
(filmid, name)
values
(1, 'Keanu Reeves')
go



select * from castlist 
go