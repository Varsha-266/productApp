using {sale.products as products} from './products';

annotate products with @(
    UI.LineItem: [
        {
            $Type:'UI.DataField',
            Value: productid
        },
         {
            $Type:'UI.DataField',
            Value: productname
        },
         {
            $Type:'UI.DataField',
            Value: productprice
        },
         {
            $Type:'UI.DataField',
            Value: stock
        },
        {
            $Type:'UI.DataField',
            Value: description
        },
        {
            $Type:'UI.DataField',
            Value: category
        },
        
    ]
);

annotate products with @(
    UI.FieldGroup #products: {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type:'UI.DataField',
            Value: productid
        },
         {
            $Type:'UI.DataField',
            Value: productname
        },
         {
            $Type:'UI.DataField',
            Value: productprice
        },
         {
            $Type:'UI.DataField',
            Value: stock
        },
        {
            $Type:'UI.DataField',
            Value: description
        },
        {
            $Type:'UI.DataField',
            Value: category
        },
    ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#products',
        },
    ],
    
);
