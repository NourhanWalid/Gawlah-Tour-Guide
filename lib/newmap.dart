
import 'package:flutter/material.dart';
import 'package:gawlah_tourists_app/Map%20(Nardine%20and%20Ibraheem)/node.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pathfinding/core/grid.dart';
import 'package:pathfinding/finders/jps.dart';
class NewMap extends StatefulWidget {
  NewMap({Key key}) : super(key: key);

  NewMapState createState() => NewMapState();
}

class NewMapState extends State<NewMap> {
  var grid = new Grid(7,14);
  Set<Polygon> pset;
  Set<Marker> markers;
   var path;
 List <Node> nodes2 ;
 
 List<Marker> markersList = new List();
  var jps = new JumpPointFinder();

  GoogleMapController mapController;

  final LatLng _center = const LatLng(30.6, 2.2);


  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
   
  List <Polygon> plist = 
  
  [
       new Polygon(
        polygonId: PolygonId('roomEMC'),
        points: [
          LatLng(0, 0),
          LatLng(0, 7.4),
          LatLng(-14.4, 7.4),
          LatLng(-14.4, 0),
          LatLng(0, 0)
        ],
        fillColor: Colors.transparent),
  ];
@override
void initState() {
   
 nodes2 = new List();
for (double i = -1 ;i >= (-14);i-- )

{
for (double j = 1; j<=7;j++)
{

nodes2.add(new Node(
x:i.toInt(),
y:j.toInt() ,
psition:LatLng(i, j),
bit: 0,
));
}

}


  for (int i = 0; i < nodes2.length; i++) {
      markersList.add(new Marker(
        markerId: MarkerId(i.toString()),
        position: nodes2[i].psition,
        icon: BitmapDescriptor.defaultMarker,
      ));
      grid.nodes.add(nodes2[i].bit);
  }

  pset = Set.from(plist);
  markers =  Set.from(markersList);
  path = jps.findPath(0, 0, 6, 6, grid);
  super.initState();
  
}
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      GoogleMap(
          mapType: MapType.none,
          polygons: pset,
          markers: markers,
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(

          onPressed: (){
            //int size = 10;
  List<List<int>> matrix = new List<List<int>>();

  for (var i = 0; i < 10; i++) {
    List<int> list = new List<int>();

    for (var j = 0; j < 10; j++) {
      list.add(j);
    }

    matrix.add(list);
  }

  print(matrix); 
           //grid.nodes.toString();
           },
        ),
         );
}

}