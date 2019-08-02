import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gawla/gawla1/Cards/itemcard.dart';
import 'package:gawla/gawla1/Cards/review.dart';
import 'package:gawla/gawla1/horizontalspacer.dart';
import 'package:gawla/gawla1/verticalspacer.dart';

class TourView2 extends StatelessWidget {
  final String size;
  const TourView2({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    




    return Material(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Hero(
                  tag: 'tour',
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/6/6c/Yusef_Zuleykha.jpg',
                    fit: BoxFit.fill,
                  ),
                )),
            //ConstrainedBox(
            //  constraints: const BoxConstraints.expand(),
            //child: new FlutterLogo()),

            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 200),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 70),
                      child: Text(
                        'The history of Islamic Art',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                         // height: 40,
                          child: FlutterRatingBar(
                            initialRating: 3,
                            fillColor: Colors.amber,
                            itemSize: 20,
                            borderColor: Colors.blue,
                            allowHalfRating: true,
                            onRatingUpdate: (rating) {},
                          ),
                        ),
                        HSpacer(0.02),
                        Chip(
                        label: Text('history',style: TextStyle(color:Colors.white,fontSize: 16),),
                        
                        backgroundColor: Colors.red ,
                      ),
                      HSpacer(0.02),

                      Chip(
                        label: Text('islam',style: TextStyle(color:Colors.white,fontSize: 16),),
                        
                        backgroundColor: Colors.blue ,
                      ),
                      HSpacer(0.02),

                      Chip(
                        label: Text('art',style: TextStyle(color:Colors.white,fontSize: 16),),
                        
                        backgroundColor: Colors.green ,
                      ),
                      ],
                    ),
                    VSpacer(0.02),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJZtgnXgSivvLodAn2kMHBlSHJ5fI1rnw2yVZSTT5_B29WMoA3'),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'From the collection of',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                                //Container(width: 5,),
                                Text('The National Library of Egypt',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    VSpacer(0.02),




                    DefaultTabController(
                      
            length: 2,
           
                    child: Column(
                      
                      children: <Widget>[
                 
                  PreferredSize(
                    preferredSize: Size.fromHeight(50.0),
                    child: TabBar(
                      labelColor: Colors.black,
                      tabs: [
                        Tab(
                          
                          text: 'Info',
                        ),
                        Tab(
                          text: 'Reviews',
                        ),
                        
                      ], // list of tabs
                    ),
                  ),
                  //TabBarView(children: [ImageList(),])
                   TabBarView(
                      children: [
                        Container(
                          color: Colors.red,
                          child: Column(
                            children: <Widget>[


                              Text(
                      'Islamic art encompasses the vijsjkadljklsadjkldsajkldaskjldsakjldaskjldsalkdskljdaslkjdsakljkdjalsjklsadkjalkjsddslakjkldsajkljdaskjldsakljdaskljadsjladksjdsakjadskjldasjklsadjkldaskjladsjlkkljdasjkladsldjkasdakljsdajlksdajlksjkldaslkjadklsisual arts produced in the Islamic world.[1] Islamic art is difficult to characterize because it covers a wide range of lands, periods, and genres,including Islamic architecture, Islamic calligraphy, Islamic miniature, Islamic glass, Islamic pottery, and textile arts such as carpets and embroidery.It comprises both religious and secular art forms. Religious art is represented by calligraphy, architecture and furnishings of religious buildings, such as mosque fittings (e.g., mosque lamps and Girih tiles), woodwork and carpets. Secular art also flourished in the Islamic world, although some of its elements were criticized by religious scholars.Early development of Islamic art was influenced by Roman art, Early Christian art (particularly Byzantine art), and Sassanian art, with later influences from Central Asian nomadic traditions. Chinese art had a formative influence on Islamic painting, pottery, and textiles.Though the concept of "Islamic art" has been criticised by some modern art historians as an illusory Eurocentric construct,the similarities between art produced at widely different times and places in the Islamic world, especially in the Islamic Golden Age, have been sufficient to keep the term in wide use by scholars.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          wordSpacing: 2.0,
                          height: 1.5,
                          fontWeight: FontWeight.bold),
                    ),
                    Center(
                      child: this.size=='big'?
                      Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width * 0.85,
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              ItemCard(size:'big'),
                              ItemCard(size:'big'),
                              ItemCard(size:'big'),
                              ItemCard(size:'big'),
                              ItemCard(size:'big'),
                            ],
                          )):
                          Container(
                          height: MediaQuery.of(context).size.height * 0.32,
                          width: MediaQuery.of(context).size.width * 0.85,
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              ItemCard(size:'bigh'),
                              ItemCard(size:'bigk'),
                              ItemCard(size:'bigj'),
                              ItemCard(size:'bigh'),
                              ItemCard(size:'bigo'),
                            ],
                          ))
                    ),



                            ],
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          child: Column(
                            children: <Widget>[
                              ReviewCard(),
                              ReviewCard(),
                              ReviewCard(),
                              
                            ],
                          ),
                        ),
                        
                      ],
                    
                  ),
                ])),













                    Text(
                      'Islamic art encompasses the vijsjkadljklsadjkldsajkldaskjldsakjldaskjldsalkdskljdaslkjdsakljkdjalsjklsadkjalkjsddslakjkldsajkljdaskjldsakljdaskljadsjladksjdsakjadskjldasjklsadjkldaskjladsjlkkljdasjkladsldjkasdakljsdajlksdajlksjkldaslkjadklsisual arts produced in the Islamic world.[1] Islamic art is difficult to characterize because it covers a wide range of lands, periods, and genres,including Islamic architecture, Islamic calligraphy, Islamic miniature, Islamic glass, Islamic pottery, and textile arts such as carpets and embroidery.It comprises both religious and secular art forms. Religious art is represented by calligraphy, architecture and furnishings of religious buildings, such as mosque fittings (e.g., mosque lamps and Girih tiles), woodwork and carpets. Secular art also flourished in the Islamic world, although some of its elements were criticized by religious scholars.Early development of Islamic art was influenced by Roman art, Early Christian art (particularly Byzantine art), and Sassanian art, with later influences from Central Asian nomadic traditions. Chinese art had a formative influence on Islamic painting, pottery, and textiles.Though the concept of "Islamic art" has been criticised by some modern art historians as an illusory Eurocentric construct,the similarities between art produced at widely different times and places in the Islamic world, especially in the Islamic Golden Age, have been sufficient to keep the term in wide use by scholars.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          wordSpacing: 2.0,
                          height: 1.5,
                          fontWeight: FontWeight.bold),
                    ),
                    Center(
                      child: this.size=='big'?
                      Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width * 0.85,
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              ItemCard(size:'big'),
                              ItemCard(size:'big'),
                              ItemCard(size:'big'),
                              ItemCard(size:'big'),
                              ItemCard(size:'big'),
                            ],
                          )):
                          Container(
                          height: MediaQuery.of(context).size.height * 0.32,
                          width: MediaQuery.of(context).size.width * 0.85,
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              ItemCard(size:'bigh'),
                              ItemCard(size:'bigk'),
                              ItemCard(size:'bigj'),
                              ItemCard(size:'bigh'),
                              ItemCard(size:'bigo'),
                            ],
                          ))
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
