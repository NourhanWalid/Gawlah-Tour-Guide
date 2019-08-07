

import 'package:flutter/material.dart';
import 'Indoor Map.dart';
import 'Review.dart';
import 'Site.dart';
import 'Tour Item.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

/// Information about a [Tour Items].
class Tour {
final String name;
final int id;
final Site site;
final String info;
final String image;
final double rating;
final List<Review> reviews;
final double duration;
final List <String> themes;
final IndoorMap indoorMap;



final List <TourItem> items;

  
  const Tour(
      {
    @required this.name,
    @required this.id,
    @required  this.info,
    @required  this.image,
    @required  this.site,
    @required  this.themes,
    @required  this.indoorMap,
    @required  this.duration, 
    @required  this.rating, 
    @required  this.items,     
    @required  this.reviews, 

    
  })  : assert(name != null),
        assert(id != null),
        assert(info != null),
        assert(image != null),
        assert(site != null),
        assert(themes != null),
        assert(indoorMap != null),
        assert(duration != null),
        assert(rating != null),
        assert(items != null),
        assert(reviews != null);
   


  Tour.fromJson(Map jsonMap)
      : assert(jsonMap['name'] != null),
        assert(jsonMap['id'] != null),
        assert(jsonMap['info'] != null),
        assert(jsonMap['image'] != null),
        assert(jsonMap['site'] != null),
        assert(jsonMap['themes'] != null),
        assert(jsonMap['indoorMap']  != null),
        assert(jsonMap['duration'] != null),
        assert(jsonMap['rating'] != null),
        assert(jsonMap['items'] != null),
        assert(jsonMap['reviews'] != null),
        
        name = jsonMap['name'],
        id = jsonMap['id'],
        info = jsonMap['info'],
        site = jsonMap['site'],
        image = jsonMap['image'],
        themes = jsonMap['themes'],
        indoorMap = jsonMap['indoorMap'],
        duration = jsonMap['duration'],
        rating = jsonMap['rating'],
        items = jsonMap['items'],
        reviews = jsonMap['reviews'];
}
