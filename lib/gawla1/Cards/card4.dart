import 'package:flutter/material.dart';
class Card4 extends StatelessWidget {
  final String what;
  final String info;
  final Color bgcolor;
  const Card4({Key key, this.bgcolor, this.what,this.info }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     
        width: MediaQuery.of(context).size.width*0.85 ,
      color: bgcolor,
      
                child: Column(
                  mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20,top:5),
                      child: Text(what,style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),



                    )),
                    Container(
                      width: 150,
                      height: 5,
                      
                    ),

                    
                    Padding(
                      padding: EdgeInsets.only(left: 20,bottom: 5),
                      child: Text(info, style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold,), )),
                  ],
                ),]
            ),
                




          
    );
  }
}