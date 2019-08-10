import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../horizontalspacer.dart';
import '../verticalspacer.dart';

class ReviewCard extends StatelessWidget {
  final String name;
  final String imageurl;
  final double rating;
  final String date;
  final String review;
  final bool goodfeature;
  final bool badfeature;
  const ReviewCard(
      {Key key,
      this.name,
      this.rating,
      this.date,
      this.review,
      this.goodfeature,
      this.badfeature,
      this.imageurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          color: Colors.white,
          //height: MediaQuery.of(context).size.height*0.5,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25.0, top: 15, bottom: 20),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/d/da/Ralph_Lauren_2013.jpg'),
                          )),
                    ),
                    HSpacer(0.025),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        VSpacer(0.01),
                        Text(
                          name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        HSpacer(0.02),
                        VSpacer(0.005),
                        FlutterRatingBar(
                          initialRating: rating,
                          fillColor: Colors.blue,
                          itemSize: 18.0,
                          borderColor: Colors.blue.withAlpha(300),
                          allowHalfRating: true,
                          onRatingUpdate: (rating) {},
                        ),
                        Row(children: <Widget>[
                          Chip(
                            label: Text(
                              'good',
                              style: TextStyle(fontSize: 10),
                            ),
                            backgroundColor:
                                goodfeature ? Colors.green : Colors.transparent,
                          ),
                          HSpacer(0.01),
                          Chip(
                            label: Text(
                              'bad',
                              style: TextStyle(fontSize: 10),
                            ),
                            backgroundColor:
                                goodfeature ? Colors.red : Colors.transparent,
                          ),
                        ]),
                        HSpacer(0.2),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        VSpacer(0.03),

                        // Text(date,style:TextStyle(fontSize: 12,color: Colors.grey)),
                      ],
                    )
                  ],
                ),
                VSpacer(0.025),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(review,
                        style: TextStyle(
                            height: 1.2,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
