import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingCard extends StatelessWidget {
  final double rating;
  final Color bgcolor;
  const RatingCard({Key key, this.rating, this.bgcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
         height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width*0.85,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
            
            color: bgcolor,
            
            child: Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20,top:5),
                      child: Text('Rating',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),



                    )),
                    Padding(
                      padding: EdgeInsets.only(left: 20,bottom: 5),
                      child: Container(
                        //width: MediaQuery.of(context).size.width*0.85,
                        //height: MediaQuery.of(context).size.height*0.07,
                        child: FlutterRatingBar(
                          
      initialRating: this.rating,
      fillColor: Colors.amber,
      itemSize: 18.0,
      borderColor: Colors.amber.withAlpha(300),
      allowHalfRating: true,
      onRatingUpdate: (rating) {
           //print(rating);
      },
                        ),
                      ),

                ),]
            ),
              ],




          
    ),
          )
    );
    
  }
}