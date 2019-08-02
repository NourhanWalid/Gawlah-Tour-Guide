import 'package:flutter/material.dart';
class Card2 extends StatelessWidget {
  final String period;
  final String data1;
  final String medium;
  final String data2;
  final Color bgcolor;
  final String imageurl;
  const Card2({Key key, this.bgcolor, this.imageurl, this.period, this.data1, this.medium, this.data2,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            ),
            
            color: bgcolor,
            
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width*0.85 ,
              child: Row(
                
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20,top:5),
                        child: Text(period,style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),



                      )),
                      Container(
                        width: 150,
                        height: 5,
                        
                      ),

                      
                      Padding(
                        padding: EdgeInsets.only(left: 20,bottom: 5),
                        child: Text(data1, style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold,), )),
                    ],
                  ),

                  Container(
                    width: 30,
                  ),



                  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                        padding: EdgeInsets.only(left: 20, right: 20,top:5),
                        child: Text(medium,style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),



                      )),
                       Container(
                        width: 150,
                        height: 5,
                        
                      ),
                Padding(
                        padding: EdgeInsets.only(left: 20,bottom: 5),
                        child: Text(data2, style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold,), )),

              ],
          )
                  
                  
                  
                  ]
              ),
            ),
          );
        
      
        
        
      
    
  }
}