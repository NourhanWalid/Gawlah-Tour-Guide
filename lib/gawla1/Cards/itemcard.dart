import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix1;
import 'package:gawla/spacer.dart' as prefix0;
import 'package:palette_generator/palette_generator.dart';
import '../itemview.dart';

class ItemCard extends StatelessWidget {
  final String size;
  const ItemCard({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.push(context, MaterialPageRoute(
        //builder: (context)=>Scaffold(body: ItemView()),

        //));
      },
      child: this.size == 'big'
          ? Stack(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.width * 0.72,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Hero(
                      tag: 'tour',
                      //'https://upload.wikimedia.org/wikipedia/commons/6/6c/Yusef_Zuleykha.jpg',
                      child: Image.network(
                        'https://images-na.ssl-images-amazon.com/images/I/61eVm8hdKSL._AC_SY400_.jpg',
                        fit: BoxFit.fill,
                      ),
                    )),
                Positioned(
                  top: 20,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.tealAccent,
                    ),
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('MIDDLE AGES COLLECTION',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                  top: MediaQuery.of(context).size.height * 0.5,
                  //bottom: MediaQuery.of(context).size.height*0.02,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Seduction Of Yusuf',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                            height: 1.2),
                      ),
                      Text(
                        'Bihzad',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white, //height: 1.8
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.005,
                          width: MediaQuery.of(context).size.width * 0.95,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          children: <Widget>[Text('1484-1486')],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Stack(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.width * 0.6,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Hero(
                      tag: 'tour',
                      //'https://upload.wikimedia.org/wikipedia/commons/6/6c/Yusef_Zuleykha.jpg',
                      child: Image.network(
                        'https://media.ceetiz.com/activity/QATDOH011/thumbnails/642x450/13-10.JPG',
                        fit: BoxFit.fill,
                      ),
                    )),
                ClipRect(
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: .7, sigmaY: .7),
                    child: new Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.6,
                      decoration: new BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.1),
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.72 * .05,
                  bottom: MediaQuery.of(context).size.width * 0.72 * .03,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Seduction Of Yusuf',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                            height: 1.2),
                      ),
                      Text(
                        'Bihzad',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white, //height: 1.8
                        ),
                      ),
                      prefix0.Spacer(
                        ratio: .01,
                        type: 'V',
                      ),
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.005,
                          width: MediaQuery.of(context).size.width * 0.72 * .6,
                          color: Colors.white,
                        ),
                      ),
                      prefix0.Spacer(
                        ratio: .01,
                        type: 'V',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              '1484-1486',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * .02,
                              width: MediaQuery.of(context).size.width * .15,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  Future<Color> _generatePalette(context, String link) async {
    PaletteGenerator _paletteGenerator =
        await PaletteGenerator.fromImageProvider(NetworkImage(link),
            maximumColorCount: 20);

    return _paletteGenerator.darkMutedColor.color.withOpacity(1);
  }
}
