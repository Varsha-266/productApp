namespace com.satinfotech.products;
using {cuid, managed} from '@sap/cds/common';

entity products: managed, cuid {
    @title:'product id'
    productid: String(10);
    @title: 'product name'
    productname: String(40);
    @title: 'product price'
    productprice: Integer;
    @title: 'stock'
    stock: Integer;
    @title: 'description'
    description: String(40);
    @title: 'category'
   category: String(6);
}

