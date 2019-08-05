import 'package:flutter/material.dart';
import 'package:gawla/gawla1/Cards/itemcard.dart';
import 'package:gawla/gawla2/palette.dart';
import 'package:gawla/gawla2/splitter.dart';
import 'package:gawla/gawla2/test.dart';
import 'package:gawla/gawla2/tourview.dart';

import 'gawla1/itemview.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:TourView(size: 'small',)
    );

      
    

    
  }
}
