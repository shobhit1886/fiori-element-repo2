sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/ProductHeaderList",
	"project1/test/integration/pages/ProductHeaderObjectPage",
	"project1/test/integration/pages/PrItemsObjectPage"
], function (JourneyRunner, ProductHeaderList, ProductHeaderObjectPage, PrItemsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flp.html#app-preview',
        pages: {
			onTheProductHeaderList: ProductHeaderList,
			onTheProductHeaderObjectPage: ProductHeaderObjectPage,
			onThePrItemsObjectPage: PrItemsObjectPage
        },
        async: true
    });

    return runner;
});

