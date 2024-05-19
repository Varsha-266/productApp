sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/satinfotech/products/productapp/test/integration/FirstJourney',
		'com/satinfotech/products/productapp/test/integration/pages/productsList',
		'com/satinfotech/products/productapp/test/integration/pages/productsObjectPage'
    ],
    function(JourneyRunner, opaJourney, productsList, productsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/satinfotech/products/productapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheproductsList: productsList,
					onTheproductsObjectPage: productsObjectPage
                }
            },
            opaJourney.run
        );
    }
);