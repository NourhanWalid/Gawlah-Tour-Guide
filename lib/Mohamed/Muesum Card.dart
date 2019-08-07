import 'package:flutter/material.dart';
import 'package:gawla/Objects/Site.dart';
import 'package:gawla/Objects/Tour%20Item.dart';

import 'Muesum.dart';

class MuesumCard extends StatelessWidget {
  final String period;
  final String size;
  final List<TourItem> items;
  final Site muesum;
  const MuesumCard(
      {Key key, this.period, this.size, this.items, this.muesum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MuseumView(
                      items:items ,Museum: muesum,
                    )));
      },
      child: Hero(
        tag: muesum.image,
        child: Stack(
          fit: StackFit.passthrough,
          children: <Widget>[
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.redAccent,
                  image: DecorationImage(
                      image: NetworkImage(
                        muesum.image,
                      ),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 10,
                child: Text(muesum.name,style: TextStyle(fontStyle: FontStyle.italic,fontSize: 25,color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
