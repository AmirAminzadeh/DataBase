
--2.a full .sql file for creating the tables, constraints and relationships

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


--cities------------------------------------------------------------------------
CREATE TABLE a2Cities(
  CityID integer PRIMARY KEY,
  CityName VARCHAR2(25),
  ProvinceID varchar2(2),
  CONSTRAINT a2Cities_ProvinceID_fk FOREIGN KEY(ProvinceID) references a2Provinces(ProvinceID)
);


--area--------------------------------------------------------------------------
CREATE TABLE a2Areas(
  AreaID int,
  AreaName varchar2(20),
  AreaComment varchar2(50),
  CONSTRAINT a2Areas_AreaID_pk PRIMARY KEY(AreaID)
);




--schools-----------------------------------------------------------------------
CREATE TABLE a2Schools(
  SchoolID int,
  SchoolType varchar2(50),
  SchoolName varchar(50),
  AreaID int,
  CONSTRAINT a2Schools_SchID_pk PRIMARY KEY(SchoolID),
  CONSTRAINT a2Areas_AreaID_fk FOREIGN KEY(AreaID) REFERENCES a2Areas(AreaID)
);



--agencies----------------------------------------------------------------------
CREATE TABLE a2Agencies(
  AgencyID int,
  AgencyName varchar2(50),
  AgencyPhone int,
  CONSTRAINT a2Agencies_AgencyID_pk PRIMARY KEY(AgencyID)
);


--condo-------------------------------------------------------------------------

CREATE TABLE a2Condos(
	PropID integer PRIMARY KEY,
	Maintenance integer
);


--locations---------------------------------------------------------------------

CREATE TABLE a2Locations (
	locID integer PRIMARY KEY,
	StName VARCHAR2(50),
	unit integer,
	postalCode VARCHAR2(10)
);


--clients-----------------------------------------------------------------------
Create table a2Clients(
    PID integer primary key
);



--outlets-----------------------------------------------------------------------
CREATE TABLE a2Outlets(
	outletID integer PRIMARY KEY,
	outletName VARCHAR2(50),
	outletNumber integer,
	outletType VARCHAR2(50)
	);


--house-------------------------------------------------------------------------
Create table a2Houses(
    PropID int primary key,
    LandSize decimal(10,2)
);


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


-------------------------------------------------------------------------------------------------------------------------------------------
--End of file