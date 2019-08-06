import 'package:flutter/material.dart';
import 'package:gawlah_tourists_app/Profiles/Artist Profile.dart';

class ArtistCard extends StatelessWidget {
  final String name;
  final String image;
  final String period;
  final String size;
  final String tag;
  const ArtistCard(
      {Key key, this.name, this.image, this.period, this.size, this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArtistProfile(
                      image: image,
                      tag: tag,
                    )));
      },
      child: Hero(
        tag: tag,
        child: Stack(
          fit: StackFit.passthrough,
          children: <Widget>[
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.redAccent,
                  image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 10,
                child: Text(name,style: TextStyle(fontStyle: FontStyle.italic,fontSize: 35,color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
