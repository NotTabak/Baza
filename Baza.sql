-- create database sklep_internetowy;      
-- use sklep_internetowy;
--   create table Customers (
-- Cst_ID int primary key,
-- Cst_Name varchar(50),
--  Cst_Adress varchar(50),
--  Cst_Age int,
--  Cst_Phone_Number int,
--  Cst_Email varchar(100)
--  );
-- create table Employes (
-- Emp_ID int primary key,
-- Emp_Name varchar(50),
-- Emp_Adress varchar(50),
-- Emp_Age int,
-- Emp_Phone_Number int,
-- Emp_Email_Adress varchar(100)
--  );
-- create table Transactions (
-- Trd_Net_Sales int,
-- Trd_Net_Gross int,
-- Trd_Tax int,
-- Trd_Created_at datetime default (current_date ()),
-- Trd_Status varchar(50),
-- Trd_Store varchar(100),
-- Trd_Receipt_ID int,
-- Trd_ID int not null auto_increment,
--  primary key (Trd_ID)
--  );
--  
-- create table Transaction_Details (
-- Tdt_ID int not null auto_increment,
-- Tdt_Trn_ID int not null,
-- Tdt_Prd_ID varchar (100),
-- Tdt_ProductType varchar(100),
-- Tdt_Shipment_SKU varchar(100),
-- Tdt_Created_at datetime default (current_date ()),
-- Tdt_Updated_at datetime,
-- Tdt_Store varchar(100),
-- Tdt_Value float,
-- Tdt_Qty_ordered int,
-- Tdt_Qty_sent int,
-- primary key (Tdt_ID)
-- );





-- alter table Transaction_Details
-- add foreign key (Tdt_trn_ID) references Transactions(Trd_ID);
-- create table Stores(
-- Str_Name varchar(100),
-- Str_ID int not null,
-- Str_status varchar(100),
-- Str_Created_at datetime default (current_date()),
-- Str_Updated_at datetime,
-- Str_Code varchar(100),
-- Str_Adress varchar(100),
-- Str_Square int,
-- primary key (Str_ID)
-- );
-- alter table Transactions
-- add foreign key (Trd_ID) references Customers(Customer_ID);
-- alter table Transactions add column trd_str_id int;
-- alter table Transactions
-- add foreign key (trd_str_id) references Stores(str_id);
-- insert into Stores (Str_Name, Str_ID, Str_status, Str_Code, Str_Adress, Str_Square)
-- values ('Galeria Kazimierz', 1, 'Active', 'PL0001', 'Podgórska 34',200),
-- ('Galeria Krakowska',2,'Active','PL0002','Pawia 5',250),
-- ('Bonarka',3,'Inactive','PL0003','Kamieńskiego 11',200)
-- ;Str_Name
-- insert into Transactions (Trd_Net_Sales,Trd_Net_Gross,Trd_Tax,Trd_Status,Trd_Store,Trd_Receipt_ID,Trd_ID)
-- values 
-- (200,246,46,'Completed','Galeria Kazimierz',1,1),
-- (300,369,69,'Completed','Galeria Krakowska',1,2),
-- (500,615,115,'Canceled','Galeria Krakowska',2,3),
-- (350,430.5,80.5,'Completed','Galeria Kazimierz',2,4)
-- ;
-- insert into Transactions (Trd_Net_Sales,Trd_Net_Gross,Trd_Tax,Trd_Status,Trd_Str_id,Trd_Receipt_ID,Trd_ID)
-- values  (300,369,69,'Completed',2,1,2),
-- (500,615,115,'Canceled',2,2,3),
-- (350,430.5,80.5,'Completed',1,2,4)
-- commit;
-- rollback;
-- select * from Transactions;


-- insert into Transaction_Details (Tdt_ID,Tdt_Trn_ID,Tdt_Prd_ID,Tdt_ProductType,Tdt_Shipment_SKU,Tdt_Store,Tdt_Value,Tdt_Qty_ordered,Tdt_Qty_sent)
-- values 
-- (1,1,1,'Bluza','SS23-1S_XL',1,246,1,1);

-- insert into Transaction_Details (Tdt_ID,Tdt_Trn_ID,Tdt_Prd_ID,Tdt_ProductType,Tdt_Shipment_SKU,Tdt_Store,Tdt_Value,Tdt_Qty_ordered,Tdt_Qty_sent)
-- values 
-- (2,2,2,'koszulka','SS23JR-10S-XL',2,369,2,2),
-- (3,3,3,'Kurtka Zimowa','SS23RJ-10S-L',615,3, 1,0);

-- insert into Customers (Cst_ID,Cst_Name,Cst_Adress,Cst_Age,Cst_Phone_Number,Cst_Email)
-- values (1,'Mariusz Baran','Polna 3 Michałowice',47,345234232,'Baran@Onet.pl'),
-- (2,'Marianna Nowak','Zakrzowiecka 6 Kraków',40,898000123,'NowakM@gmail.com'),
-- (3,'Karolina Majster','Kwiatowa 5 Wieliczka',24,454321734,'KaroMajster@gmail.com'),
-- (4,'Kinga Bomba','Grzegórzki 9 Kraków',18,456456965,'KiniaBUM@gmail.com');

-- insert into Employes (Emp_ID,Emp_Name,Emp_Adress,Emp_Age,Emp_Phone_Number,Emp_Email_Adress)
-- values (1,'Piotr Biwok','Ofiar Dąbia 6',40,989076904,'Biwok@Onet.pl'),
-- (2,'Klara Budzińska','Czerwone Maki 15',27,678672534,'Budzińska10@gmail.com'),
-- (3,'Barbara Gil', 'Prądnik Czerwony 4',25,643823016,'BasiaGil@gmail.com');
-- select * from Transaction_Details where Tdt_trn_ID=1;
-- create table Users (
-- Usr_ID int not null primary key,
-- Usr_Email varchar(100),
-- Usr_Status varchar(50),
-- Usr_Created_at datetime default (current_date()),
-- Usr_Updated_at datetime,
-- Usr_Pass varchar(50),
-- Usr_FristName varchar(50),
-- Usr_LastName varchar(50)
-- );
-- create view Trn_ID as
-- select Tdt_trn_ID,Trd_ID
-- from Transactions,Transaction_Details;
-- insert into users(Usr_ID,Usr_Email,Usr_Status,Usr_Pass,Usr_FristName,Usr_LastName)
-- value (1,'czarkowski@gmail.com','Active','Czekolada','Dariusz','Czarkowski');

-- create table Products ( 
-- Prd_ID int not null primary key auto_increment,
-- Prd_Model varchar(100),
-- Prd_Color varchar(50),
-- Prd_Size varchar(50),
-- Prd_Description varchar(100),
-- Prd_Created_at datetime default (current_date()),
-- Prd_Updated_at datetime,
-- Prd_Unit varchar (50)
-- );
-- alter table Transaction_Details
-- add foreign key (Tdt_Prd_ID) references Products(Prd_ID);

-- insert into Products (Prd_Model,Prd_Color,Prd_Size,Prd_Description,Prd_Unit)
-- values ('SS23','1S','XL','Bluza','Szt'),
-- ('SS23JR','10S','XL','Koszulka JR','Szt'),
-- ('SS23RJ','10S','L','Kurtka Zimowa','Szt');

-- select * from Transaction_Details;
-- update Transaction_Details 
-- set Tdt_Prd_ID = 3
-- where Tdt_ID = 3



-- create or replace view  view_Transactions as
-- select t.Trd_Receipt_ID,
-- t.Trd_Created_at,
-- t.Trd_Status,
-- t.trd_str_id, 
-- td.Tdt_ProductType,
-- td.Tdt_Value,
-- td.Tdt_SKU,
-- p.Prd_Description,
-- td.Tdt_Qty_ordered,
-- td.Tdt_Qty_sent,
-- s.Str_Name,
-- s.Str_status,
-- s.Str_code,
-- s.Str_Adress,
-- s.Str_Square
-- from Transactions t
-- join Transaction_Details td on td.Tdt_Trn_ID = t.Trd_ID 
-- join Products p on td.Tdt_Prd_ID = p.Prd_ID
-- join Stores s on s.Str_ID = t.trd_str_id;
-- select * from Customers
-- select * from Customers;
-- insert into Customers (Cst_ID,Cst_Name,Cst_Adress,Cst_Age,Cst_Phone_Number,Cst_Email)
-- values 
-- (5,'Mariusz Kozioł','Polna 14 Kraków',47,325004232,'koziol@Onet.pl');

-- (6,'Anna Nowakowska','Zakrzowiecka 6 Kraków',40,891109823,'Nowakowska@gmail.com'),
-- (7,'Maria Gertu','Kwiatowa 50 Tenczynek',24,443210034,'mariagertu@gmail.com'),
-- (8,'Ewelina Moda','Grzegórzki 15 Kraków',18,456009651,'moda@gmail.com'),
-- (9,'Adam Więckowski', 'Akacjowa 5 Kraków',23,897098372,'wieckowski@gmail.com'),
-- (10,'Oliwia Dziuba','Gertrudy 32/45 Kraków',34,647843927,'dziuba@Onet.pl');
-- (11,'Dariusz Malinowski','Ofiar Dąbia 23/2 Kraków',54,782645199,'malinowskidarek@gmail.com'),
-- (12,'Jakub Jakubiak','Legionów 23 Kryspinów',26,900823652,'jjakubiak@gmail.com'),
-- (13,'Paulina Banaszek','Czarna 15 Wieliczka',21,200105672,'pbanaszek@gmail.com'),
-- (14,'Iwona Cieślak','Prądnik Czerwony 12 Kraków',53,563987100,'cieslakiwona@gmail.com'),
-- (15,'Andrzej Szostak','Pychowicka 11 Kraków',45,700172838,'szostaka@gmail.com'),
-- (16,'Ewelina Miśkiewicz', 'Czarnowiejska 56 Kraków',39,500212051,'miskiewiczowa@gmail.com');
-- (17,'Adrian Burda','Matejki 45 Kraków',42,404102764,'burda@gmail.com'),
-- (18,'Adrianna Bednarczyk','Podzamcze 7 Tenczynek',38,302788902,'bedadrianna@gmail.com'),
-- (19,'Julia Jurek','Jurajska 15 Krzeszowice',43,454932711,'jurek@Onet.pl'),
-- (20,'Marcin Żurawski','Rajska 109 Pawlikowice',19,607291982,'zurawski@gmail.com'),
-- (21,'Michał Gwóźdź','Saska 67 Kraków',24,782166090,'gwozdz.michal@gmail.com'),
-- (22,'Jakub Kopeć', 'Jagodowa 11 Węgrzce',54,862091001,'kopec@gmail.com'),
-- (23,'Mateusz Wilczyński','Jaśminowa 8 Węgrzce',23,801210563,'wilczynski@gmail.com'),
-- (24,'Janusz Skrzypek', 'Targowa 104 Zielonki',48,908700121,'skrzypek@gmail.com'),
-- (25,'Michał Bąk', 'Ugorek 77 Kraków',22,700162834,'bakmichal@gmail.com'),
-- (26,'Daria Szeląg','Powstańców 303 Kraków',24,402105791,'szelagdaria@gmail.com'),
-- (27,'Patryk Klimczak','Malinowa 17 Morawica',36,562892092,'klimczak@gmail.com'),
-- (28,'Dominik Wilczek', 'Watykańska 12 Kraków',21,232001902,'wilczek@gmail.com'),
-- (29,'Miłosz Iwanowski','Pijarska 28 Kraków',60,090241083,'iwanowski@gmail.com'),
-- (30,'Gabriela Mikołajczak','Torfowa 25 Choleżyn',32,576090020,'mikolajczak@gmail.com'),
-- (31,'Jakub Błaszczyk','Błotna 23 Kryspinów',24,020425981,'blaszczyk@gmail.com'),
-- (32,'Andrzej Falkowski','Rajska 12 Morawica',24,908976010,'falkowski@gmail.com'),
-- (33,'Maciej Turski','Grodzka 60 Kraków',61,243509103,'turski@gmail.com'),
-- (34,'Martna Banasiak','Algierska 15 Kraków',32,606340717,'banasiak@gmail.com'),
-- (35,'Piotr Cybulski','3 Maja Kraków',27,007943025,'cybulski@gmail.com'),
-- (36,'Krystian Rojek','Akacjowa 3 Kraków',31,890721616,'rojek@gmail.com'),
-- (37,'Adrian Florczak','Andersa 19 Kraków',39,333723018,'florczak@gmail.com'),
-- (38,'Klaudia Banaszek','Armii Krajowej 3 Kraków',21,888727192,'banaszek@gmail.com'),
-- (39,'Natalia Miller','Bagrowa 2 Kraków',19,254019826,'miller@gmail.com'),
-- (40,'Antonii Drozdowski','Babiego Lata 111 Kraków',27,701932629,'drozdowski@gmail.com'),
-- (41,'Basia Maziarz','Babiczna 83 Kraków',20,732298771,'maziarz@gmail.com'),
-- (42,'Artur Myśliwiec','Basztowa 17 Kraków',31,662523444,'mysliwiec@gmail.com'),
-- (43,'Bartek Mikulski','Bastionowa 11 Kraków',45,872621100,'mikulski@gmail.com'),
-- (44,'Filip Domański','Bazarowa 10 Kraków',23,736000901,'domanski@gmail.com'),
-- (45,'Adrian Staniszewski','Bora Komorowskiego 11 Kraków',25,872682901,'staniszewski@gmail.com'),
-- (46,'Władysław Szczepanik','Borkowska 1 Kraków',27,950940191,'szczepanik@gmail.com'),
-- (47,'Paulina Michałek','Borsucza 13, Kraków',28,200119070,'michalek@gmail.com'),
-- (48,'Maria Dziedzic','Bór 17 Kraków',18,017276182,'dziecic@gmail.com'),
-- (49,'Damian Maliszewski','Brogi 15 Kraków',23,707291888,'maliszewski@gmail.com'),
-- (50,'Wojtek Flis','Loretańska 12 Kraków',28,876091637,'flis@gmail.com'),
-- (51,'Mariusz Bojanowski','Bronowicka 10 Kraków',28,091011872,'bojanowski@gmail.com'),
-- (52,'Artur Wnuk','Brogi 1 Kraków',39,354116212,'wnuk@gmail.com'),
-- (53,'Antonina Witek','Chłodna 11 Kraków',37,654829019,'witek@gmail.com');
--  -- (54,'Tomasz Baran','Bratysławska 17 Kraków',49,102934726,'baran15@gmail.com'),
-- (55,'Wacław Marcinkowski','Chlebowa 21 Kraków',62,790929102,'marcinkowski@gmail.com'),
-- (56,'Kamil Popławski','Cystersów 13 Kraków',23,330291627,'poplawski@gmail.com'),
-- (57,'Krystian Kaźmierski','Dajwór 15 Kraków',43,678201221,'kazmierski@gmail.com'),
-- (58,'Jakub Mazur','Dauna 7 Kraków',27,726301992,'mazur@gmail.com'),
-- (59,'Marcin Malinowski','Dekerta 3 Kraków',34,827017220,'malinowski@gmail.com'),
-- (60,'Natalia Szczepanik','Dietla 11 Kraków',24,273810299,'szczepanik@gmail.com'),
-- (61,'Jan Kochanowski','Długa 15 Kraków',26,921990271,'kochanowski@gmail.com'),
-- (62,'Klaudia Olczak','Długosza 1 Kraków',42,710271283,'olczak@gmail.com'),
-- (63,'Dawid Kowal','Gaik 3 Kraków',28,762910119,'kowal@gmail.com'),
-- (64,'Klaudiusz Wiszniewski','Gajowa 17 Kraków',39,682102000,'wiszniewski@gmail.com'),
-- (65,'Aleksandra Skorupa','Geologów 82 Kraków',20,820182911,'skorupa@gmail.com'),
-- (66,'Martna Królak','Gilowa 92 Kraków',35,927391734,'krolak@gmail.com'),
-- (67,'Jerzy Budziński','Gibsowa 10 Kraków',54,752910019,'budzinski@gmail.com'),
-- (68,'Arkadiusz Winiarski','Gęsia 92 Kraków',20,725882929,'winiarski@gmail.com'),
-- (69,'Daria Waszkiewicz','Grabowa 71 Kraków',49,876211927,'waszkiewicz@gmail.com'),
-- (70,'Antoni Brzozowski','Gnysia 85 Kraków',28,525517992,'brzozowski@gmail.com'),
-- (71,'Oliwia Pawelec','Janosika 20 Kraków',26,827102613,'pawelec@gmail.com'),
-- (72,'Adam Świderski','Jar 9 Kraków',56,812900177,'swiderski@gmail.com'),
-- (73,'Patryk Sobczyński','Jaremy 38 Kraków',31,727162900,'sobczynski@gmail.com'),
-- (74,'Kamil Chmielewski','Jesionowa 92 Kraków',29,725183433,'chmielewski@gmail.com'),
-- (75,'Ewa Drożdż','Jeziorko 19 Kraków',48,865254192,'drozdz@gmail.com'),
-- (76,'Jacek Korzeniewski','Jezuitów 1 Kraków',41,100283623,'korzeniewski@gmail.com'),
-- (77,'Mirosław Jaskólski','Kanoniczna 41 Kraków',51,773551183,'jaskolski@gmail.com'),
-- (78,'Piotr Orłowski','Kamieńskiego 14 Kraków',28,652539191,'orlowski@gmail.com'),
-- (79,'Zofia Kobus','Kamienna 15 Kraków',19,266381092,'kobus@gmail.com'),
-- (80,'Mateusz Wójcik','Kałuży 72 Kraków',25,255287212,'wojcik@gmail.com'),
-- (81,'Maria Kita','Kalwaryjska 56 Kraków',18,987652018,'kita@gmail.com'),
-- (82,'Wiktoria Bąk','Lipska 12 Kraków',25,763284909,'bak@gmail.com'),
-- (83,'Karolina Aleksandrowicz','Lisia 31 Kraków',62,353678822,'aleksandrowicz@gmail.com'),
-- (84,'Wojciech Pawłowski','Lipowa 43 Kraków',26,832671912,'pawlowski@gmail.com'),
-- (85,'Katarzyna Weber', 'Pocztowa 17 Kraków',38,783672391,'weber@gmail.com'),
-- (86,'Tomasz Hajduk', 'Pocieszka 25 Kraków',47,625663413,'hajduk@gmail.com'),
-- (87,'Joanna Żuk','Plater 19 Kraków',19,537489264,'zuk@gmail.com'),
-- (88,'Aleksandra Kubiak','Plażowa 72 Kraków',28,343222310,'kubiak@gmail.com'),
-- (89,'Adrianna Skorupa','Pustynna 84 Kraków',29,738476021,'skorupa@gmail.com'),
-- (90,'Wiktor Jabłoński','Rolna 88 Kraków',30,755381993,'Jablonski@gmail.com'),
-- (91,'Szymon Zaborowski','Rolnicza 78 Kraków',21,635621130,'zaborowski@gmail.com'),
-- (92,'Waldemar Żukowski','Romanowicza 90 Kraków',26,994722043,'zukowski@gmail.com'),
-- (93,'Arkadiusz Biliński','Ruczaj 92 Kraków',39,765388162,'bilinski@gmail.com'),
-- (94,'Agnieszka Szwed','Rudni 18 Kraków',37,819836331,'szwed@gmail.com'),
-- (95,'Zuzanna Ratajczyk','Rybaki 28 Kraków',41,887291091,'ratajeczyk@gmail.com'),
-- (96,'Jakub Dąbrowski','Rydla 26 Kraków',43,877378821,'dabrowski@gmail.com'),
-- (97,'Zbigniew Jezierski','Rydygiera 76 Kraków',54,773771323,'jezierski@gmail.com'),
-- (98,'Antonina Wach','Rymarska 83 Kraków',27,983911272,'wach@gmail.com'),
-- (99,'Jerzy Makowski','Sanocka 89 Kraków',36,983976161,'makowski@gmail.com'),
-- (100,'Magdalena Gwiazda','Saperów 96 Kraków',28,773881091,'gwiazda@gmail.com'),
-- (101,'Olga Olczak','Sadowa 28 Kraków',43,883921827,'olczak@gmail.com'),
-- (102,'Kamila Augustyn','Sarmacka 62 Kraków',37,982891092,'augustyn@gmail.com'),
-- (103,'Katarzyna Musioł','Saska 94 Kraków',18,827282711,'musiol@gmail.com'),
-- (104,'Grzegorz Leśniak','Skalna 12 Kraków',26,872890177,'lesiak@gmail.com'),
-- (105,'Piotr Iwański','Skalica 8 Kraków',49,736288081,'iwanski@gmail.com');

insert into Products (Prd_Model,Prd_Color,Prd_Size,Prd_Description,Prd_Unit)
values ('SS23','1S','XL','Bluza','Szt'),
('SS23JR','10S','XL','Koszulka JR','Szt'),
('SS24JR','9S','L','Kurtka Zimowa JR','Szt'),
('SS24','112L','M','Kurtka Zimowa','Szt'),
('SS25','14P','L','Czapka Zimowa','Szt'),
('SS28','23F','S','Spodnie Zimowe','Szt'),
('SS28JR','10S','M','Spodnie Zimowe JR','Szt'),
('SS29','19S','L','Kurtka Jesienna','Szt'),
('SS29JR','19S','M','Kurtka Jesienna JR','Szt'),
('SS39','67S','M','Rękawiczki Zimowe','Szt'),
('SS39JR','76M','S','Rękawiczki Zimowe JR','Szt'),
('SS34','57G','L','Skarpety','Szt'),
('SS34JR','57G','M','Skarpety JR','Szt'),
('SS74','41E','M','Spodnie Narciarskie','Szt'),
('SS74JR','41E','L','Spodnie Narciarskie JR','Szt'),
('SS11','72K','M','Leginsy','Szt'),
('SS11JR','72K','S','Leginsy JR','Szt'),
('SS12','103M','L','Spodenki do biegania','Szt'),
('SS12JR','103M','M','Spodenki do biegania JR','Szt'),
('SS202','110A','L','Dresy','Szt'),
('SS202JR','110A','S','Dresy JR','Szt'),
('SS09','303S','L','Koszulka do biegania','Szt'),
('SS09JR','303S','L','Koszulka do biegania JR','Szt'),
('SS86','08S','M','Kurtka Zimowa','Szt'),
('SS86JR','08S','S','Kurtka Zimowa JR','Szt'),
('SS233','10S','L','Koszulka do koszykówki','Szt'),
('SS233JR','10S','M','Koszulka do koszykówki JR','Szt'),
('SS93','13S','S','Czapka Zimowa','Szt'),
('SS93JR','13S','S','Czapka Zimowa JR','Szt'),
('SS03','49Q','M','Spodnie Snowboardowe','Szt'),
('SS03JR','49Q','S','Spodnie Snowboardowe JR','Szt'),
('SS17','150S','M','Polar','Szt'),
('SS17JR','150S','L','Polar JR','Szt'),
('SS29','20W','XL','Kurtka Snowboardowa','Szt'),
('SS29JR','20W','L','Kurtka Snowboardowa JR','Szt'),
('SS40','50S','S','Skarpety','Szt'),
('SS40JR','50S','M','Skarpety JR','Szt'),
('SS37','30S','L','Kurtka Zimowa','Szt'),
('SS37JR','30S','S','Kurtka Zimowa JR','Szt'),
('SS203','94P','L','Kąpielówki','Szt'),
('SS203JR','94P','M','Kąpielówki JR','Szt'),
('SS201','203D','XL','Kurtka Zimowa','Szt');
