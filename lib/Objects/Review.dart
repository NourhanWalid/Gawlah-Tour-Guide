

import 'package:flutter/material.dart';

import 'Indoor Map.dart';
import 'Site.dart';
import 'Tour Item.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

/// Information about a [Tour Items].
class Review {

final String comment;
final double rating;
final String name;
final String image;
final String time;
final int id;



  
  const Review (
      {
    @required this.name,
    @required this.id,
    @required  this.image,
    @required  this.time,
    @required  this.comment,
    @required  this.rating, 

    
  })  : assert(name != null),
        assert(id != null),
        assert(image != null),
        assert(time != null),
        assert(comment != null),
        assert(rating != null);
   


  Review.fromJson(Map jsonMap)
      : assert(jsonMap['name'] != null),
        assert(jsonMap['id'] != null),
        assert(jsonMap['comment'] != null),
        assert(jsonMap['image'] != null),
        assert(jsonMap['time'] != null),
        assert(jsonMap['rating'] != null),
    
        
        name = jsonMap['name'],
        id = jsonMap['id'],
        time = jsonMap['time'],
        image = jsonMap['image'],
        comment = jsonMap['comment'],
        rating = jsonMap['rating'];
      
}
