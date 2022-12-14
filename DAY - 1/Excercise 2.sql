--excersice 2
--a)create table named lms_suppliers_details
create table lms_suppliers_details(
SUPPLIER_ID VARCHAR2(100),
SUPPLIER_NAME VARCHAR2(100),
ADDRESS VARCHAR2(100),
CONTACT NUMBER, EMAIL VARCHAR2(100)
);

--b)drop table
DROP TABLE lms_suppliers_details;

--c)create the table back again by firing create table at point a

--d)Alter the table
--i)add two more colums BLOOD_GROUP VARCHAR2  COUNTRY VARCHAR2
ALTER table lms_suppliers_details
add BLOOD_GROUP VARCHAR2(100)
ADD COUNTRY VARCHAR2(100);

SELECT * FROM LMS_SUPPLIERS_DETAILS;
--II)RENAME THE COUNTRY COLUMN NAME TO MEMEBER_COUNTRY
ALTER TABLE LMS_SUPPLIERS_DETAILS
RENAME COLUMN COUNTRY TO MEMBER_COUNTRY;


--III)MODIFY THE BLOOD GROUP TO VARCHAR2(3008)
ALTER TABLE LMS_SUPPLIERS_DETAILS
MODIFY BLOOD_GROUP VARCHAR2(3008);

--IV)RENAME THE TABLE TO LMS_SUPPLIERS_DETAILS_P
RENAME LMS_SUPPLIERS_DETAILS TO LMS_SUPPLIERS_DETAILS_P;

--V)DROP THE BLOOD_GROUP COLUMN
ALTER TABLE LMS_SUPPLIERS_DETAILS_P
DROP COLUMN BLOOD_GROUP;

--E)INSERT FOLLOWING DATA
INSERT INTO lms_suppliers_details_p(supplier_id,supplier_name,ADDRESS,CONTACT,EMAIL,MEMBER_COUNTRY)
VALUES ('S01','SINGAPORE SHOPPEE','CHENNAI',9894123555,'sing@gmail.com','India');

select * from lms_suppliers_details_p;
INSERT INTO lms_suppliers_details_p(supplier_id,supplier_name,ADDRESS,CONTACT,EMAIL,MEMBER_COUNTRY)
VALUES ('S02','JK STORES','MUMBAI',9940123450,'jks@yahoo.com','India');

INSERT INTO lms_suppliers_details_p(supplier_id,supplier_name,ADDRESS,CONTACT,EMAIL,MEMBER_COUNTRY)
VALUES ('S03','ROSE BOOK STORE','TRIVANDRUM',9444411222,'rose@gmail.com','India');

INSERT INTO lms_suppliers_details_p(supplier_id,supplier_name,ADDRESS,CONTACT,EMAIL,MEMBER_COUNTRY)
VALUES ('S04','KAVERI STORE','DELHI',8630001452,'kavi@redif.com','India');

--f)delete all the rows
delete from lms_suppliers_details_p;

select * from lms_suppliers_details_p;

--g)insert the data back again in point (e)

--h)update for all rows country column to 'USA'
update lms_suppliers_details_p
set member_country = 'USA';



--f)
select * from lms_suppliers_details_p;
--[3 rows]
INSERT INTO lms_suppliers_details_p(supplier_id,supplier_name,ADDRESS,CONTACT,EMAIL,MEMBER_COUNTRY)
VALUES ('S12','ZOMATO','MUMBAI',7855623440,'money@gamil.com','India');
--[4 rows]
rollback;
--[0 rows]
INSERT INTO lms_suppliers_details_p(supplier_id,supplier_name,ADDRESS,CONTACT,EMAIL,MEMBER_COUNTRY)
VALUES ('S10','JIO MART','DELHI',8644001452,'free@rediff.com','India');
--[1 ros]
commit;
--[1 row]
savepoint s1;
INSERT INTO lms_suppliers_details_p(supplier_id,supplier_name,ADDRESS,CONTACT,EMAIL,MEMBER_COUNTRY)
VALUES ('S08','D MART','MUMBAI',9940123450,'dance@gamil.com','India');

savepoint s2;

INSERT INTO lms_suppliers_details_p(supplier_id,supplier_name,ADDRESS,CONTACT,EMAIL,MEMBER_COUNTRY)
VALUES ('S06','AKBAR STORE','MUMBAI',7855623100,'akbakst@aol.com','India');

select * from lms_suppliers_details_p;
--[3 rows]
rollback to savepoint s2;

select * from lms_suppliers_details_p;
--[2 rOws]
