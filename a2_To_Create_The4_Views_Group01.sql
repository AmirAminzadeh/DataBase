
--4) A separate .sql file to create the 4 views (ensure a text comment is provided to describe the intention/purpose of the view/report)

/*
Student Name      ==>      Student Number
---------------            -----------------
Amir Aminzadeh    ==>      126554187
Yuan-Hsi Lee      ==>      106936180
Toktam Askari     ==>      127527182
Masoume Eslami    ==>      101457174
*/



--View 01---------------------------------------------------


CREATE OR REPLACE VIEW Status as(
select a2p.pricelist, a2p.sellerAgencyID, a2p.buyerAgencyID, a2a.AgencyID, a2d.AdvertID
from a2Agencies a2a full join a2Properties a2p 
on ( a2a.AgencyID = a2p.buyerAgencyID)
full Join a2Properties a3p 
on(a3p.sellerAgencyID = a2a.AgencyID)
full join a2Advertisements a2d 
on(a2d.propID = a2p.PropID));
select sum(pricelist) as "Total Price",
    count(buyerAgencyID) as "Total Buyer Agents",
    count(SellerAgencyID) as "Total Seller Agents",
    count(AdvertID) as "Number Of Advertisements",
    count(AgencyId) as "Number Of Agencies"
from status;


--View 02---------------------------------------------------
CREATE OR REPLACE VIEW PROPERTIES_FORSALE AS (
  SELECT *
  FROM a2Properties
  WHERE DateSold is NULL

);


--View 03---------------------------------------------------
CREATE OR REPLACE VIEW CURRENT_CLIENTS AS(
  SELECT *
  FROM a2People
  Where PID IN (SELECT PID FROM a2Clients)
);


--View 04---------------------------------------------------
CREATE OR REPLACE VIEW Yearly_Revenue as(
select sum(pricelist) as "total"
from a2properties
where datesold > to_char('&date','YY-mm-dd')
);

--------------------------------------------------------------------------------------------------------------
--End of sql file



