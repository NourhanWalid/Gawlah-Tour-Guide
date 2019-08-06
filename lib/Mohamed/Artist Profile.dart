import 'package:flutter/material.dart';
import 'package:gawla/gawla1/Cards/itemcard.dart';
import 'Example.dart';
import 'package:parallax_image/parallax_image.dart';
import 'package:share/share.dart';

class ArtistProfile extends StatefulWidget {
  ArtistProfile({Key key, this.image, this.tag}) : super(key: key);

  final String image;
  final String tag;

  ArtistProfileState createState() => ArtistProfileState(this.image, this.tag);
}

class ArtistProfileState extends State<ArtistProfile> {
  ArtistProfileState(this.image, this.tag);

  final String image;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: tag,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image, scale: 200.0),
                      fit: BoxFit.fitHeight)),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.07,
            left: MediaQuery.of(context).size.width*0.1,
            child: Container(
              width: 220,
              child: Column(
                children: <Widget>[
                  Text('Vincent Van Gogh',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontStyle: FontStyle.italic,
                          backgroundColor: Colors.transparent)),
                ],
              ),
            ),
          ),
          Positioned(
            top:MediaQuery.of(context).size.height*0.38,
            left:MediaQuery.of(context).size.width*0.11 ,
            child: Container(
              width:MediaQuery.of(context).size.width*0.75,
              child: Column(
                children: <Widget>[
                  Text(
                    'Vincent Willem van Gogh (30 March 1853 – 29 July 1890) was a Dutch post-impressionist painter who is among the most famous and influential figures in the history of Western art.',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height*0.03,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: PageView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: PageController(keepPage: true,viewportFraction:0.5712),
                pageSnapping: false,
                children: <Widget>[
                 ItemCard(size: 'small',),
                 ItemCard(size: 'small',),
                 ItemCard(size: 'small',),
                 ItemCard(size: 'small',),
                 ItemCard(size: 'small',),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.038,
            left: MediaQuery.of(context).size.width*0.01,
            child: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => Example()));
              },
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.038,
            right: MediaQuery.of(context).size.width*0.138,
            child: GestureDetector(
              child: Icon(Icons.share, color: Colors.white),
              onTap: () {
                Share.share('check out my website https://example.com');
              },
            ),
          )
        ],
      ),
    );
  }
}
