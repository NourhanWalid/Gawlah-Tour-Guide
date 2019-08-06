import 'package:flutter/material.dart';
class Artist extends StatelessWidget {
  final String link;
  final String tag;
  final String info;
  const Artist({Key key, this.link, this.tag,this.info}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Try(link: link,tag: tag,),
        ));
  }
}

class Try extends StatelessWidget {
  final String link;
  final String tag;
  const Try({Key key, this.link, this.tag}) : super(key: key);
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 550.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Hero(
              tag: tag,
              child: Image.network(
                link,
                fit: BoxFit.fill,
                height: double.infinity,
              ),
            ),
          ),
          floating: true,
          title: Text(
            'Vincet Van Gogh',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 35.0),
            textAlign: TextAlign.center,
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
              Container(color: Colors.transparent, height: 15.0),
              Container(
                height: 450.0,
                width: 20.0,
                child: Text(
                  'Vincent Willem van Gogh (30 March 1853 – 29 July 1890) was a Dutch post-impressionist painter who is among the most famous and influential figures in the history of Western art. In just over a decade he created about 2,100 artworks, including around 860 oil paintings, most of them in the last two years of his life. They include landscapes, still lifes, portraits and self-portraits, and are characterised by bold colours and dramatic, impulsive and expressive brushwork that contributed to the foundations of modern art. He was not commercially successful, and his suicide at 37 followed years of mental illness and poverty.',
                  style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 200.0,
                child: PageView(
                  children: <Widget>[
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Vincent_van_Gogh_-_Wheatfield_with_crows_-_Google_Art_Project.jpg/1280px-Vincent_van_Gogh_-_Wheatfield_with_crows_-_Google_Art_Project.jpg'),
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Vincent_van_Gogh_-_Sunflowers_-_VGM_F458.jpg/800px-Vincent_van_Gogh_-_Sunflowers_-_VGM_F458.jpg'),
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Van-willem-vincent-gogh-die-kartoffelesser-03850.jpg/1024px-Van-willem-vincent-gogh-die-kartoffelesser-03850.jpg'),
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Vincent_van_Gogh_-_Worn_Out_%28F997%29.jpg/800px-Vincent_van_Gogh_-_Worn_Out_%28F997%29.jpg'),
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Stilleven_met_bijbel_-_s0008V1962_-_Van_Gogh_Museum.jpg/800px-Stilleven_met_bijbel_-_s0008V1962_-_Van_Gogh_Museum.jpg'),
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Vincent_van_Gogh_-_Head_of_a_skeleton_with_a_burning_cigarette_-_Google_Art_Project.jpg/800px-Vincent_van_Gogh_-_Head_of_a_skeleton_with_a_burning_cigarette_-_Google_Art_Project.jpg')
                  ],
                ),
              ),
            ]))
      ],
    );
  }
}
