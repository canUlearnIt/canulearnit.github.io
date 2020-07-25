-- script to create LTI database
-- revised 6/27/2003 JM*/

GO

set nocount    on
set dateformat mdy

USE master

declare @dttm nvarchar(55)
select  @dttm=convert(nvarchar,getdate(),113)
raiserror('Beginning LTI.SQL at %s ....',1,1,@dttm) with nowait

GO

if exists (select * from sysdatabases where name='LTI')
begin
  raiserror('Dropping existing LTI database ....',0,1)
  DROP database LTI
end
GO

go
CREATE DATABASE LTI
GO

USE LTI

GO

CREATE TABLE lti_author
(author_id int CONSTRAINT author_author_id_pk PRIMARY KEY,
author_last_name nvarchar(30),
author_first_name nvarchar(30),
author_address nvarchar(30),
author_city nvarchar(30),
author_state nvarchar(2),
author_zip nvarchar(10),
author_phone nvarchar(20));

CREATE TABLE lti_book
(isbn nvarchar(20) CONSTRAINT book_isbn_pk PRIMARY KEY,
title nvarchar(50),
publish_date DATETIME,
price money,
picture nvarchar(20));

CREATE TABLE lti_book_author
(isbn nvarchar(20) CONSTRAINT book_author_isbn_fk REFERENCES lti_book(isbn),
author_id int CONSTRAINT book_author_author_id_fk REFERENCES lti_author(author_id),
CONSTRAINT book_author_isbn_author_id_pk PRIMARY KEY(isbn, author_id));

CREATE TABLE lti_warehouse
(warehouse_id int CONSTRAINT warehouse_warehouse_id_pk PRIMARY KEY,
warehouse_address nvarchar(30),
warehouse_city nvarchar(30),
warehouse_state CHAR(2));

CREATE TABLE lti_warehouse_book
(isbn nvarchar(20) CONSTRAINT wh_book_isbn_fk REFERENCES lti_book(isbn),
warehouse_id int CONSTRAINT wh_book_warehouse_id_fk REFERENCES lti_warehouse(warehouse_id),
qoh int,
CONSTRAINT wh_book_isbn_wh_id_pk PRIMARY KEY (isbn, warehouse_id));


INSERT INTO lti_author (AUTHOR_ID, AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_ADDRESS, AUTHOR_CITY, AUTHOR_STATE, AUTHOR_ZIP, AUTHOR_PHONE)
VALUES (1, 'Jones', 'Paul', '3988 Main Street', 'Eau Claire', 'WI', '54701', '715-555-5598');

INSERT INTO lti_author (AUTHOR_ID, AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_ADDRESS, AUTHOR_CITY, AUTHOR_STATE, AUTHOR_ZIP, AUTHOR_PHONE)
VALUES (2, 'Morrison', 'Joline', '5512 White Birch Street', 'Eau Claire', 'WI', '54701', '715-555-3899');

INSERT INTO lti_author (AUTHOR_ID, AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_ADDRESS, AUTHOR_CITY, AUTHOR_STATE, AUTHOR_ZIP, AUTHOR_PHONE)
VALUES (3, 'Smith', 'John', '1799 Elm Street', 'Eau Claire', 'WI','54701', '715-555-9833');

INSERT INTO lti_author (AUTHOR_ID, AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_ADDRESS, AUTHOR_CITY, AUTHOR_STATE, AUTHOR_ZIP, AUTHOR_PHONE)
VALUES (4, 'Morrison', 'Mike', '1799 State Street', 'Eau Claire', 'WI','54701', '715-555-9833');

INSERT INTO lti_author (AUTHOR_ID, AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_ADDRESS, AUTHOR_CITY, AUTHOR_STATE, AUTHOR_ZIP, AUTHOR_PHONE)
VALUES (5, 'Johnson', 'Phil', '8733 Oak Street', 'Travers City', 'MI', '55555', '755-555-3233');

INSERT INTO lti_author (AUTHOR_ID, AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_ADDRESS, AUTHOR_CITY, AUTHOR_STATE, AUTHOR_ZIP, AUTHOR_PHONE)
VALUES (6, 'Wilson', 'Mark', '3255 Sooner Street', 'Norman', 'OK', '75344', '555-555-4444');



INSERT INTO lti_book (ISBN, TITLE, PUBLISH_DATE, PRICE, PICTURE)
VALUES ('123-45-678-0', 'Oracle for Dummies', '09/13/2004', 34.95, 'Oracle.jpg');

INSERT INTO lti_book (ISBN, TITLE, PUBLISH_DATE, PRICE, PICTURE)
VALUES ('123-45-678-1', 'Advanced Oracle for Dummies', '08/31/2004', 39.95, 'AdvOracle.jpg');

INSERT INTO lti_book (ISBN, TITLE, PUBLISH_DATE, PRICE, PICTURE)
VALUES ('123-45-678-2', 'Web Programming for the Unenlightened', '08/31/2006', 42.25, 'WebProg.jpg');

INSERT INTO lti_book (ISBN, TITLE, PUBLISH_DATE, PRICE, PICTURE)
VALUES ('123-45-678-3', 'Java Programming for Cave Dwellers', '09/09/2002', 34.95, 'JavaProg.jpg');

INSERT INTO lti_book (ISBN, TITLE, PUBLISH_DATE, PRICE, PICTURE)
VALUES ('123-45-678-4', 'SQL Queries for Managers', '12/21/2004', 59.95, 'SqlQueries.jpg');

INSERT INTO lti_book (ISBN, TITLE, PUBLISH_DATE, PRICE, PICTURE)
VALUES ('123-45-678-5', 'Java Server Pages', '06/01/2004', 45.99, 'JavaServer.jpg');



INSERT INTO lti_book_author (ISBN, AUTHOR_ID)
VALUES ('123-45-678-0', 1);

INSERT INTO lti_book_author (ISBN, AUTHOR_ID)
VALUES ('123-45-678-0', 3);

INSERT INTO lti_book_author (ISBN, AUTHOR_ID)
VALUES ('123-45-678-1', 2);

INSERT INTO lti_book_author (ISBN, AUTHOR_ID)
VALUES ('123-45-678-2', 3);

INSERT INTO lti_book_author (ISBN, AUTHOR_ID)
VALUES ('123-45-678-2', 4);

INSERT INTO lti_book_author (ISBN, AUTHOR_ID)
VALUES ('123-45-678-3', 1);

INSERT INTO lti_book_author (ISBN, AUTHOR_ID)
VALUES ('123-45-678-3', 5);

INSERT INTO lti_book_author (ISBN, AUTHOR_ID)
VALUES ('123-45-678-4', 1);

INSERT INTO lti_book_author (ISBN, AUTHOR_ID)
VALUES ('123-45-678-5', 4);



INSERT INTO lti_warehouse (WAREHOUSE_ID, WAREHOUSE_ADDRESS, WAREHOUSE_CITY, WAREHOUSE_STATE)
VALUES (1, '1414 Church Street', 'New York', 'NY');

INSERT INTO lti_warehouse (WAREHOUSE_ID, WAREHOUSE_ADDRESS, WAREHOUSE_CITY, WAREHOUSE_STATE)
VALUES (2, '838 Main Street', 'Milwaukee', 'WI');

INSERT INTO lti_warehouse (WAREHOUSE_ID, WAREHOUSE_ADDRESS, WAREHOUSE_CITY, WAREHOUSE_STATE)
VALUES (3, '404 HIghway 303', 'Houston', 'TX');

INSERT INTO lti_warehouse (WAREHOUSE_ID, WAREHOUSE_ADDRESS, WAREHOUSE_CITY, WAREHOUSE_STATE)
VALUES (4, '4100 Hilltop Road', 'Chicago', 'IL');

INSERT INTO lti_warehouse (WAREHOUSE_ID, WAREHOUSE_ADDRESS, WAREHOUSE_CITY, WAREHOUSE_STATE)
VALUES (5, '2333 Industrial Drive', 'St. Paul', 'MN');



INSERT INTO lti_warehouse_book (ISBN,WAREHOUSE_ID, QOH)
VALUES ('123-45-678-0', 1, 5000);

INSERT INTO lti_warehouse_book (ISBN,WAREHOUSE_ID, QOH)
VALUES ('123-45-678-3', 1, 6000);

INSERT INTO lti_warehouse_book (ISBN,WAREHOUSE_ID, QOH)
VALUES ('123-45-678-0', 2, 4200);

INSERT INTO lti_warehouse_book (ISBN,WAREHOUSE_ID, QOH)
VALUES ('123-45-678-4', 2, 900);

INSERT INTO lti_warehouse_book (ISBN,WAREHOUSE_ID, QOH)
VALUES ('123-45-678-0', 3, 300);

INSERT INTO lti_warehouse_book (ISBN,WAREHOUSE_ID, QOH)
VALUES ('123-45-678-4', 3, 1200);

INSERT INTO lti_warehouse_book (ISBN,WAREHOUSE_ID, QOH)
VALUES ('123-45-678-3', 4, 600);

INSERT INTO lti_warehouse_book (ISBN,WAREHOUSE_ID, QOH)
VALUES ('123-45-678-5', 5, 900);

