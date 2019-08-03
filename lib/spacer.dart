


import 'package:flutter/cupertino.dart';

class Spacer extends StatelessWidget {
  final String type;
  final double ratio;
  const Spacer({Key key, this.type, this.ratio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: type == 'h' || type == 'H' ? MediaQuery.of(context).size.width*ratio : 0,
      height:type == 'v' || type == 'V' ? MediaQuery.of(context).size.height*ratio : 0, 
    );
  }


}