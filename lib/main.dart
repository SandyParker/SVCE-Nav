import 'package:flutter/material.dart';
import 'package:mapbox_flutter/mapbox_flutter.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import "package:latlong2/latlong.dart" as latLng;
import 'package:flutter_map/flutter_map.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text('MapBox')),
        body: Stack(
          children: [
            FlutterMap(
              options: new MapOptions(
                  center: latLng.LatLng(27.175002, 78.0421170902921),
                  minZoom: 17.0),
              children: [
                TileLayer(
                    urlTemplate: "https://api.mapbox.com/styles/v1/sandy-parker/clmkof8hw01vn01r79wf332cu/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2FuZHktcGFya2VyIiwiYSI6ImNsbWtvYnFrZjA0dnIyanFncTZsc3BwNmkifQ.giPjydmN8Iv6Gj_-zWJBEA",
                    userAgentPackageName: 'com.example.svce_navi',
                    additionalOptions: {
                      'accessToken':
                          'pk.eyJ1Ijoic2FuZHktcGFya2VyIiwiYSI6ImNsbWtvYnFrZjA0dnIyanFncTZsc3BwNmkifQ.giPjydmN8Iv6Gj_-zWJBEA',
                      'id': 'mapbox.mapbox-streets-v7'
                    })
              ],
            ),
          ],
        ));
  }
}
