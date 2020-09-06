--Müşteri Tablosu

create table Müşteri(

mid int not null,

ad varchar(40) not null,
soyad varchar(40) not null,
markaid int not null,
motorid int not null,
kasaid int not null,
renkid int not null,
şehirid int not null,
km int not null,
fiyat int not null,
ktarihi date not null,

primary key (mid)

);

insert into Müşteri(mid,ad,soyad,markaid,motorid,kasaid,renkid,şehirid,km,fiyat,ktarihi)
values(1,'Seda','DİLLİ',6,3,1,3,5,520,350,'2020-01-12'),
(2,'Oğuzhan','BEYAZ',13,5,4,1,2,780,350,'2020-02-01'),
(3,'Berkay','YOLCU',5,1,4,7,10,820,550,'2020-02-10'),
(4,'Emirhan','YILMAZ',24,6,8,3,12,320,650,'2020-01-12'),
(5,'Mete','DAŞKIN',34,7,1,2,5,520,450,'2020-02-15'),
(6,'Barış','KANDEMİR',27,4,1,3,5,550,250,'2020-02-16'),
(7,'Fatih','ORAN',28,3,1,3,5,650,750,'2020-02-20'),
(8,'Mustafa','KARAOĞLU',6,3,1,3,5,420,350,'2020-02-25'),
(9,'Yiğitcan','KARAGÖZ',2,4,1,3,1,520,750,'2020-02-28'),
(10,'Kadir','ALPARSLAN',12,2,1,3,20,220,650,'2020-03-02'),
(11,'Sevdanur','GENÇ',6,3,1,3,5,520,350,'2020-03-01'),
(12,'Kemal','EYÜPOĞLU',5,3,1,3,5,520,350,'2020-03-10'),
(13,'Hüseyin','İLGÜN',17,4,3,2,4,710,450,'2020-03-11'),
(14,'Emircan','TAYYAR',26,5,4,9,19,330,300,'2020-03-20'),
(15,'Ateş','KILIÇ',8,4,1,10,4,920,650,'2020-04-04'),
(16,'Sude','DİL',23,3,1,3,8,320,350,'2020-04-20'),
(17,'Sevgi','AĞ',32,1,2,1,14,590,200,'2020-04-25'),
(18,'Ali','GÜNDAĞ',6,3,2,4,10,720,350,'2020-05-03'),
(19,'Beril','DEMİR',16,3,1,3,5,450,550,'2020-05-11'),
(20,'Nurhan','DEMİR',1,4,1,2,5,420,350,'2020-05-29'),
(21,'Oğuzhan','GÜÇLÜ',2,4,1,2,5,420,350,'2020-05-29'),
(22,'Yasin','İZBUDAK',3,4,1,2,5,420,350,'2020-05-29'),
(23,'Yasin','YASA',4,4,1,2,5,420,350,'2020-05-29'),
(24,'Uğur','BEYAZ',5,4,1,2,5,420,350,'2020-05-29'),
(25,'Ramazan','BEYAZ',6,4,1,2,5,420,350,'2020-05-29'),
(27,'Fatma','BEYAZ',1,4,1,2,5,420,350,'2020-05-29'),
(28,'Emirkan','KÖSE',5,4,1,2,5,420,350,'2020-05-29'),
(29,'Uğur','YILMAZ',6,4,1,2,5,420,350,'2020-05-29'),
(30,'Akın','DEMİR',1,4,1,2,5,420,350,'2020-05-29');

-- 10 Adet silme güncelleme 

delete from Müşteri
where mid = 21;

delete from Müşteri
where mid = 22;

delete from Müşteri
where mid = 23;

delete from Müşteri
where mid = 24;

delete from Müşteri
where mid = 25;

delete from Müşteri
where mid = 26;

delete from Müşteri
where mid = 27;

delete from Müşteri
where mid = 28;

delete from Müşteri
where mid = 29;

delete from Müşteri
where mid = 30;

-- 10 Adet veri güncelleme

update Müşteri
set ktarihi = '2020-03-11'
where mid = 11;

update Müşteri
set ktarihi = '2020-03-20'
where mid = 12;

update Müşteri
set ktarihi = '2020-04-04'
where mid = 13;

update Müşteri
set ktarihi = '2020-04-20'
where mid = 14;

update Müşteri
set ktarihi = '2020-04-25'
where mid = 15;

update Müşteri
set ktarihi = '2020-05-01'
where mid = 16;

update Müşteri
set ktarihi = '2020-05-11'
where mid = 17;

update Müşteri
set ktarihi = '2020-05-21'
where mid = 18;

update Müşteri
set ktarihi = '2020-05-29'
where mid = 19;

update Müşteri
set ktarihi = '2020-06-05'
where mid = 20;

-- 5 Adet matematik işlem

select avg(markaid) from Müşteri;
select sum(km) from Müşteri;
select max(fiyat) from Müşteri;
select min(fiyat) from Müşteri;
select count(*) as "Toplam Müşteri" from Müşteri;

select * from Müşteri

--Marka Tablosu

create table Marka(

markaid int not null,
Marka varchar(40) not null,
modelid int not null,

primary key (markaid)

);

insert into Marka(markaid,Marka,modelid)
values(6,'TOFAŞ',6),
(1,'TOFAŞ',1),
(4,'BMW',4),
(5,'BM',5),
(13,'TOFAŞ',13),
(16,'TOYYOTA',16),
(17,'TOFAŞ',17),
(19,'TOYYOTA',19),
(24,'MAZDA',24),
(27,'FORD',27),
(28,'FORD',28),
(29,'TOFAŞ',29),
(33,'FİAT',33),
(34,'FİAT',34),
(35,'FİAT',35),
(21,'TOFAŞ',21),
(23,'RENAULT',23),
(26,'TOFAŞ',26),
(32,'AUDİ',32),
(12,'TOFAŞ',12),
(8,'TOFAŞ',8),
(31,'BUGATTİ',31),
(2,'TOFAŞ',2),
(50,'BUGATTİ',50),
(51,'BUGATTİ',51),
(52,'BUGATTİ',52),
(53,'BMW',53),
(54,'BMW',54),
(55,'TOFAŞ',55),
(56,'TOFAŞ',56),
(57,'TOFAŞ',57),
(58,'FERRARİ',58),
(59,'FERRARİ',59);


-- 10 Adet silme güncelleme 

delete from Marka
where markaid = 50;

delete from Marka
where markaid = 51;

delete from Marka
where markaid = 52;

delete from Marka
where markaid = 53;

delete from Marka
where markaid = 54;

delete from Marka
where markaid = 55;

delete from Marka
where markaid = 56;

delete from Marka
where markaid = 57;

delete from Marka
where markaid = 58;

delete from Marka
where markaid = 59;

-- 10 Adet veri güncelleme

update Marka
set Marka = 'AUDİ'
where markaid = 26;

update Marka
set Marka = 'RENAULT'
where markaid = 21;

update Marka
set Marka = 'AUDİ'
where markaid = 12;

update Marka
set Marka = 'BUGATTİ'
where markaid = 2;

update Marka
set Marka = 'BMW'
where markaid = 1;

update Marka
set Marka = 'BMW'
where markaid = 6;

update Marka
set Marka = 'FORD'
where markaid = 29;

update Marka
set Marka = 'NİSSAN'
where markaid = 13;

update Marka
set Marka = 'TOYYOTA'
where markaid = 17;

update Marka
set Marka = 'BUGATTİ'
where markaid = 8;

-- 5 Adet matematik işlem

select avg(markaid) from Marka;
select sum(markaid) from Marka;
select max(markaid) from Marka;
select min(markaid) from Marka;
select count(*) as "Toplam Kayıt Sayısı" from Marka;

select * from Marka

--Model Tablosu

create table Model(

modelid int not null,
Model varchar(40) not null,


primary key (modelid)

);

insert into Model(modelid,Model)
values(13,'QASHQAİ'),
(16,'COROLLA'),
(17,'YARİS'),
(19,'AVURİS'),
(24,'323'),
(27,'ESCORT'),
(28,'CORNET'),
(29,'TORNEA'),
(33,'ŞAHİN'),
(34,'LİNEA'),
(35,'SERÇE'),
(21,'SEMBOL'),
(8,'KARTAL'),
(31,'SPORT'),
(2,'HEADQUARTES'),
(26,'KARTAL'),
(32,'KARTAL'),
(12,'SERÇE'),
(6,'SERÇE'),
(1,'DOĞAN'),
(5,'DOĞAN'),
(4,'ŞAHİN'),
(23,'SEMBOL'),
(50,'Y1'),
(51,'Y2'),
(52,'Y3'),
(53,'Y4'),
(54,'Y5'),
(55,'Y6'),
(56,'Y7'),
(57,'Y8'),
(58,'Y9'),
(59,'Y10');


-- 10 Adet silme güncelleme 

delete from Model
where modelid = 50;

delete from Model
where modelid = 51;

delete from Model
where modelid = 52;

delete from Model
where modelid = 53;

delete from Model
where modelid = 54;

delete from Model
where modelid = 55;

delete from Model
where modelid = 56;

delete from Model
where modelid = 57;

delete from Model
where modelid = 58;

delete from Model
where modelid = 59;

-- 10 Adet veri güncelleme

update Model
set Model = 'A2'
where modelid = 26;

update Model
set Model = 'A6'
where modelid = 32;

update Model
set Model = 'A8'
where modelid = 12;

update Model
set Model = 'İ5'
where modelid = 1;

update Model
set Model = 'İ7'
where modelid = 5;

update Model
set Model = 'İ9'
where modelid = 4;

update Model
set Model = 'FORD'
where modelid = 29;

update Model
set Model = 'CARS'
where modelid = 8;

update Model
set Model = 'EGEA'
where modelid = 33;

update Model
set Model = 'TİPO'
where modelid = 35;

-- 5 Adet matematik işlem

select avg(modelid) from Model;
select sum(modelid) from Model;
select max(modelid) from Model;
select min(modelid) from Model;
select count(*) as "Sayıların Toplamı" from Model;

select * from Model

--Motor Tablosu

create table Motor(

motorid int not null,
motor varchar(40) not null,


primary key (motorid)

);

insert into Motor(motorid,motor)
values(1,'O.1'),
(2,'O.2'),
(3,'O.3'),
(4,'O.5'),
(5,'O.6'),
(6,'O.7'),
(7,'1.8'),
(8,'1.9'),
(9,'2.0'),
(10,'2.1'),
(11,'X.11'),
(12,'X.12'),
(13,'X.13'),
(14,'B.8'),
(15,'B.10'),
(16,'B.14'),
(17,'G.1'),
(18,'C.2'),
(19,'C.3'),
(20,'C.4'),
(21,'İ.1'),
(22,'İ.2'),
(23,'İ.3'),
(24,'İ.4'),
(25,'İ.5'),
(26,'İ.6'),
(27,'İ.7'),
(28,'İ.8'),
(29,'İ.9'),
(30,'F.1');


-- 10 Adet silme güncelleme 

delete from motor
where motorid = 21;

delete from motor
where motorid = 22;

delete from motor
where motorid = 23;

delete from motor
where motorid = 24;

delete from motor
where motorid = 25;

delete from motor
where motorid = 26;

delete from motor
where motorid = 27;

delete from motor
where motorid = 28;

delete from motor
where motorid = 29;

delete from motor
where motorid = 30;

-- 10 Adet veri güncelleme

update Motor
set motor = '1.2'
where motorid = 1;

update Motor
set motor = '1.3'
where motorid = 2;

update Motor
set motor = '1.4'
where motorid = 3;

update Motor
set motor = '1.5'
where motorid = 4;

update Motor
set motor = '1.6'
where motorid = 5;

update Motor
set motor = '1.7'
where motorid = 6;

update Motor
set motor = 'V.11'
where motorid = 11;

update Motor
set motor = 'V.12'
where motorid = 12;

update Motor
set motor = 'V.13'
where motorid = 13;

update Motor
set motor = 'C.1'
where motorid = 17;



-- 5 Adet matematik işlem

select avg(motorid) from Motor;
select sum(motorid) from Motor;
select max(motorid) from Motor;
select min(motorid) from Motor;
select count(*) as "Toplam" from Motor;

select * from Motor

--Kasa Tablosu

create table Kasa(

kasaid int not null,
kasa varchar(40) not null,


primary key (kasaid)

);

insert into Kasa(kasaid,kasa)
values(1,'Sedan'),
(2,'Hatchback'),
(3,'Station wagon'),
(4,'Cabrio'),
(5,'Pick up'),
(6,'SUV');



-- 5 Adet matematik işlem

select avg(kasaid) from kasa;
select sum(kasaid) from kasa;
select max(kasaid) from kasa;
select min(kasaid) from kasa;
select count(*) as "Toplam Kasa Tipi" kasa;

select * from kasa

--Renk Tablosu

create table Renk(

renkid int not null,
renk varchar(40) not null,


primary key (renkid)

);

insert into Renk(renkid,renk)
values(1,'Kızl'),
(2,'Kızıl'),
(3,'Kırmızı'),
(4,'Gri'),
(5,'Füme'),
(6,'Mavi'),
(7,'Lacivert'),
(8,'Turkuaz'),
(9,'Turuncu'),
(10,'Kızıl'),
(11,'Kızıl'),
(12,'Kızıl'),
(13,'Bordo'),
(14,'Kızıl'),
(15,'Kahverengi'),
(16,'Kızıl'),
(17,'Kızıl'),
(18,'Kızıl'),
(19,'Kızıl'),
(20,'Kestane K.'),
(21,'Kestane'),
(22,'Kestane'),
(23,'Kestane'),
(24,'Kestane'),
(25,'Kestane'),
(26,'Kestane'),
(27,'Kestane'),
(28,'Kestane'),
(29,'Kestane'),
(30,'Kestane');

-- 10 Adet silme güncelleme 

delete from renk
where renkid = 21;

delete from renk
where renkid = 22;

delete from renk
where renkid = 23;

delete from renk
where renkid = 24;

delete from renk
where renkid = 25;

delete from renk
where renkid = 26;

delete from renk
where renkid = 27;

delete from renk
where renkid = 28;

delete from renk
where renkid = 29;

delete from renk
where renkid = 30;

-- 10 Adet veri güncelleme

update Renk
set renk = 'Siyah'
where renkid = 1;

update Renk
set renk = 'Beyaz'
where renkid = 2;

update Renk
set renk = 'Mor'
where renkid = 10;

update Renk
set renk = 'Yeşil'
where renkid = 11;

update Renk
set renk = 'Bej'
where renkid = 12;

update Renk
set renk = 'Sarı'
where renkid = 14;

update Renk
set renk = 'G. Mavisi'
where renkid = 16;

update Renk
set renk = 'O. Yeşili'
where renkid = 17;

update Renk
set renk = 'Vişne'
where renkid = 18;

update Renk
set renk = 'Pembe'
where renkid = 19;




-- 5 Adet matematik işlem

select avg(renkid) from renk;
select sum(renkid) from renk;
select max(renkid) from renk;
select min(renkid) from renk;
select count(*) as "Toplam Sayı" from renk;

select * from renk

-- Kasa çeşitleri altıdan fazla olmadığı için yirmi veri girişi, sil ve güncelle yapamadım.

--Şehir Tablosu

create table Sehir(

sehirid int not null,
sehir varchar(40) not null,


primary key (sehirid)

);

insert into Sehir(sehirid,sehir)
values(1,'Kastamonu'),
(2,'Bilecik'),
(3,'İstanbul'),
(4,'İzmir'),
(5,'Ankara'),
(6,'Adana'),
(7,'Bursa'),
(8,'Sakarya'),
(9,'Zonguldak'),
(10,'Kocaeli'),
(11,'Muş'),
(12,'Çanakkale'),
(13,'Trabzon'),
(14,'Rize'),
(15,'Sinop'),
(16,'Bartın'),
(17,'Çankırı'),
(18,'Tekirdağ'),
(19,'Ordu'),
(20,'Artvin'),
(21,'Tunceli'),
(22,'Hakkari'),
(23,'K. Maraş'),
(24,'Ş. Urfa'),
(25,'Şırnak'),
(26,'Kilis'),
(27,'Mersin'),
(28,'Iğdır'),
(29,'Ağrı'),
(30,'Edirne');

-- 10 Adet silme güncelleme 

delete from Sehir
where sehirid = 21;

delete from Sehir
where sehirid = 22;

delete from Sehir
where sehirid = 23;

delete from Sehir
where sehirid = 24;

delete from Sehir
where sehirid = 25;

delete from Sehir
where sehirid = 26;

delete from Sehir
where sehirid = 27;

delete from Sehir
where sehirid = 28;

delete from Sehir
where sehirid = 29;

delete from Sehir
where sehirid = 30;

-- 10 Adet veri güncelleme

update Sehir
set sehir = 'Erzurum'
where sehirid = 11;

update Sehir
set sehir = 'Erzincan'
where sehirid = 12;

update Sehir
set sehir = 'Kırıkkale'
where sehirid = 13;

update Sehir
set sehir = 'Uşak'
where sehirid = 14;

update Sehir
set sehir = 'Bitlis'
where sehirid = 15;

update Sehir
set sehir = 'Mardin'
where sehirid = 16;

update Sehir
set sehir = 'Kırklareli'
where sehirid = 17;

update Sehir
set sehir = 'Hatay'
where sehirid = 18;

update Sehir
set sehir = 'Afyonkarahisar'
where sehirid = 19;

update Sehir
set sehir = 'Denizli'
where sehirid = 20;

-- 5 Adet matematik işlem

select avg(sehirid) from Sehir;
select sum(sehirid) from Sehir;
select max(sehirid) from Sehir;
select min(sehirid) from Sehir;
select count(*) as "Toplam Sayı" from Sehir;

select * from Sehir



--Full Join
select ad, soyad, marka,model,motor,kasa,renk,Sehir,km,fiyat,ktarihi from Müşteri
full join marka on müşteri.markaid = marka.markaid
full join model on marka.markaid = model.modelid
full join motor on motor.motorid = müşteri.motorid
full join kasa on kasa.kasaid = müşteri.kasaid
full join renk on renk.renkid = müşteri.renkid
full join Sehir on Sehir.sehirid = müşteri.sehirid

--Inner Join
select ad, soyad, marka,model,motor,kasa,renk,Sehir,km,fiyat,ktarihi from Müşteri
inner join marka on müşteri.markaid = marka.markaid
inner join model on marka.markaid = model.modelid
inner join motor on motor.motorid = müşteri.motorid
inner join kasa on kasa.kasaid = müşteri.kasaid
inner join renk on renk.renkid = müşteri.renkid
inner join Sehir on Sehir.sehirid = müşteri.sehirid

--Right Join
select ad, soyad, marka,model,motor,kasa,renk,Sehir,km,fiyat,ktarihi from Müşteri
right join marka on müşteri.markaid = marka.markaid
right join model on marka.markaid = model.modelid
right join motor on motor.motorid = müşteri.motorid
right join kasa on kasa.kasaid = müşteri.kasaid
right join renk on renk.renkid = müşteri.renkid
right join Sehir on Sehir.sehirid = müşteri.sehirid