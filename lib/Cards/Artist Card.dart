import 'package:flutter/material.dart';

class ArtistCard extends StatelessWidget {
  final String name;
  final String image;
  final String period;
  final String size;
  const ArtistCard({Key key, this.name, this.image, this.period, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Hero(
        tag: 'hey',
        child: Container(
          width: 300,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: new BorderRadius.all(Radius.circular(20.0)),
              color: Colors.redAccent,
              image: DecorationImage(
                  image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project_%28454045%29.jpg/810px-Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project_%28454045%29.jpg',
                  ),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
