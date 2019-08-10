

import 'package:flutter/material.dart';


import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

/// Information about a [Tour Items].
class Node {

final LatLng psition;
final int x;
final int y;
final int bit;


  const Node (
      {
    @required this.psition,
    @required this.x,
    @required  this.y,
    @required  this.bit,
  

    
  })  : assert(psition != null),
        assert(x != null),
        assert(y != null),
        assert(bit != null);
      
   

}
