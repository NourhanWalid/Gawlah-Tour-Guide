import 'package:flutter/material.dart';
import 'package:gawla/Mohamed/Artist%20Profile.dart';
import 'package:gawla/Mohamed/Muesum.dart';
import 'package:gawla/Objects/Site.dart';
import 'package:gawla/Objects/Tour%20Item.dart';
import 'package:gawla/gawla1/Cards/itemcard.dart';
import 'package:gawla/gawla2/palette.dart';
import 'package:gawla/gawla2/splitter.dart';
import 'package:gawla/gawla2/test.dart';
import 'package:gawla/gawla2/tourview.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
  Site museum = new Site(
      name: 'Egyptian Museum',
      image:
          'https://pbs.twimg.com/profile_images/822514032917757952/h9nWqRzh_400x400.jpg',
      info: '.....',
      type: 'Museum',
      items: [
        new TourItem(
            info: '.........',
            name: 'abo galmbo',
            image:
                'https://mpng.pngfly.com/20181118/yjp/kisspng-logos-ancient-egypt-egyptian-language-egyptian-mus-logo-museu-egipcio-by-pearllite-on-deviantart-5bf18a50adb709.1176919915425562407116.jpg',
            counrty: 'Mother Russia',
            id: 121999,
            period: '......',
            location: LatLng(17, 76),
                )
      ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: MuseumView()));
  }
}
