use INSURANCECOMPANY;
select * from company;


insert into company(companycode,companyname,legacycompanyno) 
values('12101', 'TCS pvt. ltd',1001),
		('12102', 'LTI pvt. ltd',1002),
		('12108', 'Ember pvt. Ltd',1003);
		

------------------------------------

select * from account;

insert into account(accountname,accountnumber,locaddress,ativitystatus,companycode)
values ('XYZcorp',100044,'Southwest','Active',12101),
		('JKLInd.',100232,'Northeast','Active',12102),
		('UScorp',100502,'Northwest','Active',12108);


----------------------------------------------

select * from AccountMember;

insert into AccountMember (CustomerID,AccountNumber,startDate,endDate,CompanyCode)
values	(101,100232,'2013-12-14','2030-01-13',12102),
		(102,100502,'2014-04-19','2021-07-01',12108),
		(103,100044,'2009-07-07','2027-08-09',12101);


select * from billing_account;
insert into Billing_Account(BillAccName, BillingAddress, BillingZip, BillingAccNumber)
values('WED45R','Southeast',07310, 700034),
	   ('DBR93G','Southwest',08350, 700074),
		('BTX77T','Northeast',04569, 800054),
		('AYRN5R','Northwest',01324, 700121);

-------------------------------------------------------------------------------------
select * from Acc_BillingAcocunt;
insert into Acc_BillingAcocunt(AccountNumber,CompanyCode,BillingAccNumber,BillingFrequency,startDate)
values(100044, 12101,700034, 10, '2011-06-24'),
		(100232, 12102,700074, 2, '2021-06-24'),
		(100502, 12108,700121, 100, '2001-04-14'),
		(100082, 12101,800054, 23, '2008-11-11');

select * from AccountAdmin;
insert into AccountAdmin(AdminFirstName,AdminMiddleName,AdminLastName, AdminAddress,AdminPhone,AdminEmail,AdminID)
values('Chandler', 'Bob', 'Bing', '30 Ave NY',123459,'chandbing@gmail.com', 482764),
	('Monica', 'John', 'Gilmore', '78 Ave street',262545,'monica@gmail.com', 121754),
	('Hermoine', 'William', 'Granger', '10 Ave NY',969087,'granger@gmail.com', 500600);

select * from Acc_Admin;
insert into Acc_Admin(AdminID,AccountNumber,CompanyCode,BillingAccNumber,AdminRole)
values(782317,100044,12101,700034, 'Account Admin'),
		(482764,100082,12101,800054,'Billing Account Admin'),
		(121754,100232,12102,700074, 'Account Admin'),
		(500600,100502,12108,700121,'Billing Account Admin');
select * from AccountLegacyAlias;
ALTER TABLE AccountLegacyAlias DROP COLUMN AliasSource;
insert into AccountLegacyAlias(AlaisId, AlaisName, AliasAddress, AccountNumber, CompanyCode)
values(11,'aaca','30 NWPT PKWY', 100044, 12101),
		(4587,'bcnda', '40 NWPT PKWY', 100082,12101),
		(198, 'cadbra' ,'12 ave Ranch Sf', 100232, 12102),
		(5073, 'bumra', '305 west street' , 100502,12108);

select * from Product;
ALTER TABLE product DROP COLUMN description;
insert into Product(LineOfBusiness, ProductPlanName, ProductPlanCode, ProductLicense)
values('personal', 'MediCare Insurance', 'MCI847','AEF85462'),
		('personal', 'Life Insurance', 'LI12465','CDH5468'),
		('personal', 'Accident Insurance', 'AA45467','11125A');

select * from Accoount_Product;

insert into Accoount_Product(StartDate,EndDate,AccountNumber,CompanyCode,LineOfBusiness,ProductPlanCode)
values('2012-09-09','2025-09-08',100044,12101,'personal','MCI847'),
	  ('2011-11-26','2030-11-26',100082,12101,'personal','LI12465'),
	  ('2010-11-13','2021-11-13',100232,12102,'personal','AA45467'),
	  ('2001-03-19','2023-03-18',100502,12108,'personal','LI12465');

select * from associate;

insert into associate(AssociateFirstName,AssociateMiddleName,AssociateLastName,AssociateDOB,AssociateID)
values	('Andy','Mark','Samberg','1981-02-12',70001),
		('Jake','Harry','Styles','1972-01-07',70002),
		('Ned','Anthony','Stark','1969-12-02',70003);
select * from Customer;	
select * from Customer_Associate;
insert into Customer_Associate(CustomerID, AssociateID)
values(100,70001),
	(101,70002),
	(102,70003),
	(103,70002);

select * from ManagerContract;
insert into ManagerContract(SitCode, IssueDate, ContractType, AssociateID)
values('600096', '2013-04-12', 'Bilateral Contract', 70001),
		('400082','2012-07-02', 'Unilateral Contract', 70002),
		('400037','2015-03-29' , 'Unilateral Contract', 70003);
select * from AccountAssociate;
select * from Account;
insert into AccountAssociate(AccountNumber, CompanyCode, startDate, endDate, role, SitCode, AssociateID)
values(100044,12101,'2016-09-16','2017-02-01','Manager','600096','70001'),
		(100082,12101,'2008-03-06','2017-08-01','Associate','400082','70002'),
		(100232,12102,'2010 - 05-06','2018-06-30','Manager','400037','70003');

select * from invoice;

insert into invoice(InvoiceNumber,InvoiceLineNumber,PaymentDate,PaymentMethod,BillingAccNumber,CustomerID,FinancialInstitution__Name,FinancialInstitution_Address)
values	(3001,20,'2020-07-12','credit card',700034,100,'HDFC','Southeast'),
		(3002,90,'2021-08-14','Debit card',700074,101,'SBI','Southwest'),
		(3003,100,'2020-12-31','net banking',700121,102,'HDFC','Northwest'),
		(3004,120,'2019-08-01','credit card',800054,103,'PNC','Northeast');


select * from claim;
insert into Claim(ClaimNumber,ClaimDate,CustomerID)
values(1245876,'2011-03-19', 100),
		(168549,'2015-08-04', 101),
		(4562187,'2019-12-18', 101),
		(1230258,'2017-06-22',102);
select * from Product;
select * from AccountLegacyAlias;
select * from contract;
select * from Account;
SELECT * from Accoount_Product;
insert into contract(ContractNumber,AlaisId,AccountNumber,CompanyCode,CoverageType,BillingMethod,LineOfBusiness,ProductPlanCode,CustomerID)
values('AEFG452369HJU', 11, 100044, 12101, 'health insurance', 'Standard Rate','personal', 'AA45467', 101),
		('HEWC645462WE', 198, 100232, 12102, 'health insurance', 'Standard Rate','personal', 'AA45467', 101),
		('ASTDFVT68435SQW', 5073, 100502, 12108, 'health insurance', 'Standard Rate','personal', 'LI12465', 102);

select * from ContractBenefit;
insert into ContractBenefit(ContractNumber,AlaisId,AccountNumber,CompanyCode,BenefitType,LineOfBusiness,ProductPlanCode,CustomerID)
values('AEFG452369HJU', 11, 100044, 12101,'90% risk coverage' , 'personal', 'AA45467', 101),
		('HEWC645462WE', 198, 100232, 12102,'100% risk coverage','personal', 'AA45467', 101),
		('ASTDFVT68435SQW', 5073, 100502, 12108,'90% risk coverage','personal', 'LI12465', 102);

select * from Benefit_for_Party;
insert into Benefit_for_Party(CustomerID,ContractNumber,AlaisId,AccountNumber,CompanyCode,LineOfBusiness,ProductPlanCode)
values(101,'AEFG452369HJU', 11, 100044, 12101, 'personal', 'AA45467' ),
		(101, 'HEWC645462WE' , 198, 100232, 12102, 'personal', 'AA45467' ),
		(102, 'ASTDFVT68435SQW' , 5073, 100502, 12108, 'personal', 'LI12465');
select * from Policy;
insert into Policy(ContractNumber,AlaisId,AccountNumber, CompanyCode, PolicyType, LineOfBusiness, ProductPlanCode,CustomerID)
values('AEFG452369HJU', 11,100044, 12101,'Individual Health Insurance', 'personal', 'AA45467',101),
		('HEWC645462WE', 198,100232, 12102,'Individual Health Insurance', 'personal', 'AA45467',101),
		('ASTDFVT68435SQW', 5073, 100502, 12108,'Individual Health Insurance', 'personal', 'LI12465',102);

select * from ContractPremium;

insert into contractPremium(ContractNumber,AlaisId,AccountNumber,CompanyCode,LineOfBusiness,ProductPlanCode,CustomerID)
values
	('AEFG452369HJU', 11,100044, 12101, 'personal', 'AA45467',101),
		('HEWC645462WE', 198,100232, 12102, 'personal', 'AA45467',101),
		('ASTDFVT68435SQW', 5073, 100502, 12108, 'personal', 'LI12465',102);



select * from Contract_Customer;


insert into Contract_Customer(CustomerID,ContractNumber,AlaisId,AccountNumber,CompanyCode,LineOfBusiness,ProductPlanCode)
values
		(101,'AEFG452369HJU',11,100044,12101,'personal','AA45467'),
		(101,'HEWC645462WE',198,100232,12102,'personal','AA45467'),
		(102,'ASTDFVT68435SQW',5073,100502,12108,'personal','LI12465');


select * from associate;
select * from AccountAssociate;

select * from AssociateService;
insert into AssociateService(ServiceType,AccountNumber,CompanyCode,SitCode,AssociateID)
values	('Full time',100044,12101,600096,70001),
		('Full time',100082,12101,400082,70002),
		('Full time',100232,12102,400037,70003);
