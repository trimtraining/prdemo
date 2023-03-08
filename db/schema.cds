namespace sap.lcap.prdemo;

using { managed } from '@sap/cds/common';

entity PurchaseOrders : managed
{
    key ID : UUID
        @Core.Computed;
    items : Composition of many Items on items.purchaseOrders = $self;
    RequestId : String(100);
    VendorCode : String(100);
    CompanyCode : String(100);
    PurchaseGroup : String(100);
    PurchaseOrg : String(100);
    Status : String(100);
}

entity Items : managed
{
    key ID : UUID
        @Core.Computed;
    purchaseOrders : Association to one PurchaseOrders;
    MaterialCode : String(100);
    MaterialDesc : String(100);
    Quantity : Integer;
    Price : Decimal(7,2);
}
