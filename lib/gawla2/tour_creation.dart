import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_tagging/flutter_tagging.dart';
import 'package:gawla/Basic%20Map.dart';
import 'package:gawla/gawla1/Cards/itemcard.dart';
import 'package:gawla/gawla1/Cards/review.dart';
import 'package:gawla/gawla1/horizontalspacer.dart';
import 'package:gawla/gawla1/verticalspacer.dart';

class TourCreation extends StatefulWidget {
  TourCreation({Key key}) : super(key: key);

  _TourCreationState createState() => _TourCreationState();
}

class _TourCreationState extends State<TourCreation> {
  final _pageController = PageController(
    initialPage: 0,
  );

  var _periods = [
    'Old Kingdom',
    'Middle Kingdom',
    'New Kingdom',
    'Ptolemaic Kingdom',
    'Aegyptus',
    'Coptic Period',
    'Fatimid Caliphate',
    'Ayyubid Dynasty',
    'Mamluk Sultanate',
    'Ottoman Eyalet',
    'Khedivate',
    'Other'
  ];
  var _currentItemSelected = 'Old Kingdom';

  String text = "Nothing to show";
  //final TextEditingController _nameController = TextEditingController();
  //final TextEditingController _imageController = TextEditingController();
  //final TextEditingController _basicinfoController = TextEditingController();
  //final TextEditingController _periodController = TextEditingController();
  //final TextEditingController _themeController = TextEditingController();
  //final TextEditingController _placeController = TextEditingController();
  //final TextEditingController _itemsController = TextEditingController();

  //Tour tour = new Tour();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Hero(
                tag: 'tag',
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/6/6c/Yusef_Zuleykha.jpg',
                  fit: BoxFit.fill,
                ),
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
          
                boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black38
          ),
            
          
                ], 
                ),
          ),
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 100),
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
                            onRatingUpdate: (double rating) {},
                          ),
                        ),
                        HSpacer(0.02),
                        Chip(
                          label: Text(
                            'history',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          backgroundColor: Colors.red,
                        ),
                        HSpacer(0.02),
                        Chip(
                          label: Text(
                            'islam',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          backgroundColor: Colors.blue,
                        ),
                        HSpacer(0.02),
                        Chip(
                          label: Text(
                            'art',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          backgroundColor: Colors.green,
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
                    SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            Wrap(
                              children: <Widget>[
                                Text(
                                  'Islamic art encompasses the  hhhhh  hhh hhh hhh h hh hhh h h h hh hh hhhhhh h hhh h hh  hh  hh h h h hh  hh h h harts produced in the Is.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      wordSpacing: 2.0,
                                      height: 1.5,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      onPressed: () {
                        if (_pageController.hasClients) {
                          _pageController.animateToPage(
                            1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              /////Page 1
              Container(
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 120,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Items in this tour',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      //VSpacer(0.05),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.85,
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 20,
                            itemBuilder: (BuildContext context, int index) {
                              return ItemCard();
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Container(
                                width:
                                    MediaQuery.of(context).size.width * (0.05),
                              );
                            },
                          )),

                      VSpacer(0.06),
                      Text('Tour Map',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),

                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.85,
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        child: BasicMap(),
                      ),

                      Align(
                          alignment: Alignment(0.98, 0.8),
                          child: IconButton(
                            icon: Icon(Icons.keyboard_arrow_up),
                            onPressed: () {
                              if (_pageController.hasClients) {
                                _pageController.animateToPage(
                                  0,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                          )),
                      Align(
                        alignment: Alignment(0.98, 1),
                        child: IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                          ),
                          onPressed: () {
                            if (_pageController.hasClients) {
                              _pageController.animateToPage(
                                2,
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                    height: 300,
                    //page2
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          ReviewCard(
                            goodfeature: true,
                            badfeature: true,
                            name: 'Ahmed',
                            rating: 4,
                            review:
                                'jhgauyyecdhegdcyuydsahxgfsaucdfycdyewchsdgceydchjdwguwgygwdxjgwfuwuyfxyuw',
                          ),
                          ReviewCard(
                              badfeature: true,
                              goodfeature: true,
                              name: 'Salma',
                              rating: 2,
                              review:
                                  'jhgauyyecdhegdcyuydsahxgfsaucdfycdyewchsdgceydchjdwguwgygwdxjgwfuwuyfxyuw'),
                          ReviewCard(
                              badfeature: true,
                              goodfeature: true,
                              name: 'Nourhan',
                              rating: 6,
                              review:
                                  'jhgauyyecdhegdcyuydsahxgfsaucdfycdyewchsdgceydchjdwguwgygwdxjgwfuwuyfxyuw'),
                          ReviewCard(
                              badfeature: true,
                              goodfeature: false,
                              name: 'Farida',
                              rating: 1,
                              review:
                                  'jhgauyyecdhegdcyuydsahxgfsaucdfycdyewchsdgceydchjdwguwgygwdxjgwfuwuyfxyuw'),
                          ReviewCard(
                              goodfeature: true,
                              badfeature: true,
                              name: 'Mohamed',
                              rating: 3,
                              review:
                                  'jhgauyyecdhegdcyuydsahxgfsaucdfycdyewchsdgceydchjdwguwgygwdxjgwfuwuyfxyuw'),
                        ],
                      ),
                    )),
              ),

              Align(
                  alignment: Alignment(0.98, 0.8),
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_up),
                    onPressed: () {
                      if (_pageController.hasClients) {
                        _pageController.animateToPage(
                          1,
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  )),
              Align(
                alignment: Alignment(0.98, 1),
                child: IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                  ),
                  onPressed: () {
                    if (_pageController.hasClients) {
                      _pageController.animateToPage(
                        3,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAddButton() {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.pinkAccent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.add,
            color: Colors.white,
            size: 15.0,
          ),
          Text(
            "Add New Tag",
            style: TextStyle(color: Colors.white, fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}

class TagSearchService {
  static Future<List> getSuggestions(String query) async {
    await Future.delayed(Duration(milliseconds: 400), null);
    List<dynamic> tagList = <dynamic>[];
    //tagList.add({'name': "Flutter", 'value': 1});
    //tagList.add({'name': "HummingBird", 'value': 2});
    //tagList.add({'name': "Dart", 'value': 3});
    List<dynamic> filteredTagList = <dynamic>[];
    if (query.isNotEmpty) {
      filteredTagList.add({'name': query, 'value': 0});
    }
    for (var tag in tagList) {
      if (tag['name'].toLowerCase().contains(query)) {
        filteredTagList.add(tag);
      }
    }
    return filteredTagList;
  }
}
