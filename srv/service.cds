using sap.lcap.prdemo from '../db/schema';

service prdemoService
{
    entity PurchaseOrders as
        projection on prdemo.PurchaseOrders;
}
