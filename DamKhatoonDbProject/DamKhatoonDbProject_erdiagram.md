```mermaid
erDiagram
  "dbo.City" {
    Id int PK
    Name nvarchar(100)(NULL) 
    CityType int 
    ProvinceId int(NULL) 
    CountyId int(NULL) 
    DistrictId int(NULL) 
    AmarCode nvarchar(50)(NULL) 
  }
  "dbo.Counties" {
    Id int PK
    Name nvarchar(100)(NULL) 
    OstanId int 
    AmarCode int 
  }
  "dbo.Districts" {
    Id int PK
    Name nvarchar(100)(NULL) 
    ProvinceId int FK
    CountyId int FK
    AmarCode nvarchar(50)(NULL) 
  }
  "dbo.Districts" }o--|| "dbo.Provinces" : FK__Districts__Province
  "dbo.Districts" }o--|| "dbo.Counties" : FK_Districts_Counties
  "dbo.Employees" {
    Id int PK
    Name nvarchar(200) 
    Role nvarchar(100)(NULL) 
    SalaryAmount decimal(18-2)(NULL) 
    IsCommissioned bit 
    CommissionPercent decimal(5-2)(NULL) 
    Notes nvarchar(max)(NULL) 
    CreatedAt datetime 
    UpdatedAt datetime 
    Version int 
    IsDeleted bit 
  }
  "dbo.InvoiceLines" {
    Id int PK
    InvoiceId int FK
    ProductId int(NULL) 
    Description nvarchar(500)(NULL) 
    Quantity decimal(18-2) 
    UnitPrice decimal(18-2) 
    LineTotal decimal(18-2) 
    PersonId int(NULL) FK
    SellerEmployeeId int(NULL) 
    IsDeleted bit 
    CreatedAt datetime 
    UpdatedAt datetime 
  }
  "dbo.InvoiceLines" }o--|| "dbo.Invoices" : FK_InvoiceLines_Invoices
  "dbo.InvoiceLines" }o--o| "dbo.Persons" : FK_InvoiceLines_Persons
  "dbo.Invoices" {
    Id int PK
    InvoiceNo nvarchar(50) 
    Type nvarchar(20) 
    SellerEmployeeId int(NULL) FK
    TotalAmount decimal(18-2) 
    Status nvarchar(50) 
    Notes nvarchar(max)(NULL) 
    IsDeleted bit 
    CreatedAt datetime 
    UpdatedAt datetime 
    Version decimal(18-2) 
    PersonId int(NULL) FK
  }
  "dbo.Invoices" }o--o| "dbo.Employees" : FK_Invoices_Employees
  "dbo.Invoices" }o--o| "dbo.Persons" : FK_Invoices_Persons
  "dbo.PaymentAllocations" {
    Id int PK
    PaymentId int 
    InvoiceId int 
    AmountAllocated decimal(18-2) 
    CreatedAt datetime 
    UpdatedAt datetime 
  }
  "dbo.Payments" {
    Id int PK
    Amount decimal(18-2) 
    Direction nvarchar(20) 
    PaymentMethod nvarchar(50)(NULL) 
    FromPersonId int(NULL) 
    CreatedAt datetime 
    UpdatedAt datetime 
    ToPersonId int(NULL) 
    Reference nvarchar(100)(NULL) 
    Notes nvarchar(max)(NULL) 
    InvoiceId int(NULL) 
  }
  "dbo.Persons" {
    Id int PK
    PersonType nvarchar(20) 
    FirstName nvarchar(100)(NULL) 
    LastName nvarchar(100)(NULL) 
    CompanyName nvarchar(200)(NULL) 
    NationalId nvarchar(20)(NULL) 
    EconomicCode nvarchar(20)(NULL) 
    RegistrationNumber nvarchar(20)(NULL) 
    Phone nvarchar(20)(NULL) 
    Mobile nvarchar(20)(NULL) 
    Email nvarchar(100)(NULL) 
    Address nvarchar(500)(NULL) 
    PostalCode nvarchar(20)(NULL) 
    City nvarchar(100)(NULL) 
    Province nvarchar(100)(NULL) 
    IsActive bit 
    Notes nvarchar(max)(NULL) 
    CreatedAt datetime 
    UpdatedAt datetime 
  }
  "dbo.Products" {
    Id int PK
    Name nvarchar(200) 
    Code nvarchar(50)(NULL) 
    Description nvarchar(max)(NULL) 
    Unit nvarchar(20)(NULL) 
    DefaultPrice decimal(18-2)(NULL) 
    Version int 
    IsDeleted bit 
    Price decimal(18-2)(NULL) 
    Product_Code int 
    TypeId int FK
    TypeName nvarchar(max) 
    CreatedAt datetime2 
    UpdatedAt datetime2 
  }
  "dbo.Products" }o--|| "dbo.Products_Type" : FK_Products_Products_Type
  "dbo.Products_Type" {
    Id int PK
    Name nvarchar(100) 
    Unit nvarchar(max) 
    Code int 
    ParentId int(NULL) FK
    IsDeleted bit 
    CreatedAt datetime2 
    UpdatedAt datetime2 
  }
  "dbo.Products_Type" }o--o| "dbo.Products_Type" : FK_Products_Type_Parent
  "dbo.Provinces" {
    Id int PK
    Name nvarchar(100)(NULL) 
    AmarCode int 
  }
  "dbo.RuralDistricts" {
    Id int PK
    Name nvarchar(100) 
    OstanId int 
    ShahrestanId int 
    DistrictId int 
    AmarCode bigint 
    CenterVillageId int(NULL) 
    CreatedAt datetime2 
    UpdatedAt datetime2 
    ProvinceId int(NULL) 
  }
  "dbo.Users" {
    Id int PK
    Username nvarchar(50) 
    Password nvarchar(255) 
    Name nvarchar(100) 
    Age int 
    Email nvarchar(100) 
    LastLogin int 
    DataCreated int 
    Rank nvarchar(50) 
    PasswordResetToken nvarchar(max)(NULL) 
    ResetTokenExpiry datetime2(NULL) 
    RowVersion rowversion 
    PasswordHash nvarchar(max) 
  }
  "dbo.Villages" {
    Id int PK
    Name nvarchar(200) 
    AbadiType nvarchar(50)(NULL) 
    Diag int(NULL) 
    OstanId int 
    ShahrestanId int 
    BakhshId int 
    DehestanId int 
    AmarCode bigint(NULL) 
    IsCenter bit(NULL) 
    Population int(NULL) 
    Households int(NULL) 
    Latitude float(NULL) 
    Longitude float(NULL) 
    CreatedAt datetime(NULL) 
  }
```
