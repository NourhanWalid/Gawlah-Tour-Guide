import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gawla/Basic%20Map.dart';
import 'package:gawla/gawla1/verticalspacer.dart';

class TourPage1 extends StatefulWidget {
  TourPage1({Key key}) : super(key: key);

  _TourPage1State createState() => _TourPage1State();
}

class _TourPage1State extends State<TourPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 120,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Items in this tour',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
            //VSpacer(0.05),
            Container(
      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.width*0.85,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 200.0,
                color: Colors.red,
              ),
              Container(
                width: 200.0,
                color: Colors.blue,
              ),
              Container(
                width: 200.0,
                color: Colors.green,
              ),
              Container(
                width: 200.0,
                color: Colors.yellow,
              ),
              Container(
                width: 200.0,
                color: Colors.orange,
              ),],
    )),

    VSpacer(0.06),
     Text('Tour Map',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),

      Container(
        height: MediaQuery.of(context).size.height*0.1,
      width: MediaQuery.of(context).size.width*0.85,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: BasicMap(),



      ),


            
          ],
        ),
      ),
    );
  }
}
