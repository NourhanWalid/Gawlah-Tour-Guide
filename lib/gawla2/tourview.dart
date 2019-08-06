import 'dart:ui';

//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//import 'package:gawla/gawla1/Cards/itemcard.dart';
import 'package:gawla/gawla1/horizontalspacer.dart';
import 'package:gawla/gawla1/verticalspacer.dart';

class TourView extends StatelessWidget {
  final String tag;
  const TourView({Key key, this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Hero(
                  tag: tag,
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/6/6c/Yusef_Zuleykha.jpg',
                    fit: BoxFit.fill,
                  ),
                )),
            //ConstrainedBox(
            //  constraints: const BoxConstraints.expand(),
            //child: new FlutterLogo()),

            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 70),
                    child: Text(
                      'The history of Islamic Art',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        // height: 40,
                        child: FlutterRatingBar(
                          initialRating: 3,
                          fillColor: Colors.amber,
                          itemSize: 20,
                          borderColor: Colors.blue,
                          allowHalfRating: true, onRatingUpdate: (double rating) {},
                          
                        ),
                      ),
                      HSpacer(0.02),
                      Chip(
                        label: Text(
                          'history',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        backgroundColor: Colors.red,
                      ),
                      HSpacer(0.02),
                      Chip(
                        label: Text(
                          'islam',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        backgroundColor: Colors.blue,
                      ),
                      HSpacer(0.02),
                      Chip(
                        label: Text(
                          'art',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        backgroundColor: Colors.green,
                      ),
                    ],
                  ),
                  VSpacer(0.02),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJZtgnXgSivvLodAn2kMHBlSHJ5fI1rnw2yVZSTT5_B29WMoA3'),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'From the collection of',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                                textAlign: TextAlign.left,
                              ),
                              //Container(width: 5,),
                              Text('The National Library of Egypt',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  VSpacer(0.02),
                  SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height:MediaQuery.of(context).size.width, 
                      child: Column(
                        children: <Widget>[
                          Wrap(
                            children: <Widget>[
                              Text(
                                'Islamic art encompasses the  hhhhh  hhh hhh hhh h hh hhh h h h hh hh hhhhhh h hhh h hh  hh  hh h h h hh  hh h h harts produced in the Is.',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    wordSpacing: 2.0,
                                    height: 1.5,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
            
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
