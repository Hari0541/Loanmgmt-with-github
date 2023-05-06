CREATE DATABASE IF NOT EXISTS db_loan_mgmt_system;
USE db_loan_mgmt_system;

DROP TABLE IF EXISTS tbl_customer_details;
CREATE TABLE IF NOT EXISTS tbl_customer_details (
  CustId int(11) NOT NULL AUTO_INCREMENT,
  Name varchar(100) DEFAULT NULL,
  FirstName varchar(100) DEFAULT NULL,
  LastName varchar(100) DEFAULT NULL,
  CompanyName varchar(200) DEFAULT NULL,
  Designation varchar(100) DEFAULT NULL,
  Salary decimal(10,2) DEFAULT 0.00,
  Email varchar(100) DEFAULT NULL,
  Phone varchar(100) DEFAULT NULL,
  Password varchar(100) DEFAULT NULL,
  Roles varchar(100) DEFAULT NULL,
  PRIMARY KEY (CustId)
);

INSERT INTO tbl_customer_details (CustId, Name, FirstName, LastName, CompanyName, Designation, Salary, Email, Phone, Password, Roles) VALUES
(1, 'bharath', 'Bharath', 'Burugupally', 'ABC Infotech', 'Software Developer', '62700.00', 'bharath@gmail.com', '7866756756', 'bharath@123', 'Management'),
(2, 'shiva', 'Pandula', 'Shiva', 'XYZ Infotech', 'Software Developer', '62800.00', 'shiva@gmail.com', '3424343434', 'shiva@123', 'Customer');


DROP TABLE IF EXISTS tbl_loan_details;
CREATE TABLE IF NOT EXISTS tbl_loan_details (
  ID int(11) NOT NULL AUTO_INCREMENT,
  OfferId int(11) DEFAULT NULL,
  OfferName varchar(300) DEFAULT NULL,
  RateOfInt decimal(10,2) DEFAULT NULL,
  Duration decimal(10,2) DEFAULT NULL,
  LoanAmt decimal(10,2) DEFAULT NULL,
  PayAmt decimal(10,2) DEFAULT NULL,
  DueAmt decimal(10,2) DEFAULT NULL,
  CustID int(11) DEFAULT NULL,
  STATUS varchar(100) DEFAULT NULL,
  LOAN_START_DT date DEFAULT NULL,
  PRIMARY KEY (ID)
);


INSERT INTO tbl_loan_details (ID, OfferId, OfferName, RateOfInt, Duration, LoanAmt, PayAmt, DueAmt, CustID, STATUS, LOAN_START_DT) VALUES
(11, 1, 'Home Loan ', '5.00', '2.00', '200000.00', '0', '210000.00', 2, 'Approved', '2023-04-26'),
(12, 1, 'Home Loan ', '5.00', '2.00', '200000.00', '0.00', '210000.00', 3, 'PENDING', '2023-04-24'),
(13, 2, 'Personal Loans', '17.75', '5.00', '200000.00', '0.00', '235500.00', 2, 'Cancel', '2023-04-26'),
(14, 2, 'Personal Loans', '17.75', '5.00', '200000.00', '0.00', '235500.00', 2, 'Cancel', '2023-04-26'),
(15, 2, 'Personal Loans', '17.75', '5.00', '200000.00', '0.00', '235500.00', 2, 'Cancel', '2023-04-26');

DROP TABLE IF EXISTS tbl_offer_details;
CREATE TABLE IF NOT EXISTS tbl_offer_details (
  OfferId int(11) NOT NULL,
  OfferName varchar(300) DEFAULT NULL,
  RateOfInt decimal(10,2) DEFAULT NULL,
  Duration decimal(10,2) DEFAULT NULL,
  LoanAmt decimal(10,2) DEFAULT NULL
);


INSERT INTO tbl_offer_details (OfferId, OfferName, RateOfInt, Duration, LoanAmt) VALUES
(1, 'Home Loans', '5.00', '2.00', '200000.00'),
(2, 'Personal Loans', '17.75', '5.00', '200000.00'),
(3, 'Car Loans', '10.00', '3.00', '200000.00');
COMMIT;