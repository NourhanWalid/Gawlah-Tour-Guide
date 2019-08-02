import 'package:flutter/material.dart';

class SimilarItems extends StatelessWidget {
  const SimilarItems({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.width*0.85,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),],
    ));
  }
}