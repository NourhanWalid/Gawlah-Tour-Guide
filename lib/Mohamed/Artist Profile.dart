import 'package:flutter/material.dart';
import 'package:gawla/Objects/Tour%20Item.dart';
import 'package:gawla/gawla1/Cards/itemcard.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'Example.dart';
import 'package:share/share.dart';
import 'package:like_button/like_button.dart';

class ArtistProfile extends StatefulWidget {
  ArtistProfile({Key key, this.image, this.tag,}) : super(key: key);

  final String image;
  final String tag;
  List<TourItem> items = [
    new TourItem(
      info: '.........',
      name: 'abo galmbo',
      image:
          'https://mpng.pngfly.com/20181118/yjp/kisspng-logos-ancient-egypt-egyptian-language-egyptian-mus-logo-museu-egipcio-by-pearllite-on-deviantart-5bf18a50adb709.1176919915425562407116.jpg',
      counrty: 'Mother Russia',
      id: 121999,
      period: '......',
      location: LatLng(17, 76),
      tags: ['....', '..........'],
    ),
    new TourItem(
        info: '.........',
        name: 'abo galmbo',
        image:
            'https://www.etltravel.com/wp-content/uploads/2016/06/egyptian-museum-cairo-9.jpg',
        counrty: 'Mother Russia',
        id: 121999,
        period: '......',
        location: LatLng(17, 76),
        tags: ['....', '..........']),
    new TourItem(
        info: '.........',
        name: 'abo galmbo',
        image:
            'https://cdn.face2faceafrica.com/www/wp-content/uploads/2016/12/alarabiya-896x640.jpg',
        counrty: 'Mother Russia',
        id: 121999,
        period: '......',
        location: LatLng(17, 76),
        tags: ['....', '..........']),
    new TourItem(
        info: '.........',
        name: 'abo galmbo',
        image:
            'https://i.pinimg.com/736x/57/6c/29/576c291cee9fe3417caf03123210a73c.jpg',
        counrty: 'Mother Russia',
        id: 121999,
        period: '......',
        location: LatLng(17, 76),
        tags: ['....', '..........'])
  ];

  ArtistProfileState createState() => ArtistProfileState(this.image, this.tag);
}

class ArtistProfileState extends State<ArtistProfile> {
  ArtistProfileState(this.image, this.tag);

  final String image;
  final String tag;

  @override
  Widget build(BuildContext context) {
    var item;
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
            top: MediaQuery.of(context).size.height * 0.092,
            left: MediaQuery.of(context).size.width * 0.1,
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
            top: MediaQuery.of(context).size.height * 0.40,
            left: MediaQuery.of(context).size.width * 0.11,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.75,
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
            bottom: MediaQuery.of(context).size.height * 0.04,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller:
                    PageController(keepPage: true, viewportFraction: 0.5712),
                pageSnapping: false,
                itemCount: widget.items.length,
                itemBuilder: (context, position) {
                  return ItemCard(size: 'small', item: widget.items[position]);
                },
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.046,
            left: MediaQuery.of(context).size.width * 0.01,
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
            top: MediaQuery.of(context).size.height * 0.046,
            right: MediaQuery.of(context).size.width * 0.138,
            child: GestureDetector(
              child: Icon(Icons.share, color: Colors.white),
              onTap: () {
                Share.share('check out my website https://example.com');
              },
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.046,
              right: MediaQuery.of(context).size.width * 0.043,
              child: LikeButton()),
        ],
      ),
    );
  }
}
