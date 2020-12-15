var wms_layers = [];


        var lyr_OpenStreetMap_0 = new ol.layer.Tile({
            'title': 'OpenStreetMap',
            'type': 'base',
            'opacity': 1.000000,
            
            
            source: new ol.source.XYZ({
    attributions: ' ',
                url: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png'
            })
        });
var format_shop_dress1_1 = new ol.format.GeoJSON();
var features_shop_dress1_1 = format_shop_dress1_1.readFeatures(json_shop_dress1_1, 
            {dataProjection: 'EPSG:4326', featureProjection: 'EPSG:3857'});
var jsonSource_shop_dress1_1 = new ol.source.Vector({
    attributions: ' ',
});
jsonSource_shop_dress1_1.addFeatures(features_shop_dress1_1);cluster_shop_dress1_1 = new ol.source.Cluster({
  distance: 10,
  source: jsonSource_shop_dress1_1
});
var lyr_shop_dress1_1 = new ol.layer.Vector({
                declutter: true,
                source:cluster_shop_dress1_1, 
                style: style_shop_dress1_1,
                interactive: true,
                title: '<img src="styles/legend/shop_dress1_1.png" /> shop_dress1'
            });

lyr_OpenStreetMap_0.setVisible(true);lyr_shop_dress1_1.setVisible(true);
var layersList = [lyr_OpenStreetMap_0,lyr_shop_dress1_1];
lyr_shop_dress1_1.set('fieldAliases', {'id': 'id', 'name': 'name', 'price': 'price', 'desc': 'desc', 'shop_name': 'shop_name', 'address': 'address', 'latitude': 'latitude', 'longitude': 'longitude', 'img': 'img', 'area': 'area', });
lyr_shop_dress1_1.set('fieldImages', {'id': 'Hidden', 'name': 'TextEdit', 'price': 'Hidden', 'desc': 'Hidden', 'shop_name': 'TextEdit', 'address': 'TextEdit', 'latitude': 'Hidden', 'longitude': 'Hidden', 'img': 'Hidden', 'area': 'Hidden', });
lyr_shop_dress1_1.set('fieldLabels', {'name': 'no label', 'shop_name': 'no label', 'address': 'no label', });
lyr_shop_dress1_1.on('precompose', function(evt) {
    evt.context.globalCompositeOperation = 'normal';
});