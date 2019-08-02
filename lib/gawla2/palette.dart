import 'package:flutter/material.dart';


class MemberWidget extends StatelessWidget {
  final String imageurl;
  final bool compactMode;

  MemberWidget({this.imageurl, this.compactMode = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Row(
        children: <Widget>[
          //ClippedImage(imagePath: member.imagePath, compactMode: compactMode),
          SizedBox(width: MediaQuery.of(context).size.width*0.6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/6/6c/Yusef_Zuleykha.jpg'),
              ),
            ],
          )
        ],
      ),
    );
  }

  //Future<PaletteGenerator> _generatePalette(context, String imagePath) async {
    //PaletteGenerator _paletteGenerator = await PaletteGenerator.fromImageProvider(AssetImage(imagePath),
      //  size: Size(110, 150), maximumColorCount: 20);

    //return _paletteGenerator;
  }
