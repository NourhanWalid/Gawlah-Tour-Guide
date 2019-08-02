import 'package:flutter/material.dart';

class ArtistCard extends StatelessWidget {
  final String title;
  final String data;
  final Color bgcolor;
  final String imageurl;
  const ArtistCard(
      {Key key, this.title, this.data, this.bgcolor, this.imageurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: bgcolor,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width*0.85 ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(left: 20, bottom: 5),
                child: Text(
                  data,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
