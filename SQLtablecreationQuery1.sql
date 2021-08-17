CREATE DATABASE INSURANCECOMPANY
go
use INSURANCECOMPANY
CREATE TABLE [Acc_Admin]
( 
	[AdminID]            varchar(255)  NOT NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL ,
	[BillingAccNumber]   char(18)  NOT NULL ,
	[AdminRole]          varchar(255)  NULL 
)
go

CREATE TABLE [Acc_BillingAcocunt]
( 
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL ,
	[BillingAccNumber]   char(18)  NOT NULL ,
	[BillingFrequency]   integer  NULL ,
	[startDate]          datetime  NULL 
)
go

CREATE TABLE [Accoount_Product]
( 
	[StartDate]          datetime  NULL ,
	[EndDate]            datetime  NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL ,
	[LineOfBusiness]     varchar(255)  NOT NULL ,
	[ProductPlanCode]    varchar(255)  NOT NULL 
)
go

CREATE TABLE [Account]
( 
	[AccountName]        varchar(255)  NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[LocAddress]         varchar(255)  NULL ,
	[NumberOfEmployees]  integer  NULL ,
	[AtivityStatus]      varchar(255)  NULL ,
	[CompanyCode]        integer  NOT NULL 
)
go

CREATE TABLE [AccountAdmin]
( 
	[AdminFirstName]     varchar(255)  NULL ,
	[AdminMiddleName]    varchar(255)  NULL ,
	[AdminLastName]      varchar(255)  NULL ,
	[AdminAddress]       varchar(255)  NULL ,
	[AdminPhone]         varchar(255)  NULL ,
	[AdminEmail]         varchar(255)  NULL ,
	[AdminID]            varchar(255)  NOT NULL 
)
go

CREATE TABLE [AccountAssociate]
( 
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL ,
	[startDate]          datetime  NULL ,
	[endDate]            datetime  NULL ,
	[role]               varchar(255)  NULL ,
	[SitCode]            char(18)  NOT NULL ,
	[AssociateID]        integer  NOT NULL 
)
go

CREATE TABLE [AccountLegacyAlias]
( 
	[AliasSource]        varchar(255)  NULL ,
	[AlaisId]            integer  NOT NULL ,
	[AlaisName]          varchar(255)  NULL ,
	[AliasAddress]       varchar(255)  NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL 
)
go

CREATE TABLE [AccountMember]
( 
	[CustomerID]         integer  NOT NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[startDate]          datetime  NULL ,
	[endDate]            datetime  NULL ,
	[CompanyCode]        integer  NOT NULL 
)
go

CREATE TABLE [AdminRole]
( 
	[AdminRole]          varchar(255)  NOT NULL ,
	[Description]        varchar(255)  NULL 
)
go

CREATE TABLE [Associate]
( 
	[AssociateFirstName] varchar(255)  NULL ,
	[AssociateMiddleName] varchar(255)  NULL ,
	[AssociateLastName]  varchar(255)  NULL ,
	[AssociateDOB]       datetime  NULL ,
	[TenureDate]         char(18)  NULL ,
	[AssociateID]        integer  NOT NULL 
)
go

CREATE TABLE [AssociateService]
( 
	[ServiceType]        varchar(255)  NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL ,
	[SitCode]            char(18)  NOT NULL ,
	[AssociateID]        integer  NOT NULL 
)
go

CREATE TABLE [Benefit_for_Party]
( 
	[CustomerID]         integer  NOT NULL ,
	[ContractNumber]     varchar(255)  NOT NULL ,
	[AlaisId]            integer  NOT NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL ,
	[LineOfBusiness]     varchar(255)  NOT NULL ,
	[ProductPlanCode]    varchar(255)  NOT NULL 
)
go

CREATE TABLE [Billing_Account]
( 
	[BillAccName]        varchar(255)  NULL ,
	[BillingAddress]     varchar(255)  NULL ,
	[BillingZip]         varchar(255)  NULL ,
	[BillingAccNumber]   char(18)  NOT NULL 
)
go

CREATE TABLE [Claim]
( 
	[ClaimNumber]        integer  NOT NULL ,
	[ClaimDate]          datetime  NULL ,
	[CustomerID]         integer  NULL 
)
go

CREATE TABLE [Company]
( 
	[CompanyCode]        integer  NOT NULL ,
	[CompanyName]        varchar(255)  NULL ,
	[LegacyCompanyNo]    integer  NULL 
)
go

CREATE TABLE [Contract]
( 
	[ContractNumber]     varchar(255)  NOT NULL ,
	[AlaisId]            integer  NOT NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL ,
	[CoverageType]       varchar(255)  NULL ,
	[BillingMethod]      varchar(255)  NULL ,
	[LineOfBusiness]     varchar(255)  NOT NULL ,
	[ProductPlanCode]    varchar(255)  NOT NULL ,
	[CustomerID]         integer  NOT NULL 
)
go

CREATE TABLE [Contract_Customer]
( 
	[CustomerID]         integer  NOT NULL ,
	[ContractNumber]     varchar(255)  NOT NULL ,
	[AlaisId]            integer  NOT NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL ,
	[LineOfBusiness]     varchar(255)  NOT NULL ,
	[ProductPlanCode]    varchar(255)  NOT NULL 
)
go

CREATE TABLE [ContractBenefit]
( 
	[ContractNumber]     varchar(255)  NOT NULL ,
	[AlaisId]            integer  NOT NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL ,
	[BenefitType]        varchar(255)  NULL ,
	[LineOfBusiness]     varchar(255)  NOT NULL ,
	[ProductPlanCode]    varchar(255)  NOT NULL ,
	[CustomerID]         integer  NOT NULL 
)
go

CREATE TABLE [ContractPremium]
( 
	[ContractNumber]     varchar(255)  NOT NULL ,
	[AlaisId]            integer  NOT NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL ,
	[LineOfBusiness]     varchar(255)  NOT NULL ,
	[ProductPlanCode]    varchar(255)  NOT NULL ,
	[CustomerID]         integer  NOT NULL 
)
go

CREATE TABLE [Customer]
( 
	[CustLastName]       varchar(255)  NULL ,
	[CustFirstName]      varchar(255)  NULL ,
	[CustMiddleName]     varchar(255)  NULL ,
	[CustomerID]         integer  NOT NULL ,
	[CustDOB]            datetime  NULL ,
	[CustSalutation]     char(18)  NULL ,
	[CustEmail]          varchar(255)  NULL ,
	[Gender]             char(1)  NULL ,
	[CustAddress]        varchar(255)  NULL ,
	[Height]             integer  NULL ,
	[Weight]             integer  NULL ,
	[Physical_Exercise]  varchar(255)  NULL ,
	[Alcohol_Consumption] varchar(255)  NULL ,
	[Drinking]           varchar(255)  NULL ,
	[Smoking]            varchar(255)  NULL 
)
go

CREATE TABLE [Customer_Associate]
( 
	[CustomerID]         integer  NOT NULL ,
	[AssociateID]        integer  NOT NULL 
)
go

CREATE TABLE [Invoice]
( 
	[InvoiceNumber]      integer  NOT NULL ,
	[InvoiceLineNumber]  integer  NULL ,
	[PaymentDate]        datetime  NULL ,
	[PaymentMethod]      varchar(255)  NULL ,
	[BillingAccNumber]   char(18)  NOT NULL ,
	[CustomerID]         integer  NULL ,
	[FinancialInstitution__Name] varchar(255)  NULL ,
	[FinancialInstitution_Address] varchar(255)  NULL 
)
go

CREATE TABLE [ManagerContract]
( 
	[SitCode]            char(18)  NOT NULL ,
	[IssueDate]          datetime  NULL ,
	[ContractType]       varchar(255)  NULL ,
	[AssociateID]        integer  NOT NULL 
)
go

CREATE TABLE [Policy]
( 
	[ContractNumber]     varchar(255)  NOT NULL ,
	[AlaisId]            integer  NOT NULL ,
	[AccountNumber]      integer  NOT NULL ,
	[CompanyCode]        integer  NOT NULL ,
	[PolicyType]         varchar(255)  NULL ,
	[LineOfBusiness]     varchar(255)  NOT NULL ,
	[ProductPlanCode]    varchar(255)  NOT NULL ,
	[CustomerID]         integer  NOT NULL 
)
go

CREATE TABLE [Product]
( 
	[LineOfBusiness]     varchar(255)  NOT NULL ,
	[Description]        varchar(255)  NULL ,
	[ProductPlanName]    char(18)  NULL ,
	[ProductPlanCode]    varchar(255)  NOT NULL ,
	[ProductLicense]     varchar(255)  NULL 
)
go

ALTER TABLE [Acc_Admin]
	ADD CONSTRAINT [XPKAcc_Admin] PRIMARY KEY  CLUSTERED ([AdminID] ASC,[AccountNumber] ASC,[CompanyCode] ASC,[BillingAccNumber] ASC)
go

ALTER TABLE [Acc_BillingAcocunt]
	ADD CONSTRAINT [XPKAcc_BillingAcocunt] PRIMARY KEY  CLUSTERED ([AccountNumber] ASC,[CompanyCode] ASC,[BillingAccNumber] ASC)
go

ALTER TABLE [Accoount_Product]
	ADD CONSTRAINT [XPKAccoount_Product] PRIMARY KEY  CLUSTERED ([AccountNumber] ASC,[CompanyCode] ASC,[LineOfBusiness] ASC,[ProductPlanCode] ASC)
go

ALTER TABLE [Account]
	ADD CONSTRAINT [XPKAccount] PRIMARY KEY  CLUSTERED ([AccountNumber] ASC,[CompanyCode] ASC)
go

ALTER TABLE [AccountAdmin]
	ADD CONSTRAINT [XPKAccountAdmin] PRIMARY KEY  CLUSTERED ([AdminID] ASC)
go

ALTER TABLE [AccountAssociate]
	ADD CONSTRAINT [XPKAccountAssociate] PRIMARY KEY  CLUSTERED ([AccountNumber] ASC,[CompanyCode] ASC,[SitCode] ASC,[AssociateID] ASC)
go

ALTER TABLE [AccountLegacyAlias]
	ADD CONSTRAINT [XPKAccountLegacyAlias] PRIMARY KEY  CLUSTERED ([AlaisId] ASC,[AccountNumber] ASC,[CompanyCode] ASC)
go

ALTER TABLE [AccountMember]
	ADD CONSTRAINT [XPKAccountMember] PRIMARY KEY  CLUSTERED ([CustomerID] ASC,[AccountNumber] ASC,[CompanyCode] ASC)
go

ALTER TABLE [AdminRole]
	ADD CONSTRAINT [XPKAdminRole] PRIMARY KEY  CLUSTERED ([AdminRole] ASC)
go

ALTER TABLE [Associate]
	ADD CONSTRAINT [XPKAssociate] PRIMARY KEY  CLUSTERED ([AssociateID] ASC)
go

ALTER TABLE [AssociateService]
	ADD CONSTRAINT [XPKAssociateService] PRIMARY KEY  CLUSTERED ([AccountNumber] ASC,[CompanyCode] ASC,[SitCode] ASC,[AssociateID] ASC)
go

ALTER TABLE [Benefit_for_Party]
	ADD CONSTRAINT [XPKBenefit_for_Party] PRIMARY KEY  CLUSTERED ([CustomerID] ASC,[ContractNumber] ASC,[AlaisId] ASC,[AccountNumber] ASC,[CompanyCode] ASC,[LineOfBusiness] ASC,[ProductPlanCode] ASC)
go

ALTER TABLE [Billing_Account]
	ADD CONSTRAINT [XPKBilling_Account] PRIMARY KEY  CLUSTERED ([BillingAccNumber] ASC)
go

ALTER TABLE [Claim]
	ADD CONSTRAINT [XPKClaim] PRIMARY KEY  CLUSTERED ([ClaimNumber] ASC)
go

ALTER TABLE [Company]
	ADD CONSTRAINT [XPKCompany] PRIMARY KEY  CLUSTERED ([CompanyCode] ASC)
go

ALTER TABLE [Contract]
	ADD CONSTRAINT [XPKContract] PRIMARY KEY  CLUSTERED ([ContractNumber] ASC,[AlaisId] ASC,[AccountNumber] ASC,[CompanyCode] ASC,[LineOfBusiness] ASC,[ProductPlanCode] ASC,[CustomerID] ASC)
go

ALTER TABLE [Contract_Customer]
	ADD CONSTRAINT [XPKContract_Customer] PRIMARY KEY  CLUSTERED ([CustomerID] ASC,[ContractNumber] ASC,[AlaisId] ASC,[AccountNumber] ASC,[CompanyCode] ASC,[LineOfBusiness] ASC,[ProductPlanCode] ASC)
go

ALTER TABLE [ContractBenefit]
	ADD CONSTRAINT [XPKContractBenefit] PRIMARY KEY  CLUSTERED ([ContractNumber] ASC,[AlaisId] ASC,[AccountNumber] ASC,[CompanyCode] ASC,[LineOfBusiness] ASC,[ProductPlanCode] ASC,[CustomerID] ASC)
go

ALTER TABLE [ContractPremium]
	ADD CONSTRAINT [XPKContractPremium] PRIMARY KEY  CLUSTERED ([ContractNumber] ASC,[AlaisId] ASC,[AccountNumber] ASC,[CompanyCode] ASC,[LineOfBusiness] ASC,[ProductPlanCode] ASC,[CustomerID] ASC)
go

ALTER TABLE [Customer]
	ADD CONSTRAINT [XPKCustomer] PRIMARY KEY  CLUSTERED ([CustomerID] ASC)
go

ALTER TABLE [Customer_Associate]
	ADD CONSTRAINT [XPKCustomer_Associate] PRIMARY KEY  CLUSTERED ([CustomerID] ASC,[AssociateID] ASC)
go

ALTER TABLE [Invoice]
	ADD CONSTRAINT [XPKInvoice] PRIMARY KEY  CLUSTERED ([InvoiceNumber] ASC,[BillingAccNumber] ASC)
go

ALTER TABLE [ManagerContract]
	ADD CONSTRAINT [XPKManagerContract] PRIMARY KEY  CLUSTERED ([SitCode] ASC,[AssociateID] ASC)
go

ALTER TABLE [Policy]
	ADD CONSTRAINT [XPKPolicy] PRIMARY KEY  CLUSTERED ([ContractNumber] ASC,[AlaisId] ASC,[AccountNumber] ASC,[CompanyCode] ASC,[LineOfBusiness] ASC,[ProductPlanCode] ASC,[CustomerID] ASC)
go

ALTER TABLE [Product]
	ADD CONSTRAINT [XPKProduct] PRIMARY KEY  CLUSTERED ([LineOfBusiness] ASC,[ProductPlanCode] ASC)
go


ALTER TABLE [Acc_Admin]
	ADD CONSTRAINT [R_19] FOREIGN KEY ([AdminID]) REFERENCES [AccountAdmin]([AdminID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Acc_Admin]
	ADD CONSTRAINT [R_20] FOREIGN KEY ([AccountNumber],[CompanyCode]) REFERENCES [Account]([AccountNumber],[CompanyCode])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Acc_Admin]
	ADD CONSTRAINT [R_44] FOREIGN KEY ([BillingAccNumber]) REFERENCES [Billing_Account]([BillingAccNumber])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Acc_BillingAcocunt]
	ADD CONSTRAINT [R_17] FOREIGN KEY ([AccountNumber],[CompanyCode]) REFERENCES [Account]([AccountNumber],[CompanyCode])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Acc_BillingAcocunt]
	ADD CONSTRAINT [R_18] FOREIGN KEY ([BillingAccNumber]) REFERENCES [Billing_Account]([BillingAccNumber])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Accoount_Product]
	ADD CONSTRAINT [R_37] FOREIGN KEY ([AccountNumber],[CompanyCode]) REFERENCES [Account]([AccountNumber],[CompanyCode])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Accoount_Product]
	ADD CONSTRAINT [R_38] FOREIGN KEY ([LineOfBusiness],[ProductPlanCode]) REFERENCES [Product]([LineOfBusiness],[ProductPlanCode])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Account]
	ADD CONSTRAINT [R_13] FOREIGN KEY ([CompanyCode]) REFERENCES [Company]([CompanyCode])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Account]
	ADD CONSTRAINT [R_63] FOREIGN KEY ([AccountNumber],[CompanyCode]) REFERENCES [Account]([AccountNumber],[CompanyCode])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [AccountAssociate]
	ADD CONSTRAINT [R_26] FOREIGN KEY ([AccountNumber],[CompanyCode]) REFERENCES [Account]([AccountNumber],[CompanyCode])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [AccountAssociate]
	ADD CONSTRAINT [R_31] FOREIGN KEY ([SitCode],[AssociateID]) REFERENCES [ManagerContract]([SitCode],[AssociateID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [AccountLegacyAlias]
	ADD CONSTRAINT [R_11] FOREIGN KEY ([AccountNumber],[CompanyCode]) REFERENCES [Account]([AccountNumber],[CompanyCode])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [AccountMember]
	ADD CONSTRAINT [R_7] FOREIGN KEY ([CustomerID]) REFERENCES [Customer]([CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [AccountMember]
	ADD CONSTRAINT [R_8] FOREIGN KEY ([AccountNumber],[CompanyCode]) REFERENCES [Account]([AccountNumber],[CompanyCode])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Associate]
	ADD CONSTRAINT [R_64] FOREIGN KEY ([AssociateID]) REFERENCES [Associate]([AssociateID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [AssociateService]
	ADD CONSTRAINT [R_32] FOREIGN KEY ([AccountNumber],[CompanyCode],[SitCode],[AssociateID]) REFERENCES [AccountAssociate]([AccountNumber],[CompanyCode],[SitCode],[AssociateID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Benefit_for_Party]
	ADD CONSTRAINT [R_54] FOREIGN KEY ([CustomerID]) REFERENCES [Customer]([CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Benefit_for_Party]
	ADD CONSTRAINT [R_56] FOREIGN KEY ([ContractNumber],[AlaisId],[AccountNumber],[CompanyCode],[LineOfBusiness],[ProductPlanCode],[CustomerID]) REFERENCES [ContractBenefit]([ContractNumber],[AlaisId],[AccountNumber],[CompanyCode],[LineOfBusiness],[ProductPlanCode],[CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Claim]
	ADD CONSTRAINT [R_48] FOREIGN KEY ([CustomerID]) REFERENCES [Customer]([CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Contract]
	ADD CONSTRAINT [R_41] FOREIGN KEY ([AlaisId],[AccountNumber],[CompanyCode]) REFERENCES [AccountLegacyAlias]([AlaisId],[AccountNumber],[CompanyCode])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Contract]
	ADD CONSTRAINT [R_45] FOREIGN KEY ([LineOfBusiness],[ProductPlanCode]) REFERENCES [Product]([LineOfBusiness],[ProductPlanCode])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Contract]
	ADD CONSTRAINT [R_51] FOREIGN KEY ([CustomerID]) REFERENCES [Customer]([CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Contract_Customer]
	ADD CONSTRAINT [R_52] FOREIGN KEY ([CustomerID]) REFERENCES [Customer]([CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Contract_Customer]
	ADD CONSTRAINT [R_53] FOREIGN KEY ([ContractNumber],[AlaisId],[AccountNumber],[CompanyCode],[LineOfBusiness],[ProductPlanCode],[CustomerID]) REFERENCES [Contract]([ContractNumber],[AlaisId],[AccountNumber],[CompanyCode],[LineOfBusiness],[ProductPlanCode],[CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [ContractBenefit]
	ADD CONSTRAINT [R_42] FOREIGN KEY ([ContractNumber],[AlaisId],[AccountNumber],[CompanyCode],[LineOfBusiness],[ProductPlanCode],[CustomerID]) REFERENCES [Contract]([ContractNumber],[AlaisId],[AccountNumber],[CompanyCode],[LineOfBusiness],[ProductPlanCode],[CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [ContractPremium]
	ADD CONSTRAINT [R_60] FOREIGN KEY ([ContractNumber],[AlaisId],[AccountNumber],[CompanyCode],[LineOfBusiness],[ProductPlanCode],[CustomerID]) REFERENCES [ContractBenefit]([ContractNumber],[AlaisId],[AccountNumber],[CompanyCode],[LineOfBusiness],[ProductPlanCode],[CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Customer_Associate]
	ADD CONSTRAINT [R_61] FOREIGN KEY ([CustomerID]) REFERENCES [Customer]([CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Customer_Associate]
	ADD CONSTRAINT [R_62] FOREIGN KEY ([AssociateID]) REFERENCES [Associate]([AssociateID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Invoice]
	ADD CONSTRAINT [R_46] FOREIGN KEY ([BillingAccNumber]) REFERENCES [Billing_Account]([BillingAccNumber])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [Invoice]
	ADD CONSTRAINT [R_47] FOREIGN KEY ([CustomerID]) REFERENCES [Customer]([CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [ManagerContract]
	ADD CONSTRAINT [R_33] FOREIGN KEY ([AssociateID]) REFERENCES [Associate]([AssociateID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [Policy]
	ADD CONSTRAINT [R_43] FOREIGN KEY ([ContractNumber],[AlaisId],[AccountNumber],[CompanyCode],[LineOfBusiness],[ProductPlanCode],[CustomerID]) REFERENCES [Contract]([ContractNumber],[AlaisId],[AccountNumber],[CompanyCode],[LineOfBusiness],[ProductPlanCode],[CustomerID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


