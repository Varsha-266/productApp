using {com.satinfotech.products as PRODUCT} from '../db/schema';

service sale {
    entity products as projection on PRODUCT.products
}

annotate sale.products with @odata.draft.enabled;
