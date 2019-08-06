import 'package:flutter/material.dart';
import 'package:gawlah_tourists_app/Mohamad/Artist2.dart';
import 'package:gawlah_tourists_app/Cards/Artist Card.dart';
class Example extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  'artists',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                )),
            Container(
              height: 430,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(5),
                children: <Widget>[
                  ArtistCard(
                    image:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project_%28454045%29.jpg/810px-Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project_%28454045%29.jpg',
                    tag: 'Van gogh',
                    name: 'van gogh',
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  ArtistCard(
                    image:
                        'https://amp.businessinsider.com/images/5cae3e24d4206005f509a87a-750-562.jpg',
                    tag: 'da vinci',
                    name: '',
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  ArtistCard(
                    image:
                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                    tag: 'm',
                    name: '',
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  ArtistCard(
                    image:
                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                    tag: 'o',
                    name: '',
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  ArtistCard(
                    image:
                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                    tag: 'h',
                    name: '',
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'museums',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                )),
            Container(
              height: 200,
              width: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(5),
                children: <Widget>[
                  GestureDetector(
                    child: Hero(
                      tag: 'uuu',
                      child: Image.network(
                          'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                          fit: BoxFit.fill),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Artist(
                                    link:
                                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                                    tag: 'uuu',
                                  )));
                    },
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    child: Hero(
                      tag: 'uuuu',
                      child: Image.network(
                          'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                          fit: BoxFit.fill),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Artist(
                                    link:
                                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                                    tag: 'uuuu',
                                  )));
                    },
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    child: Hero(
                      tag: 'uuuuu',
                      child: Image.network(
                          'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                          fit: BoxFit.fill),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Artist(
                                    link:
                                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                                    tag: 'uuuuu',
                                  )));
                    },
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    child: Hero(
                      tag: 't',
                      child: Image.network(
                          'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                          fit: BoxFit.fill),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Artist(
                                    link:
                                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                                    tag: 't',
                                  )));
                    },
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    child: Hero(
                      tag: 'tt',
                      child: Image.network(
                          'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                          fit: BoxFit.fill),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Artist(
                                    link:
                                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                                    tag: 'tt',
                                  )));
                    },
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'themes',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                )),
            Container(
              height: 200,
              width: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(5),
                children: <Widget>[
                  GestureDetector(
                    child: Hero(
                      tag: 'sad',
                      child: Image.network(
                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Artist(
                                  link:
                                      'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                                  tag: 'sad')));
                    },
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    child: Hero(
                      tag: 'k',
                      child: Image.network(
                          'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                          fit: BoxFit.fill),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Artist(
                                    link:
                                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                                    tag: 'k',
                                  )));
                    },
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    child: Hero(
                      tag: 'e',
                      child: Image.network(
                          'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                          fit: BoxFit.fill),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Artist(
                                    link:
                                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                                    tag: 'e',
                                  )));
                    },
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    child: Hero(
                      tag: 'y',
                      child: Image.network(
                          'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                          fit: BoxFit.fill),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Artist(
                                    link:
                                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                                    tag: 'y',
                                  )));
                    },
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  GestureDetector(
                    child: Hero(
                      tag: 'd',
                      child: Image.network(
                          'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                          fit: BoxFit.fill),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Artist(
                                    link:
                                        'http://www.laughspark.info/uploadfiles/cute-smile-of-scarlett-johansson-635771912706708028-15980.jpg',
                                    tag: 'd',
                                  )));
                    },
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
