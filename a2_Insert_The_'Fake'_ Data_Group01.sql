
--3) A separate .sql file to insert the 'fake' data


/*
Student Name      ==>      Student Number
---------------            -----------------
Amir Aminzadeh    ==>      126554187
Yuan-Hsi Lee      ==>      106936180
Toktam Askari     ==>      127527182
Masoume Eslami    ==>      101457174
*/

----------------------------------------------------------------------------------------------------------
/*

drop table a2People;
drop table a2Advertisements;
drop table a2Properties;
drop table a2Cities;
drop table a2Provinces;
drop table a2locations;
drop table a2Schools;
drop table a2Areas;
drop table a2Agencies;
drop table a2Houses;
drop table a2Condos;
drop table a2Clients;
drop table a2outlets;

*/


-----------------------------------------------------------------------------------------------------------------------------
--provinces---------------------------------------------------------------------
CREATE TABLE a2Provinces (
  ProvinceID varchar2(2),
  ProvName varchar2(50),
  CONSTRAINT a2Provinces_ProvinceID_pk PRIMARY KEY(ProvinceID)
);
--The values for a2Provinces table
INSERT INTO a2Provinces VALUES('QC', 'Quebec');
INSERT INTO a2Provinces VALUES('ON', 'Ontario' );
INSERT INTO a2Provinces VALUES('MN', 'Manitoba');
INSERT INTO a2Provinces VALUES('SK', 'Saskatchewan');
INSERT INTO a2Provinces VALUES('NL', 'Newfoundland and Labrador');
INSERT INTO a2Provinces VALUES('PE', 'Prince Edward');
INSERT INTO a2Provinces VALUES('NS', 'Nova Scotia');
INSERT INTO a2Provinces VALUES('NB', 'New Brunswick');
INSERT INTO a2Provinces VALUES('AB', 'Alberta');
INSERT INTO a2Provinces VALUES('BC', 'British Columbia');
INSERT INTO a2Provinces VALUES('YT', 'Yukon');
INSERT INTO a2Provinces VALUES('NT', 'Northwest Territories');
INSERT INTO a2Provinces VALUES('NU', 'Nunavut');
commit;



--cities------------------------------------------------------------------------
CREATE TABLE a2Cities(
  CityID integer PRIMARY KEY,
  CityName VARCHAR2(25),
  ProvinceID varchar2(2),
  CONSTRAINT a2Cities_ProvinceID_fk FOREIGN KEY(ProvinceID) references a2Provinces(ProvinceID)
);
--The values for a2Cities table
INSERT INTO a2Cities VALUES (200, 'Brampton', 'ON');
INSERT INTO a2Cities VALUES (210, 'Hamilton', 'ON');
INSERT INTO a2Cities VALUES (220, 'Mississauga', 'ON');
INSERT INTO a2Cities VALUES (230, 'Niagara Falls', 'ON');
INSERT INTO a2Cities VALUES (240, 'Oakville', 'ON');
INSERT INTO a2Cities VALUES (250, 'Oshawa', 'ON');
INSERT INTO a2Cities VALUES (260, 'Pickering', 'ON');
INSERT INTO a2Cities VALUES (270, 'Toronto', 'ON');
INSERT INTO a2Cities VALUES (280, 'Trenton', 'ON');
INSERT INTO a2Cities VALUES (290, 'Waterloo', 'ON');
commit;


--area--------------------------------------------------------------------------
CREATE TABLE a2Areas(
  AreaID int,
  AreaName varchar2(20),
  AreaComment varchar2(50),
  CONSTRAINT a2Areas_AreaID_pk PRIMARY KEY(AreaID)
);

--insert data into a2Area table
INSERT INTO a2Areas VALUES(401, 'Don Mills', 'an area in Toronto');
INSERT INTO a2Areas VALUES(402, 'Beaches', 'an area in Toronto');
INSERT INTO a2Areas VALUES(403, 'St. George', 'an area in Toronto');
INSERT INTO a2Areas VALUES(404, 'London Centre', 'former Liberal Premier David Peterson');
INSERT INTO a2Areas VALUES(405, 'Richmond Hill', 'Third most populous municipality of York Region');
INSERT INTO a2Areas VALUES(406, 'Aurora', 'Sentral town in York Region');
INSERT INTO a2Areas VALUES(407, 'Oshawa', 'Golden horseshoe');
INSERT INTO a2Areas VALUES(408, 'Muskoka', 'an area in Northern Ontario');
INSERT INTO a2Areas VALUES(409, 'Eglinton', 'an business centre in Toronto');
INSERT INTO a2Areas VALUES(410, 'High Park', 'an area in Toronto');
commit;


--schools-----------------------------------------------------------------------
CREATE TABLE a2Schools(
  SchoolID int,
  SchoolType varchar2(50),
  SchoolName varchar(50),
  AreaID int,
  CONSTRAINT a2Schools_SchID_pk PRIMARY KEY(SchoolID),
  CONSTRAINT a2Areas_AreaID_fk FOREIGN KEY(AreaID) REFERENCES a2Areas(AreaID)
);

--insert data into a2School table

INSERT INTO a2Schools VALUES(41, 'bilingual high school', 'Sunflower High School', 401);
INSERT INTO a2Schools VALUES(42, 'girls high school', 'Jing-Mei High School', 402);
INSERT INTO a2Schools VALUES(43, 'elementary school', 'Brooklyn99 Elementary School', 403);
INSERT INTO a2Schools VALUES(44, 'elementary school', 'Takao Elementary School', 404);
INSERT INTO a2Schools VALUES(45, 'middle school', 'Hapiness Middle School', 405);
INSERT INTO a2Schools VALUES(46, 'boys high school', 'Yellow Flower High School', 406);
INSERT INTO a2Schools VALUES(47, 'vovational school', 'Fu-Hsin Trade and Arts School', 407);
INSERT INTO a2Schools VALUES(48, 'college', 'Seneca College', 408);
INSERT INTO a2Schools VALUES(49, 'university', 'McGill University', 409);
INSERT INTO a2Schools VALUES(50, 'high school', 'Tim Hortons High School', 410);
commit;

--agencies----------------------------------------------------------------------
CREATE TABLE a2Agencies(
  AgencyID int,
  AgencyName varchar2(50),
  AgencyPhone int,
  CONSTRAINT a2Agencies_AgencyID_pk PRIMARY KEY(AgencyID)
);

INSERT INTO a2Agencies VALUES(81, 'Violet', '6475436678');
INSERT INTO a2Agencies VALUES(82, 'Heidi', '6475436478');
INSERT INTO a2Agencies VALUES(83, 'Oliver', '6475433678');
INSERT INTO a2Agencies VALUES(84, 'Wendy', '6475436788');
INSERT INTO a2Agencies VALUES(85, 'Martin', '6475436671');
INSERT INTO a2Agencies VALUES(86, 'Robin', '6475436674');
INSERT INTO a2Agencies VALUES(87, 'Lily', '6445436678');
INSERT INTO a2Agencies VALUES(88, 'Blahblah', '6476436678');
INSERT INTO a2Agencies VALUES(89, 'Alicia', '6475446678');
INSERT INTO a2Agencies VALUES(90, 'Kalinda', '6475436978');
commit;




--condo-------------------------------------------------------------------------

CREATE TABLE a2Condos(
	PropID integer PRIMARY KEY,
	Maintenance integer
);
--The value for a2Condos table
INSERT INTO a2Condos VALUES (100,510);
INSERT INTO a2Condos VALUES (102,375);
INSERT INTO a2Condos VALUES (104,455);
INSERT INTO a2Condos VALUES (106,430);
INSERT INTO a2Condos VALUES (108,320);
commit;

--locations---------------------------------------------------------------------

CREATE TABLE a2Locations (
	locID integer PRIMARY KEY,
	StName VARCHAR2(50),
	unit integer,
	postalCode VARCHAR2(10)
);
--The values for a2Locations table
INSERT INTO a2Locations VALUES (1000, '12 Almond', 25 , 'L3N 4M5');
INSERT INTO a2Locations VALUES (1100, '53 Tamarak Drive', 1 , 'L4M 6V7');
INSERT INTO a2Locations VALUES (1200, '201 John street', 34, 'L2M 4K8');
INSERT INTO a2Locations VALUES (1300, '94 Cummer street', 1 , 'L3y 4Y8');
INSERT INTO a2Locations VALUES (1400, '214 Steels street', 16 , 'MSW 4F7');
INSERT INTO a2Locations VALUES (1500, '211 King street', 1 , 'L4N M5B');
INSERT INTO a2Locations VALUES (1600, '2007 Willodale St', 22, 'N4W 3J6');
INSERT INTO a2Locations VALUES (1700, '204 Clarck Street', 1 , 'W2H 4M5');
INSERT INTO a2Locations VALUES (1800, '147 Spadina Ave', 11 , 'M5V 2L7');
INSERT INTO a2Locations VALUES (1900, '60 University Ave', 1 , 'MSW 9T2');
commit;

--clients-----------------------------------------------------------------------
Create table a2Clients(
    PID integer primary key
);

--Inserting values for a2Clients
insert into a2Clients values(50);
insert into a2Clients values(51);
insert into a2Clients values(52);
insert into a2Clients values(53);
commit;




--outlets-----------------------------------------------------------------------
CREATE TABLE a2Outlets(
	outletID integer PRIMARY KEY,
	outletName VARCHAR2(50),
	outletNumber integer,
	outletType VARCHAR2(50)
	);

--The values for a2Outlets table
INSERT INTO a2Outlets VALUES (30, 'CBC Channel', '416235456', 'Television');
INSERT INTO a2Outlets VALUES (31, 'Kiss 92.5', '416535454', 'Radio');
INSERT INTO a2Outlets VALUES (32, 'Virgin Radio', '416765556', ' Radio');
INSERT INTO a2Outlets VALUES (33, 'youtube', '416765456', 'Social Media');
INSERT INTO a2Outlets VALUES (34, 'Iran Javan', '416735440', 'Magazine');
INSERT INTO a2Outlets VALUES (35, 'Toronto Star', '416682496', 'Newspaper');
INSERT INTO a2Outlets VALUES (36, 'Canadian Living', '416009456', 'Magazine');
INSERT INTO a2Outlets VALUES (37, 'LamarAdd', '6475701110', 'Digital Billboard');
INSERT INTO a2Outlets VALUES (38, 'LamarAdd', '6475701111', 'Moving Billboard(bus)');
INSERT INTO a2Outlets VALUES (39, 'facebook', '416035468', 'Social Media');
commit;

--house-------------------------------------------------------------------------
Create table a2Houses(
    PropID int primary key,
    LandSize decimal(10,2)
);
--insert data into house
INSERT INTO a2Houses VALUES(101 ,600.00);
INSERT INTO a2Houses VALUES(103 ,850.60);
INSERT INTO a2Houses VALUES(105 ,1050.80);
INSERT INTO a2Houses VALUES(107 ,1300.00);
INSERT INTO a2Houses VALUES(109 ,1680.90);
commit;

--properties------------------------------------------------------------------
CREATE TABLE a2Properties (
  PropID  int primary key,
  CityID  int,
  LocID  int,
  AreaID  int,
  Squareft decimal(8,2),
  BedroomNumber  int,
  BathroomNumber  int,
  DateList Date,
  BuyerID  int,
  SellerID  int,
  BuyerAgencyID  int,
  SellerAgencyID  int,
  PriceList decimal(10,2),
  DateSold Date,
  Constraint a2Properties_CityID_FK foreign key (CityID)
  References a2Cities(CityID),
  Constraint a2Properties_LocID_FK foreign key (LocID)
  References a2Locations(LocID),
  Constraint a2Properties_AreaID_FK foreign key (AreaID)
  References a2Areas(AreaID),
  Constraint a2Properties_BuyerAgencyID_FK foreign key (BuyerAgencyID)
  References a2Agencies(AgencyID),
  Constraint a2Properties_SellerAgencyID_FK foreign key (SellerAgencyID)
  References a2Agencies(AgencyID)
);


--insert data into property
  INSERT INTO a2Properties VALUES(100, 200, 1000 ,401 ,220.30,2,2, TO_DATE('2017-12-01', 'YYYY-MM-DD'),108,201,81,null ,780000.00, TO_DATE('2018-02-15', 'YYYY-MM-DD'));
  INSERT INTO a2Properties VALUES(101, 210, 1100 ,402 ,500.80,3,2, TO_DATE('2016-11-01', 'YYYY-MM-DD'),104,205,82,null,2100000.00, TO_DATE('2017-01-18', 'YYYY-MM-DD'));
  INSERT INTO a2Properties VALUES(102, 220, 1200 ,403 ,200.00,2,2, TO_DATE('2018-11-06', 'YYYY-MM-DD'),103,203,83,null ,660000.00, NULL);
  INSERT INTO a2Properties VALUES(103, 230, 1300 ,404 ,700.00,3,3,TO_DATE('2019-02-01', 'YYYY-MM-DD'),110,200,84,null,2400000.00, TO_DATE('2019-02-28', 'YYYY-MM-DD'));
  INSERT INTO a2Properties VALUES(104, 240, 1400 ,405 ,180.70,2,1, TO_DATE('2017-12-07', 'YYYY-MM-DD'),107,202,85 ,null ,560000.00, TO_DATE('2018-02-06', 'YYYY-MM-DD'));
  INSERT INTO a2Properties VALUES(105, 250, 1500 ,406 ,900.00,5,3, TO_DATE('2017-09-01', 'YYYY-MM-DD'),109,204,null,86,3200000.00,NULL);
  INSERT INTO a2Properties VALUES(106, 260, 1600 ,407 ,95.00,1,2, TO_DATE('2018-05-01', 'YYYY-MM-DD'),106,206,null,87,430000.00, NULL);
  INSERT INTO a2Properties VALUES(107, 270, 1700 ,408 ,1100.00,4,4,TO_DATE('2018-01-25', 'YYYY-MM-DD'),101,207,null,88,3780000, TO_DATE('2018-03-04', 'YYYY-MM-DD'));
  INSERT INTO a2Properties VALUES(108, 280, 1800 ,409 ,90.70,1,1,TO_DATE('2018-04-01', 'YYYY-MM-DD'),102,208,null,89,398000.00, TO_DATE('2018-04-26', 'YYYY-MM-DD'));
  INSERT INTO a2Properties VALUES(109, 290, 1900 ,410 ,1300.00,6,4, TO_DATE('2018-12-08', 'YYYY-MM-DD'),105,209,null,90,4900000.00, TO_DATE('2019-02-06', 'YYYY-MM-DD'));
  commit;

--people------------------------------------------------------------------------
Create table a2People(
    PID integer primary key,
    Fname varchar2(25),
    Lname varchar2(25),
    MainPhone integer,
    Email varchar2(50),
    PhoneType varchar2(25),
    PropID integer,
    constraint a2People_PropID_FK foreign key (PropID)
    references a2Properties(PropID)
);

--Inserting values for a2People
insert into a2People values(50, 'Amir', 'Aminzadeh', 6471112222, 'amir@hotmail.com', 'cell phone', 100);
insert into a2People values(51, 'Toktam', 'Asghary', 6472223333, 'toktam@gmail.com', 'cell phone', 101);
insert into a2People values(52, 'Masoume', 'Eslami', 6473334444, 'masoume@yahoo.com', 'cell phone', 102);
insert into a2People values(53, 'Yuan-Hsi', 'Lee', 6474445555, 'yuan@hotmail.com', 'cell phone', 103);
insert into a2People values(54, 'Robert', 'Smith', 0016477996666, 'robert@gmail.com', 'land phone', 104);
insert into a2People values(55, 'Sara', 'Jones', 0016477987777, 'sara@yahoo.com', 'land phone', 105);
insert into a2People values(56, 'Noah', 'Miller', 6477778888, 'noah@hotmail.com', 'cell phone', 106);
insert into a2People values(57, 'Ethan', 'Nelson', 6478889999, 'ethan@gmail.com', 'cell phone', 107);
insert into a2People values(58, 'Benjamin', 'Foster', 0016477990000, 'benjamin@hotmail.com', 'land phone', 108);
insert into a2People values(59, 'Emma', 'Walker', 6471234567, 'emma@yahoo.com', 'cell phone', 109);
commit;

--advertisements----------------------------------------------------------------
Create table a2Advertisements(
    AdvertID integer primary key,
    DatePlaced date,
    AdvertCost decimal(10,2),
    OutletID integer,
    PropID integer,
    constraint a2Advertisements_OutletID_FK foreign key (OutletID)
    references a2Outlets(OutletID),
    constraint a2Advertisements_PropID_FK foreign key (PropID)
    references a2Properties(PropID)
);

--Inserting values for a2Advertisements
insert into a2Advertisements values(70, to_date('2017-12-15', 'YYYY-MM-DD'), 15000, 30, 100);
insert into a2Advertisements values(71, to_date('2016-12-18', 'YYYY-MM-DD'), 20000.50, 31, 101);
insert into a2Advertisements values(72, to_date('2018-12-04', 'YYYY-MM-DD'), 13000.50, 32, 102);
insert into a2Advertisements values(73, to_date('2019-02-08', 'YYYY-MM-DD'), 65000.50, 33, 103);
insert into a2Advertisements values(74, to_date('2017-10-16', 'YYYY-MM-DD'), 45350, 34, 104);
insert into a2Advertisements values(75, to_date('2017-10-15', 'YYYY-MM-DD'), 102000.50, 35, 105);
insert into a2Advertisements values(76, to_date('2018-05-20', 'YYYY-MM-DD'), 7800, 36, 106);
insert into a2Advertisements values(77, to_date('2018-02-14', 'YYYY-MM-DD'), 4500, 37, 107);
insert into a2Advertisements values(78, to_date('2018-04-16', 'YYYY-MM-DD'), 85000, 38, 108);
insert into a2Advertisements values(79, to_date('2018-12-26', 'YYYY-MM-DD'), 128700, 39, 109);
commit;

-------------------------------------------------------------------------------------------------------------------------------------------
--End of file