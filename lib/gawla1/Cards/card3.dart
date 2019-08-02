import 'package:flutter/material.dart';
class Card3 extends StatelessWidget {
  final String place;
  final String data1;
  final Color bgcolor;
  final String imageurl;
  const Card3({Key key, this.bgcolor, this.imageurl, this.place, this.data1, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(

          children: <Widget>[
            Container(
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
                      child: Text(place,style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),



                    )),
                    Container(
                      //width: 150,
                      height: 5,
                      
                    ),

                    
                    Padding(
                      padding: EdgeInsets.only(left: 20,bottom: 5),
                      child: Text(data1, style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold,), )),
                  ],
                ),
                 Container(
                      width: 120,
                      
                    ),
                
                Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 40,
                width: 40,
                child: Image.network(imageurl),
                //https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Louvre_Museum_icon_1.svg/550px-Louvre_Museum_icon_1.svg.png
              )
              
            ],
          )]
            ),
          ),
        ),
        
         ]
        
        
      );
    
  }
}