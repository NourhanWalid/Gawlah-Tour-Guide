import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gawla/gawla1/horizontalspacer.dart';
import 'package:gawla/gawla1/verticalspacer.dart';

class Splitter extends StatelessWidget {
  const Splitter({Key key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
     
        home: DefaultTabController(
            length: 2,
            child: Scaffold(

                body: Container(
                  color: Colors.red,
                  //height:MediaQuery.of(context).size.height*0.4 ,
                      child: Column(
                        
                        children: <Widget>[
                 //VSpacer(0.6),
                  PreferredSize(
                      preferredSize: Size.fromHeight(50.0),
                      child: 
                      TabBar(
                        labelColor: Colors.black,
                        tabs: [
                          Tab(
                            
                            text: 'Info',
                          ),
                          Tab(
                            text: 'Reviews',
                          ),
                          
                        ], // list of tabs
                      ),
                  ),
                  //TabBarView(children: [ImageList(),])
                  TabBarView(
                        children: [
                          Container(
                            color: Colors.transparent,
                            child: Center(child: Text('Tab1')),
                          ),
                          Container(
                            color: Colors.transparent,
                            child: Center(child: Text('Tab2')),
                          ),
                          
                        ],
                      ),
                  
                ]),
                    ))));
  }
  } 
