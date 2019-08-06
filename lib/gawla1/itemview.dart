import 'package:flutter/material.dart';
import 'package:gawla/gawla1/similaritems.dart';
import 'package:gawla/gawla1/verticalspacer.dart';

import 'package:sliver_fab/sliver_fab.dart';

import 'Cards/card1.dart';
import 'Cards/card2.dart';
import 'Cards/card3.dart';
import 'Cards/card4.dart';
import 'Cards/card5.dart';

class ItemView extends StatelessWidget {
  final String tag;
  final String image;
  const ItemView({Key key, this.tag, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Hero(
              tag: tag,
              child: Image.network(
                image,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SliverFab(
            floatingWidget: Container(
              //padding: EdgeInsets.only(left: 50),

              height: 90,

              width: 90,

              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://www.biografiasyvidas.com/biografia/l/fotos/leonardo_da_vinci.jpg'),
                  )),
            ),
            floatingPosition: FloatingPosition(right: 16),
            expandedHeight: MediaQuery.of(context).size.height * 0.85,
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: MediaQuery.of(context).size.height * 0.85,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    color: Colors.transparent,
                  ), //Image.asset('assets/forest.jpg', fit: BoxFit.cover),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SingleChildScrollView(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0)),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0)),
                          ),
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                    ),
                                    ArtistCard(
                                      title: 'Artist',
                                      data: 'Leonardo Da Vinci',
                                      bgcolor: Colors.white70,
                                    ),
                                    VSpacer(0.015),
                                    Card2(
                                      period: 'Period',
                                      data1: '1509-1515',
                                      medium: 'Medium',
                                      data2: 'Oil on wood',
                                      bgcolor: Colors.white70,
                                    ),
                                    VSpacer(0.015),
                                    Card3(
                                      place: 'Where',
                                      data1: 'The Louvre, Paris, France',
                                      bgcolor: Colors.white70,
                                      imageurl:
                                          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Louvre_Museum_icon_1.svg/550px-Louvre_Museum_icon_1.svg.png',
                                    ),
                                    VSpacer(0.015),
                                    Card4(
                                      what: 'What',
                                      info:
                                          'The Mona Lisa is a half-length portrait painting by the Italian Renaissance artist Leonardo da Vinci that has been described as "the best known, the most visited, the most written about, the most sung about, the most parodied work of art in the world."',
                                      bgcolor: Colors.white70,
                                    ),
                                    VSpacer(0.015),
                                    RatingCard(
                                      rating: 2.5,
                                      bgcolor: Colors.white70,
                                    ),
                                    VSpacer(0.015),
                                    SimilarItems(
                                      key: key,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 310,
                                top: 20,
                                child: GestureDetector(
                                  onTap: () {
                                    print('CLICKED');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
