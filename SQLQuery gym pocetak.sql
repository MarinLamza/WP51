use master;
go
drop database if exists gym; 
go
create database gym collate Croatian_CI_AS;
go
use gym;


create table korisnici(
id int not null primary key identity (1,1),
ime varchar (50) not null,
prezime varchar (50) not null,
brojtelefona int not null,
adresa varchar (50),
grupa varchar (50) not null
) ;

create table grupe(
id int not null primary key identity (1,1),
nazivgrupe varchar (50) not null,
imezaposlenika varchar (50),
prezimezaposlenika varchar (50),
brojslmjesta int not null,
vrijemetreninga datetime not null,
brojtelvoditeljagrupe  varchar(20) 
)
;
 
create table zaposlenici (
id int not null primary key identity (1,1),
ime varchar (50),
prezime varchar (50),
grupa varchar (50) not null,
brojtelzaposlenika varchar (20) not null
)
;

alter table korisnici add foreign key (id) references grupe (id);
alter table grupe add foreign key (id) references zaposlenici (id);
alter table zaposlenici add foreign key (id) references grupe (id);
