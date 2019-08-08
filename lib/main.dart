import 'package:flutter/material.dart';
import 'package:gawla/gawla1/tourview2.dart';
import 'package:gawla/gawla2/TourPage1.dart';
import 'package:gawla/gawla2/tour_creation.dart';





void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    debugShowCheckedModeBanner: false;
    return  Scaffold(body:
    TourCreation());
  }

}
