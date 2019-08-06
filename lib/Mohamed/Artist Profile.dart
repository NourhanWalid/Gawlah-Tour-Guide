import 'package:flutter/material.dart';
import 'package:gawlah_tourists_app/Mohamad/Example.dart';
import 'package:parallax_image/parallax_image.dart';
import 'package:share/share.dart';

class ArtistProfile extends StatefulWidget {
  ArtistProfile({Key key, this.image, this.tag}) : super(key: key);

  final String image;
  final String tag;

  ArtistProfileState createState() => ArtistProfileState(this.image, this.tag);
}

class ArtistProfileState extends State<ArtistProfile> {
  ArtistProfileState(this.image, this.tag);

  final String image;
  final String tag;
  final _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: tag,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image, scale: 200.0),
                      fit: BoxFit.fitHeight)),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.07,
            left: MediaQuery.of(context).size.width*0.1,
            child: Container(
              width: 220,
              child: Column(
                children: <Widget>[
                  Text('Vincent Van Gogh',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontStyle: FontStyle.italic,
                          backgroundColor: Colors.transparent)),
                ],
              ),
            ),
          ),
          Positioned(
            top:MediaQuery.of(context).size.height*0.38,
            left:MediaQuery.of(context).size.width*0.11 ,
            child: Container(
              width:MediaQuery.of(context).size.width*0.75,
              child: Column(
                children: <Widget>[
                  Text(
                    'Vincent Willem van Gogh (30 March 1853 – 29 July 1890) was a Dutch post-impressionist painter who is among the most famous and influential figures in the history of Western art.',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height*0.03,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: ListView(
                physics: BouncingScrollPhysics(),
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 100,
                    child: new ParallaxImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Vincent_van_Gogh_-_Wheatfield_with_crows_-_Google_Art_Project.jpg/1280px-Vincent_van_Gogh_-_Wheatfield_with_crows_-_Google_Art_Project.jpg'),
                      extent: 100.0,
                      controller: _controller,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 100,
                    child: new ParallaxImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Vincent_van_Gogh_-_Sunflowers_-_VGM_F458.jpg/800px-Vincent_van_Gogh_-_Sunflowers_-_VGM_F458.jpg'),
                      extent: 100.0,
                      controller: _controller,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    child: new ParallaxImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Van-willem-vincent-gogh-die-kartoffelesser-03850.jpg/1024px-Van-willem-vincent-gogh-die-kartoffelesser-03850.jpg'),
                      extent: 100.0,
                      controller: _controller,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 100,
                    child: new ParallaxImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Van-willem-vincent-gogh-die-kartoffelesser-03850.jpg/1024px-Van-willem-vincent-gogh-die-kartoffelesser-03850.jpg'),
                      extent: 100.0,
                      controller: _controller,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 100,
                    child: new ParallaxImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Vincent_van_Gogh_-_Worn_Out_%28F997%29.jpg/800px-Vincent_van_Gogh_-_Worn_Out_%28F997%29.jpg'),
                      extent: 100.0,
                      controller: _controller,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 100,
                    child: new ParallaxImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Stilleven_met_bijbel_-_s0008V1962_-_Van_Gogh_Museum.jpg/800px-Stilleven_met_bijbel_-_s0008V1962_-_Van_Gogh_Museum.jpg'),
                      extent: 100.0,
                      controller: _controller,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 100,
                    child: new ParallaxImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Vincent_van_Gogh_-_Head_of_a_skeleton_with_a_burning_cigarette_-_Google_Art_Project.jpg/800px-Vincent_van_Gogh_-_Head_of_a_skeleton_with_a_burning_cigarette_-_Google_Art_Project.jpg'),
                      extent: 100.0,
                      controller: _controller,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.038,
            left: MediaQuery.of(context).size.width*0.01,
            child: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => Example()));
              },
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.038,
            right: MediaQuery.of(context).size.width*0.138,
            child: GestureDetector(
              child: Icon(Icons.share, color: Colors.white),
              onTap: () {
                Share.share('check out my website https://example.com');
              },
            ),
          )
        ],
      ),
    );
  }
}
