import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gawla/Mohamed/Example.dart';
import 'package:gawla/Objects/Site.dart';
import 'package:gawla/Objects/Tour%20Item.dart';
import 'package:gawla/gawla1/Cards/itemcard.dart';

class MuseumState extends State<MuseumView> {


  final PageController controllerr =
      PageController(viewportFraction: .9, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        _buildbackground(),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          elevation: 10,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              height: 200,
                              width: 200,
                              child: Image.network(widget.Museum.image))),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .025),
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      widget.Museum.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                        fontSize: 22.0,
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.transparent,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .025,
                  ),
                  Container(
                      child: Container(
                    height: MediaQuery.of(context).size.height * .13,
                    child: Text(
                      widget.Museum.info,
                      style: TextStyle(
                          color: Colors.black,
                          height: 1.4,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                  SizedBox(height: MediaQuery.of(context).size.height * .025),
                  Text('Openning Hours : ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Text(
                    'From : 10 To 15 Today',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .025),
                  Sepertor(1),
                  SizedBox(height: MediaQuery.of(context).size.height * .025),
                  Text(
                    'Tickets : ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .005,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Children : ' + '10 LE',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        'Children : ' + '10 LE',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        'Children : ' + '10 LE',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .02),
                  Sepertor(1),
                  SizedBox(height: MediaQuery.of(context).size.height * .02),
                  Text(
                    'From The Collection : ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .02),
                  Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: PageView.builder(
                        physics: BouncingScrollPhysics(),
                        controller: controllerr,
                        itemCount: widget.items.length,
                        itemBuilder: (context, int currentIndex) {
                          return ItemCard(
                           size: 'small',item: widget.items[currentIndex], 
                           );
                        },
                      )),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * .04,
          top: MediaQuery.of(context).size.height * .05,
          child: IconButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Example()));
            },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
            iconSize: 40,
            color: Colors.white,
          ),
        ),
      ],
    )));
  }

  void initState() {}

  Widget Sepertor(double height) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.black),
              ),
            );
          }),
          direction: Axis.horizontal,
        );
      },
    );
  }

  Widget _buildbackground() {
    return Stack(
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              'http://img.wataninet.com/2017/07/19867087_124775081462324_1074616540_o.jpg',
              fit: BoxFit.cover,
            )),
        Container(
            child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: new Container(
            width: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.width,
            decoration:
                new BoxDecoration(color: Colors.grey.shade200.withOpacity(0.0)),
          ),
        )),
      ],
    );
  }
}

class MuseumView extends StatefulWidget {
  final Site Museum;
  final List<TourItem> items;

  const MuseumView({Key key, this.Museum, this.items}) : super(key: key);

  MuseumState createState() => MuseumState();
}
