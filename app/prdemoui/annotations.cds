using prdemoService as service from '../../srv/service';
using from '../../db/schema';

annotate service.PurchaseOrders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'RequestId',
            Value : RequestId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'VendorCode',
            Value : VendorCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CompanyCode',
            Value : CompanyCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PurchaseGroup',
            Value : PurchaseGroup,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PurchaseOrg',
            Value : PurchaseOrg,
        },
    ]
);
annotate service.PurchaseOrders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'RequestId',
                Value : RequestId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VendorCode',
                Value : VendorCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompanyCode',
                Value : CompanyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PurchaseGroup',
                Value : PurchaseGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PurchaseOrg',
                Value : PurchaseOrg,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Line Items',
            ID : 'LineItems',
            Target : 'items/@UI.LineItem#LineItems',
        },
    ]
);
annotate service.PurchaseOrders with @(
    UI.SelectionFields : [
        CompanyCode,
        VendorCode,
        Status,
    ]
);
annotate service.PurchaseOrders with {
    CompanyCode @Common.Label : 'CompanyCode'
};
annotate service.PurchaseOrders with {
    VendorCode @Common.Label : 'VendorCode'
};
annotate service.PurchaseOrders with {
    Status @Common.Label : 'Status'
};
annotate service.Items with @(
    UI.LineItem #LineItems : [
        {
            $Type : 'UI.DataField',
            Value : MaterialCode,
            Label : 'MaterialCode',
        },{
            $Type : 'UI.DataField',
            Value : MaterialDesc,
            Label : 'MaterialDesc',
        },{
            $Type : 'UI.DataField',
            Value : Price,
            Label : 'Price',
        },{
            $Type : 'UI.DataField',
            Value : Quantity,
            Label : 'Quantity',
        },]
);
