 --ovo je linija koja se neće izvesti
--create database edunovawp5;

--drop database edunovawp5;

--use edunovawp5;

--create table smjerovi(
--sifra int,
--naziv varchar(50),
--cijena decimal(18,2),
--brojsati int,
--izvodiseod datetime,
--vaucer bit
--);

--create table grupe(
--sifra int,
--naziv varchar(20),
--brojslobodnihmjesta int,
--datumpocetka datetime,
--smjer int,
--predavac varchar(50)
--);

--create table polaznici(
--sifra int,
--ime varchar(50),
--prezime varchar(50),
--email varchar(100),
--oib char(11)
--);

--create table clanovi(
--grupa int,
--polaznik int
--);

use master ;
go
drop database if exists edunovawp5 ;
go
create database edunovawp5 ;
go
use edunovawp5  ;

create table smjerovi (
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
cijena decimal(18,2) null, -- ali se null ne piše, podrazumjeva se
brojsati int,
izvodiseod datetime,
vaucer bit
);

create table grupe(
sifra int not null primary key identity(1,1),
naziv varchar(20) not null,
brojslobodnihmjesta int not null,
datumpocetka datetime,
smjer int not null,
predavac varchar(50)
);

create table polaznici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(100),
oib char(11)
);

create table clanovi(
grupa int not null,
polaznik int not null
);
alter table grupe add foreign key (smjer) references smjerovi(sifra);
alter table clanovi add foreign key (grupa) references grupe(sifra);
alter table clanovi add foreign key(polaznik) references polaznici(sifra);

alter table grupe add foreign key (smjer) references smjerovi(sifra);
alter table clanovi add foreign key (grupa) references grupe(sifra);
alter table clanovi add foreign key(polaznik) references polaznici(sifra);


--select * from smjerovi;

-- ŠKOLSKA SINTAKSA
-- 1 -> ovo je šifra koju generira baza
insert into smjerovi (naziv,cijena,brojsati,izvodiseod,vaucer)
values ('Web programiranje',1599.99,225,'2024-02-07 18:00',1);


-- LOŠA SINTAKSA
-- 2
insert into smjerovi values ('Web dizajn',1200,150,null,null);

-- MVP 
-- 3
insert into smjerovi (naziv) values ('ČŠĆĐŽ čšćđž');

--select * from grupe;
-- 1
insert into grupe(naziv,brojslobodnihmjesta,smjer)
values ('WP5',26,1);
-- 2
insert into grupe(naziv,brojslobodnihmjesta,smjer)
values ('WD1',16,2);


--select * from polaznici;
-- 1 - 30
insert into polaznici (prezime, ime,email) values
('Trdin','Marina','mana2411@gmail.com'),
('Trdin','Hrvoje','hthrvojetrdin@gmail.com'),
('Bičanić','Hrvoje','chola.bog@gmail.com'),
('Sladić','Nikola','mandicnikola29@gmail.com'),
('Cuca','Luka','lukacuca@gmail.com'),
('Pavlinušić','Ante','ante.pavlinusic@gmail.com'),
('Kuna','Renato','renatokuna01@gmail.com'),
('Banjac','Senka','sbanjac88@gmail.com'),
('Lamza','Marin Matthew','lamzamarin59@gmail.com'),
('Matković','Luka','lmatkovic00@gmail.com'),
('Kamenski','David','daviddavidenko275@gmail.com'),
('Matić','Petar','petarmatic00@gmail.com'),
('Antić','Srđan','antic.family@gmail.com'),
('Živković','Goran','goran.zivkovic1993@gmail.com'),
('Merunka','Marijana','merm2431@gmail.com'),
('Puljić Ilić','Dominik','1992pulja@gmail.com'),
('Prpić','Renato','renato.prpic.efos@gmail.com'),
('Gojtan','Oleg','oleg.gojtan@gmail.com'),
('Virovac','Marko','virovac81@gmail.com'),
('Lazarević','Ivana','ivanaslazarevic@gmail.com'),
('Kotal','Domagoj','kotal.domagoj1995@gmail.com'),
('Janković','Filip','filip.vno.jankovic@gmail.com'),
('Puljić Ilić','Hrvoje','hpuljic85@gmail.com'),
('Šužberić','Jakov','jakov.suzberic@gmail.com'),
('Kukučka','Ivan','ivan.kukucka194@gmail.com'),
('Maras','Valentino','valentinomaras@yahoo.com'),
('Rogić','Tomislav','tomislav.rogic@gmail.com'),
('Jeličić','Petar','petarjelicic95@gmail.com'),
('Varga','Danijela','danijelavarga.mail@gmail.com'),
('Boduljak','Sanja','matkosanja@gmail.com');
