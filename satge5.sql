--5) The tables actually submitted in one group members account (please indicate which member this is in the submission and 
--GRANT the appropriate permissions to your fellow group members and REVOKE permission from all other users.  
--There is no need to grant me permissions, I can get in anyways through the admin account.

/*
Student Name      ==>      Student Number      ==>      User Name
---------------            -----------------            -----------------
Amir Aminzadeh    ==>      126554187           ==>      dbs301_192e04
Yuan-Hsi Lee      ==>      106936180           ==>      dbs301_192e16
Toktam Askari     ==>      127527182           ==>      dbs301_192e32
Masoume Eslami    ==>      101457174           ==>      dbs301_192e10
*/



Revoke select,Update,Insert on a2Houses from public;
Revoke select,Update,Insert on a2Cities from public;
Revoke select,Update,Insert on a2Provinces from public;
Revoke select,Update,Insert on a2Locations from public;
Revoke select,Update,Insert on a2Areas from public;
Revoke select,Update,Insert on a2Schools from public;
Revoke select,Update,Insert on a2Properties from public;
Revoke select,Update,Insert on a2Agencies from public;
Revoke select,Update,Insert on a2Condos from public;
Revoke select,Update,Insert on a2People from public;
Revoke select,Update,Insert on a2Clients from public;
Revoke select,Update,Insert on a2Outlets from public;
Revoke select,Update,Insert on a2Advertisements from public;


Grant select,Update,Insert on a2Houses to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2Cities to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2Provinces to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2Locations to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2Areas to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2Schools to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2Properties to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2Agencies to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2Condos to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2People to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2Clients to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2Outlets to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;
Grant select,Update,Insert on a2Advertisements to dbs301_192e04, dbs301_192e32, dbs301_192e16, dbs301_192e10;

--------------------------------------------------------------------------------------------------------------
--End of sql file
