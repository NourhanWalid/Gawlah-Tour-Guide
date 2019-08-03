import 'package:flutter/material.dart';
import 'package:gawla/gawla2/tourview.dart';


class TourCard extends StatelessWidget {
  final String tag;
  const TourCard({Key key, this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>Scaffold(body: TourView(
            tag: tag,
          )),





        ));
      },
          child: Container(
        child: Stack(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.width*0.72,
                width: MediaQuery.of(context).size.width*0.7,
                child: Hero(
                  tag: tag,
                        child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/6/6c/Yusef_Zuleykha.jpg',
                    fit: BoxFit.fill,

                    
                  ),
                )),
                Positioned(
                  top: 10,
                  left: 10,
                                child: Container(
                    
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.tealAccent,),
                    height: MediaQuery.of(context).size.height*0.025,
                    width: MediaQuery.of(context).size.width*0.5,
                    child: Center(
                      child: Text('MIDDLE AGES COLLECTION',style:TextStyle(fontSize:12,color:Colors.black,fontWeight:FontWeight.bold)),
                    ),
                  ),
                ),
            Positioned(
              left: MediaQuery.of(context).size.width*0.05,
              right: MediaQuery.of(context).size.width*0.05,
              top: MediaQuery.of(context).size.height*0.18,
              bottom: MediaQuery.of(context).size.height*0.02,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Birth of Venus',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white, height: 1.2
                    ),
                  ),
                  Text(
                    'Sandro Boticelli',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, //height: 1.8
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(height: MediaQuery.of(context).size.height*0.005,
                    width: MediaQuery.of(context).size.width*0.95,
                    color: Colors.white,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Row(
                      children: <Widget>[
                        Text('1484-1486',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 14),)
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
