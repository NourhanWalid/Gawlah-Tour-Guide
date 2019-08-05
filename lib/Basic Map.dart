import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BasicMap extends StatefulWidget {
  @override
  BasicMapState createState() => BasicMapState();
}

class BasicMapState extends State<BasicMap> {
  Set<Polygon> pset;
  List<Polygon> list = [
    new Polygon(
      polygonId: PolygonId('C3'),
      points: [
        LatLng(14.4, 0),
        LatLng(14.4, 59.4),
        LatLng(-3.4, 59.4),
        LatLng(-3.4, 0),
        LatLng(14.4, 0)
      ],
fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room1'),
      points: [
        LatLng(0, 0),
        LatLng(7.6, 0),
        LatLng(7.6, 7.4),
        LatLng(0, 7.4),
        LatLng(0, 0)
      ],
      fillColor: Colors.transparent
    ),
  
    new Polygon(
      polygonId: PolygonId('room3'),
      points: [
        LatLng(2.2, 7.4),
        LatLng(14.4,7.4),
        LatLng(14.4, 10.2),
        LatLng(2.2, 10.2),
        LatLng(2.2, 7.4)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room4'),
      points: [
        LatLng(2.2,10.2),
        LatLng(14.4, 10.2),
        LatLng(14.4,17),
        LatLng(2.2,17),
        LatLng(2.2, 10.2)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room5'),
      points: [
        LatLng(2.2,17),
        LatLng(14.4,17),
        LatLng(14.4,23.8),
        LatLng(2.2,23.8),
        LatLng(2.2,17)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room6'),
      points: [
        LatLng(2.2,23.8),
        LatLng(8.6,23.8),
        LatLng(8.6,30.6),
        LatLng(2.2,30.6),
        LatLng(2.2,23.8)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room7'),
      points: [
        LatLng(8.6,23.8),
        LatLng(14.4,23.8),
        LatLng(14.4,30.6),
        LatLng(8.6,30.6),
        LatLng(8.6,23.8)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('floor'),
      points: [
        LatLng(2.2,30.6),
        LatLng(14.4,30.6),
        LatLng(14.4,39),
        LatLng(2.2,39),
        LatLng(2.2,30.6)
      ],
      fillColor: Colors.redAccent
    ),
    new Polygon(
      polygonId: PolygonId('room8'),
      points: [
        LatLng(2.2,39),
        LatLng(8.6,39),
        LatLng(8.6,45.8),
        LatLng(2.2,45.8),
        LatLng(2.2,39)
      ],
      fillColor: Colors.transparent
    ),
        new Polygon(
      polygonId: PolygonId('room9'),
      points: [
        LatLng(8.6,39),
        LatLng(14.4,39),
        LatLng(14.4,45.8),
        LatLng(8.6,45.8),
        LatLng(8.6,39)
      ],
      fillColor: Colors.transparent
    ),
        new Polygon(
      polygonId: PolygonId('room10'),
      points: [
        LatLng(2.2,45.8),
        LatLng(14.4,45.8),
        LatLng(14.4,52.6),
        LatLng(2.2,52.6),
        LatLng(2.2,45.8)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room11'),
      points: [
        LatLng(2.2,52.6),
        LatLng(14.4,52.6),
        LatLng(14.4,59.4),
        LatLng(2.2,59.4),
        LatLng(2.2,52.6)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room12'),
      points: [
        LatLng(-3.4,55.8),
        LatLng(2.2,55.8),
        LatLng(2.2,59.4),
        LatLng(-3.4,59.4),
        LatLng(-3.4,55.8)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room13'),
      points: [
        LatLng(-3.4,52.4),
        LatLng(0.6,52.4),
        LatLng(0.6,55.8),
        LatLng(-3.4,55.8),
        LatLng(-3.4,52.4)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room14'),
      points: [
        LatLng(-3.4,49),
        LatLng(0.6,49),
        LatLng(0.6,52.4),
        LatLng(-3.4,52.4),
        LatLng(-3.4,49)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room15'),
      points: [
        LatLng(-3.4,45.7),
        LatLng(0.6,45.7),
        LatLng(0.6,49),
        LatLng(-3.4,49),
        LatLng(-3.4,45.7)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room16'),
      points: [
        LatLng(-3.4,42.4),
        LatLng(0.6,42.4),
        LatLng(0.6,45.7),
        LatLng(-3.4,45.7),
        LatLng(-3.4,42.4)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room17'),
      points: [
        LatLng(-3.4,39),
        LatLng(0.6,39),
        LatLng(0.6,42.4),
        LatLng(-3.4,42.4),
        LatLng(-3.4,39)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room18'),
      points: [
        LatLng(-3.4,34.8),
        LatLng(0.6,34.8),
        LatLng(0.6,39),
        LatLng(-3.4,39),
        LatLng(-3.4,34.8)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room19'),
      points: [
        LatLng(-3.4,30.6),
        LatLng(0.6,30.6),
        LatLng(0.6,34.8),
        LatLng(-3.4,34.8),
        LatLng(-3.4,30.6)
      ],
      fillColor: Colors.transparent
    ),
     new Polygon(
      polygonId: PolygonId('room20'),
      points: [
        LatLng(-3.4,27.2),
        LatLng(0.6,27.2),
        LatLng(0.6,30.6),
        LatLng(-3.4,30.6),
        LatLng(-3.4,27.2)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room21'),
      points: [
        LatLng(-3.4,23.8),
        LatLng(0.6,23.8),
        LatLng(0.6,27.2),
        LatLng(-3.4,27.2),
        LatLng(-3.4,23.8)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room22'),
      points: [
        LatLng(-3.4,20.4),
        LatLng(0.6,20.4),
        LatLng(0.6,23.8),
        LatLng(-3.4,23.8),
        LatLng(-3.4,20.4)
      ],
      fillColor: Colors.transparent
    ),
    new Polygon(
      polygonId: PolygonId('room23'),
      points: [
        LatLng(-3.4,17),
        LatLng(0.6,17),
        LatLng(0.6,20.4),
        LatLng(-3.4,20.4),
        LatLng(-3.4,17)
      ],
      fillColor: Colors.transparent
    ),
  ];

  @override
  void initState() {
    pset = prefix0.Set.from(list);
    super.initState();
  }

  GoogleMapController mapController;

  final LatLng _center = const LatLng(30.6, 2.2);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          mapType: MapType.none,
          polygons: pset,
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
