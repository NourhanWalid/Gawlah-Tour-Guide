import 'package:flutter/material.dart';
import 'package:gawla/Mohamed/Artist%20Profile.dart';
import 'package:gawla/gawla1/Cards/itemcard.dart';
import 'package:gawla/gawla2/palette.dart';
import 'package:gawla/gawla2/splitter.dart';
import 'package:gawla/gawla2/test.dart';
import 'package:gawla/gawla2/tourview.dart';

import 'App Slider Intro.dart';
import 'gawla1/itemview.dart';
import 'gawla1/itemview2.dart';
import 'gawla2/tourcard.dart';

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
    return Scaffold(body: Center(child: ArtistProfile(tag: 'hey',image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project_%28454045%29.jpg/810px-Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project_%28454045%29.jpg',)));
  }
}
