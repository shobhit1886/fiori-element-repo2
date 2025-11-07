using CatalogService as service from './service';
/**
 * Annotations for ProductHeader
 */
annotate service.ProductHeader with {
    ID       @title: 'ID';
    NAME     @title: 'Name';
    STATUS   @title: 'Status';
    SUPPLIER @title: 'Supplier';
    DOM      @title: 'Date of Manufacture';
    INSTOCK  @title: 'In Stock';
    ITEMS    @title: 'Item';
}

// UI code for object ProductHeader
annotate service.ProductHeader with @(
    UI.HeaderInfo     : {
        TypeName      : 'ProductHeader',
        TypeNamePlural: 'ProductHeader',
        Title         : {
            $Type: 'UI.DataField',
            Value: NAME
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: SUPPLIER
        }

    },
    UI.SelectionFields: [
        NAME,
        STATUS,
        SUPPLIER,
        INSTOCK
    ],

    UI.LineItem       : [
        {
            $Type        : 'UI.DataField',
            Label        : 'ID',
            Value        : ID,
            ![@UI.Hidden]: true,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Name',
            Value: NAME,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Status',
            Value: STATUS,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Supplier',
            Value: SUPPLIER,
        },
        {
            $Type: 'UI.DataField',
            Label: 'In Stock',
            Value: INSTOCK,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Date of Manufacture',
            Value: DOM,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Item Number',
            Value: ITEMS.ITEM
        },
        {
            $Type: 'UI.DataField',
            Label: 'Item Name',
            Value: ITEMS.ITEM_NAME
        },
        {
            $Type: 'UI.DataField',
            Label: 'Item Type',
            Value: ITEMS.TYPE_ITEM
        },
        {
            $Type: 'UI.DataField',
            Label: 'Status of Item',
            Value: ITEMS.STATUS_ITEM
        },
        {
            $Type: 'UI.DataField',
            Label: 'Item Stock',
            Value: ITEMS.INSTOCK_ITEM
        },
    ]
);

// UI code for object ProductHeaderObjectPage
annotate service.ProductHeader with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID
            // ![@UI.Hidden] : true,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Name',
                Value: NAME
            },
            {
                $Type: 'UI.DataField',
                Label: 'Status',
                Value: STATUS
            }
        ],
    },
    UI.FieldGroup #GeneratedGroup2: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Supplier',
                Value: SUPPLIER
            },
            {
                $Type: 'UI.DataField',
                Label: 'Date of Manufacture',
                Value: DOM
            },
            {
                $Type: 'UI.DataField',
                Label: 'In Stock',
                Value: INSTOCK
            },

        ]
    },
    UI.FieldGroup #GeneratedGroup3: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Item Number',
                Value: ITEMS.ITEM
            },
            {
                $Type: 'UI.DataField',
                Label: 'Item Name',
                Value: ITEMS.ITEM_NAME
            },
            {
                $Type: 'UI.DataField',
                Label: 'Item Type',
                Value: ITEMS.TYPE_ITEM
            },
            {
                $Type: 'UI.DataField',
                Label: 'Status of Item',
                Value: ITEMS.STATUS_ITEM
            },
            {
                $Type: 'UI.DataField',
                Label: 'Item Stock',
                Value: ITEMS.INSTOCK_ITEM
            },
        ]
    },
    UI.Facets                     : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet2',
            Label : 'Additional Information',
            Target: '@UI.FieldGroup#GeneratedGroup2',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet3',
            Label : 'Item data Information',
            Target: '@UI.FieldGroup#GeneratedGroup3',
        }
    ]
);

// Making Mandatory fields
annotate service.ProductHeader with {
    NAME
    @(Common: {FieldControl: #Mandatory});
    SUPPLIER
    @(Common: {FieldControl: #Mandatory})
};

