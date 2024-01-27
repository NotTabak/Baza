USE [Ecom_Shop]
GO

SET IDENTITY_INSERT [Ecom_Shop].[dbo].[users] ON

INSERT INTO [dbo].[users](usr_id, usr_email, usr_status, usr_pass, usr_fristname, usr_lastname)
VALUES(1, 'admin@ecom_shop.pl',1,'AQAAAAEAACcQAAAAEFRy3bqHxPqCtU/2aXMYD0plZb4mssPXzWbfYLb5V75yyCFGb3Z4HpfjaLVn76tJ2g==', 'Admin','Admin');

SET IDENTITY_INSERT [Ecom_Shop].[dbo].[users] OFF

SET IDENTITY_INSERT [Ecom_Shop].[dbo].[employees] ON

insert into employees (emp_id, emp_name, emp_adress, emp_birthday_date, emp_phone_number, emp_email_adress)
values 
(1, 'Piotr Biwok','Ofiar Dąbia 6','2001-01-01',989076904,'Biwok@Onet.pl'),
(2, 'Klara Budzińska','Czerwone Maki 15','1995-11-30', 678672534,'Budzińska10@gmail.com'),
(3, 'Barbara Gil', 'Prądnik Czerwony 4','1994-07-15',643823016,'BasiaGil@gmail.com');

SET IDENTITY_INSERT [Ecom_Shop].[dbo].[employees] OFF



SET IDENTITY_INSERT [Ecom_Shop].[dbo].[stores] ON

insert into stores (str_id, str_name, str_status, str_code, str_adress, str_square, str_usr_id, str_emp_id)
values (1, 'Galeria Kazimierz', 'Active', 'PL0001', 'Podgórska 34',200,1, 1),
(2, 'Galeria Krakowska', 'Active','PL0002','Pawia 5',250, 1, 2),
(3, 'Bonarka', 'Inactive','PL0003','Kamieńskiego 11',200, 1, 3);

SET IDENTITY_INSERT [Ecom_Shop].[dbo].[stores] OFF


SET IDENTITY_INSERT [Ecom_Shop].[dbo].[customers] ON

insert into customers (cst_id, cst_name, cst_adress, cst_birthday_date, cst_phone_number, cst_email)
values (1, 'Mariusz Baran','Polna 3 Michałowice','1978-01-01',345234232,'Baran@Onet.pl'),
(2, 'Marianna Nowak','Zakrzowiecka 6 Kraków','1983-01-01',898000123,'NowakM@gmail.com'),
(3, 'Karolina Majster','Kwiatowa 5 Wieliczka','1987-01-01',454321734,'KaroMajster@gmail.com'),
(4, 'Kinga Bomba','Grzegórzki 9 Kraków','1987-01-01',456456965,'KiniaBUM@gmail.com'),
(5, 'Anna Nowakowska','Zakrzowiecka 6 Kraków','1997-01-01',891109823,'Nowakowska@gmail.com'),
(6, 'Maria Gertu','Kwiatowa 50 Tenczynek','1999-01-01',443210034,'mariagertu@gmail.com'),
(7, 'Ewelina Moda','Grzegórzki 15 Kraków','1977-01-01',456009651,'moda@gmail.com'),
(8, 'Adam Więckowski', 'Akacjowa 5 Kraków','1983-01-01',897098372,'wieckowski@gmail.com'),
(9, 'Oliwia Dziuba','Gertrudy 32/45 Kraków','1993-01-01',647843927,'dziuba@Onet.pl'),
(10, 'Dariusz Malinowski','Ofiar Dąbia 23/2 Kraków','1979-01-01',782645199,'malinowskidarek@gmail.com'),
(11, 'Jakub Jakubiak','Legionów 23 Kryspinów','1963-01-01',900823652,'jjakubiak@gmail.com'),
(12, 'Paulina Banaszek','Czarna 15 Wieliczka','1953-01-01',200105672,'pbanaszek@gmail.com'),
(13, 'Iwona Cieślak','Prądnik Czerwony 12 Kraków','1983-01-01',563987100,'cieslakiwona@gmail.com'),
(14,'Andrzej Szostak','Pychowicka 11 Kraków','1978-01-01',700172838,'szostaka@gmail.com'),
(15, 'Ewelina Miśkiewicz', 'Czarnowiejska 56 Kraków','1979-01-01',500212051,'miskiewiczowa@gmail.com'),
(16, 'Adrian Burda','Matejki 45 Kraków','2004-01-01',404102764,'burda@gmail.com'),
(17, 'Adrianna Bednarczyk','Podzamcze 7 Tenczynek','1993-06-01',302788902,'bedadrianna@gmail.com'),
(18, 'Julia Jurek','Jurajska 15 Krzeszowice','1973-01-01',454932711,'jurek@Onet.pl'),
(19, 'Marcin Żurawski','Rajska 109 Pawlikowice','1985-01-01',607291982,'zurawski@gmail.com'),
(20, 'Michał Gwóźdź','Saska 67 Kraków','1973-01-01',782166090,'gwozdz.michal@gmail.com'),
(21, 'Jakub Kopeć', 'Jagodowa 11 Węgrzce','1979-01-01',862091001,'kopec@gmail.com'),
(22, 'Mateusz Wilczyński','Jaśminowa 8 Węgrzce','1989-01-01',801210563,'wilczynski@gmail.com'),
(23, 'Janusz Skrzypek', 'Targowa 104 Zielonki','1987-01-01',908700121,'skrzypek@gmail.com'),
(24, 'Michał Bąk', 'Ugorek 77 Kraków','1993-01-01',700162834,'bakmichal@gmail.com'),
(25, 'Daria Szeląg','Powstańców 303 Kraków','1981-06-21',402105791,'szelagdaria@gmail.com'),
(27, 'Dominik Wilczek', 'Watykańska 12 Kraków','1991-06-01',232001902,'wilczek@gmail.com'),
(28, 'Miłosz Iwanowski','Pijarska 28 Kraków','1991-03-28',090241083,'iwanowski@gmail.com'),
(29, 'Gabriela Mikołajczak','Torfowa 25 Choleżyn','1981-09-13',576090020,'mikolajczak@gmail.com'),
(30, 'Jakub Błaszczyk','Błotna 23 Kryspinów','2001-06-01',020425981,'blaszczyk@gmail.com');
/*(31, 'Andrzej Falkowski','Rajska 12 Morawica',24,908976010,'falkowski@gmail.com'),
(32, 'Maciej Turski','Grodzka 60 Kraków',61,243509103,'turski@gmail.com'),
(33, 'Martna Banasiak','Algierska 15 Kraków',32,606340717,'banasiak@gmail.com'),
(34, 'Piotr Cybulski','3 Maja Kraków',27,007943025,'cybulski@gmail.com'),
(35, 'Krystian Rojek','Akacjowa 3 Kraków',31,890721616,'rojek@gmail.com'),
(36, 'Adrian Florczak','Andersa 19 Kraków',39,333723018,'florczak@gmail.com'),
(37, 'Klaudia Banaszek','Armii Krajowej 3 Kraków',21,888727192,'banaszek@gmail.com'),
(38, 'Natalia Miller','Bagrowa 2 Kraków',19,254019826,'miller@gmail.com'),
(39, 'Antonii Drozdowski','Babiego Lata 111 Kraków',27,701932629,'drozdowski@gmail.com'),
(40, 'Basia Maziarz','Babiczna 83 Kraków',20,732298771,'maziarz@gmail.com'),
(41, 'Artur Myśliwiec','Basztowa 17 Kraków',31,662523444,'mysliwiec@gmail.com'),
(42, 'Bartek Mikulski','Bastionowa 11 Kraków',45,872621100,'mikulski@gmail.com'),
(43, 'Filip Domański','Bazarowa 10 Kraków',23,736000901,'domanski@gmail.com'),
(44, 'Adrian Staniszewski','Bora Komorowskiego 11 Kraków',25,872682901,'staniszewski@gmail.com'),
(45, 'Władysław Szczepanik','Borkowska 1 Kraków',27,950940191,'szczepanik@gmail.com'),
(46, 'Paulina Michałek','Borsucza 13, Kraków',28,200119070,'michalek@gmail.com'),
(47, 'Maria Dziedzic','Bór 17 Kraków',18,017276182,'dziecic@gmail.com'),
(48, 'Damian Maliszewski','Brogi 15 Kraków',23,707291888,'maliszewski@gmail.com'),
(49, 'Wojtek Flis','Loretańska 12 Kraków',28,876091637,'flis@gmail.com'),
(50, 'Mariusz Bojanowski','Bronowicka 10 Kraków',28,091011872,'bojanowski@gmail.com'),
(51, 'Artur Wnuk','Brogi 1 Kraków',39,354116212,'wnuk@gmail.com'),
(52, 'Antonina Witek','Chłodna 11 Kraków',37,654829019,'witek@gmail.com'),
(53, 'Tomasz Baran','Bratysławska 17 Kraków',49,102934726,'baran15@gmail.com'),
(54, 'Wacław Marcinkowski','Chlebowa 21 Kraków',62,790929102,'marcinkowski@gmail.com'),
(55, 'Kamil Popławski','Cystersów 13 Kraków',23,330291627,'poplawski@gmail.com'),
(56, 'Krystian Kaźmierski','Dajwór 15 Kraków',43,678201221,'kazmierski@gmail.com'),
(57, 'Jakub Mazur','Dauna 7 Kraków',27,726301992,'mazur@gmail.com'),
(58, 'Marcin Malinowski','Dekerta 3 Kraków',34,827017220,'malinowski@gmail.com'),
(59, 'Natalia Szczepanik','Dietla 11 Kraków',24,273810299,'szczepanik@gmail.com'),
(60, 'Jan Kochanowski','Długa 15 Kraków',26,921990271,'kochanowski@gmail.com'),
(61, 'Klaudia Olczak','Długosza 1 Kraków',42,710271283,'olczak@gmail.com'),
(62, 'Dawid Kowal','Gaik 3 Kraków',28,762910119,'kowal@gmail.com'),
(63, 'Klaudiusz Wiszniewski','Gajowa 17 Kraków',39,682102000,'wiszniewski@gmail.com'),
(64, 'Aleksandra Skorupa','Geologów 82 Kraków',20,820182911,'skorupa@gmail.com'),
(65, 'Martna Królak','Gilowa 92 Kraków',35,927391734,'krolak@gmail.com'),
(66, 'Jerzy Budziński','Gibsowa 10 Kraków',54,752910019,'budzinski@gmail.com'),
(67, 'Arkadiusz Winiarski','Gęsia 92 Kraków',20,725882929,'winiarski@gmail.com'),
(68, 'Daria Waszkiewicz','Grabowa 71 Kraków',49,876211927,'waszkiewicz@gmail.com'),
(69, 'Antoni Brzozowski','Gnysia 85 Kraków',28,525517992,'brzozowski@gmail.com'),
(70, 'Oliwia Pawelec','Janosika 20 Kraków',26,827102613,'pawelec@gmail.com'),
(71, 'Adam Świderski','Jar 9 Kraków',56,812900177,'swiderski@gmail.com'),
(72, 'Patryk Sobczyński','Jaremy 38 Kraków',31,727162900,'sobczynski@gmail.com'),
(73, 'Kamil Chmielewski','Jesionowa 92 Kraków',29,725183433,'chmielewski@gmail.com'),
(74, 'Ewa Drożdż','Jeziorko 19 Kraków',48,865254192,'drozdz@gmail.com'),
(75, 'Jacek Korzeniewski','Jezuitów 1 Kraków',41,100283623,'korzeniewski@gmail.com'),
(76, 'Mirosław Jaskólski','Kanoniczna 41 Kraków',51,773551183,'jaskolski@gmail.com'),
(77, 'Piotr Orłowski','Kamieńskiego 14 Kraków',28,652539191,'orlowski@gmail.com'),
(78, 'Zofia Kobus','Kamienna 15 Kraków',19,266381092,'kobus@gmail.com'),
(79, 'Mateusz Wójcik','Kałuży 72 Kraków',25,255287212,'wojcik@gmail.com'),
(80, 'Maria Kita','Kalwaryjska 56 Kraków',18,987652018,'kita@gmail.com'),
(81, 'Wiktoria Bąk','Lipska 12 Kraków',25,763284909,'bak@gmail.com'),
(82, 'Karolina Aleksandrowicz','Lisia 31 Kraków',62,353678822,'aleksandrowicz@gmail.com'),
(83, 'Wojciech Pawłowski','Lipowa 43 Kraków',26,832671912,'pawlowski@gmail.com'),
(84, 'Katarzyna Weber', 'Pocztowa 17 Kraków',38,783672391,'weber@gmail.com'),
(85, 'Tomasz Hajduk', 'Pocieszka 25 Kraków',47,625663413,'hajduk@gmail.com'),
(86, 'Joanna Żuk','Plater 19 Kraków',19,537489264,'zuk@gmail.com'),
(87, 'Aleksandra Kubiak','Plażowa 72 Kraków',28,343222310,'kubiak@gmail.com'),
(88, 'Adrianna Skorupa','Pustynna 84 Kraków',29,738476021,'skorupa@gmail.com'),
(89, 'Wiktor Jabłoński','Rolna 88 Kraków',30,755381993,'Jablonski@gmail.com'),
(90, 'Szymon Zaborowski','Rolnicza 78 Kraków',21,635621130,'zaborowski@gmail.com'),
(91, 'Waldemar Żukowski','Romanowicza 90 Kraków',26,994722043,'zukowski@gmail.com'),
(92, 'Arkadiusz Biliński','Ruczaj 92 Kraków',39,765388162,'bilinski@gmail.com'),
(93, 'Agnieszka Szwed','Rudni 18 Kraków',37,819836331,'szwed@gmail.com'),
(94, 'Zuzanna Ratajczyk','Rybaki 28 Kraków',41,887291091,'ratajeczyk@gmail.com'),
(95, 'Jakub Dąbrowski','Rydla 26 Kraków',43,877378821,'dabrowski@gmail.com'),
(96, 'Zbigniew Jezierski','Rydygiera 76 Kraków',54,773771323,'jezierski@gmail.com'),
(97, 'Antonina Wach','Rymarska 83 Kraków',27,983911272,'wach@gmail.com'),
(98, 'Jerzy Makowski','Sanocka 89 Kraków',36,983976161,'makowski@gmail.com'),
(99, 'Magdalena Gwiazda','Saperów 96 Kraków',28,773881091,'gwiazda@gmail.com'),
(100, 'Olga Olczak','Sadowa 28 Kraków',43,883921827,'olczak@gmail.com'),
(101, 'Kamila Augustyn','Sarmacka 62 Kraków',37,982891092,'augustyn@gmail.com'),
(102, 'Katarzyna Musioł','Saska 94 Kraków',18,827282711,'musiol@gmail.com'),
(103, 'Grzegorz Leśniak','Skalna 12 Kraków',26,872890177,'lesiak@gmail.com'),
(104, 'Mariusz Kozioł','Polna 14 Kraków',47,325004232,'koziol@Onet.pl'),
(105, 'Piotr Iwański','Skalica 8 Kraków',49,736288081,'iwanski@gmail.com');*/

SET IDENTITY_INSERT [Ecom_Shop].[dbo].[customers] OFF



SET IDENTITY_INSERT [Ecom_Shop].[dbo].[products] ON

insert into products (prd_id, prd_model, prd_color, prd_size, prd_description, prd_unit)
values (1, 'SS23','1S','XL','Bluza','Szt'),
(2, 'SS23JR','10S','XL','Koszulka JR','Szt'),
(3, 'SS24JR','9S','L','Kurtka Zimowa JR','Szt'),
(4, 'SS24','112L','M','Kurtka Zimowa','Szt'),
(5, 'SS25','14P','L','Czapka Zimowa','Szt'),
(6, 'SS28','23F','S','Spodnie Zimowe','Szt'),
(7, 'SS28JR','10S','M','Spodnie Zimowe JR','Szt'),
(8, 'SS29','19S','L','Kurtka Jesienna','Szt'),
(9, 'SS29JR','19S','M','Kurtka Jesienna JR','Szt'),
(10, 'SS39','67S','M','Rękawiczki Zimowe','Szt'),
(11, 'SS39JR','76M','S','Rękawiczki Zimowe JR','Szt'),
(12, 'SS34','57G','L','Skarpety','Szt'),
(13, 'SS34JR','57G','M','Skarpety JR','Szt'),
(14, 'SS74','41E','M','Spodnie Narciarskie','Szt'),
(15, 'SS74JR','41E','L','Spodnie Narciarskie JR','Szt'),
(16, 'SS11','72K','M','Leginsy','Szt'),
(17, 'SS11JR','72K','S','Leginsy JR','Szt'),
(18, 'SS12','103M','L','Spodenki do biegania','Szt'),
(19, 'SS12JR','103M','M','Spodenki do biegania JR','Szt'),
(20, 'SS202','110A','L','Dresy','Szt'),
(21, 'SS202JR','110A','S','Dresy JR','Szt'),
(22, 'SS09','303S','L','Koszulka do biegania','Szt'),
(23, 'SS09JR','303S','L','Koszulka do biegania JR','Szt'),
(24, 'SS86','08S','M','Kurtka Zimowa','Szt'),
(25, 'SS86JR','08S','S','Kurtka Zimowa JR','Szt'),
(26, 'SS233','10S','L','Koszulka do koszykówki','Szt'),
(27, 'SS233JR','10S','M','Koszulka do koszykówki JR','Szt'),
(28, 'SS93','13S','S','Czapka Zimowa','Szt'),
(29, 'SS93JR','13S','S','Czapka Zimowa JR','Szt'),
(30, 'SS03','49Q','M','Spodnie Snowboardowe','Szt'),
(31, 'SS03JR','49Q','S','Spodnie Snowboardowe JR','Szt'),
(32, 'SS17','150S','M','Polar','Szt'),
(33, 'SS17JR','150S','L','Polar JR','Szt'),
(34, 'SS29','20W','XL','Kurtka Snowboardowa','Szt'),
(35, 'SS29JR','20W','L','Kurtka Snowboardowa JR','Szt'),
(36, 'SS40','50S','S','Skarpety','Szt'),
(37, 'SS40JR','50S','M','Skarpety JR','Szt'),
(38, 'SS37','30S','L','Kurtka Zimowa','Szt'),
(39, 'SS37JR','30S','S','Kurtka Zimowa JR','Szt'),
(40, 'SS203','94P','L','Kąpielówki','Szt');


SET IDENTITY_INSERT [Ecom_Shop].[dbo].[products] OFF

--insert into products (prd_model, prd_color, prd_size, prd_description, prd_unit)
--values('SS203JR','94P','M','Kąpielówki JR','Szt'),
--('SS201','203D','XL','Kurtka Zimowa','Szt');

SET IDENTITY_INSERT [Ecom_Shop].[dbo].[transactions] ON

insert into transactions (trn_id, trn_net, trn_gross, trn_tax, trn_status, trn_str_id, trn_receipt_id, trn_cst_id, trn_emp_id)
values 
(1, 200.0, 246.0, 46, 'Completed', 1, 1, 5, 1),
(2, 300.0, 369.0, 69, 'Completed', 2, 1, 10, 2),
(3, 500.0, 615.0, 115, 'Canceled', 2, 2, 15, 2),
(4, 400.0, 492.0, 92, 'Completed', 3, 1, 7, 3);

SET IDENTITY_INSERT [Ecom_Shop].[dbo].[transactions] OFF

SET IDENTITY_INSERT [Ecom_Shop].[dbo].[transaction_details] ON

insert into transaction_details (trd_id, trd_trn_id, trd_prd_id, trd_product_type, trd_shipment_sku, trd_value, trd_qty_ordered, trd_qty_sent, trd_str_id)
values 
(1,1,1,'Bluza','SS23-1S_XL',246.0,1,1,1),
(2,2,2,'koszulka','SS23JR-10S-XL',369.0,2,2,2),
(3,3,3,'Kurtka Zimowa','SS23RJ-10S-L',615.0,3,1,2),
(4,4,1,'Bluza','SS23-1S_XL',246.0,1,1,3),
(5,4,1,'Bluza','SS23-1S_L',246.0,1,1,3);

SET IDENTITY_INSERT [Ecom_Shop].[dbo].[transaction_details] OFF

-- Weryfikacja transakcji w sklepach.
-- select * from view_transactions