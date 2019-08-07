// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

/// Information about a [Tour Items].
class TourItem {
  final int id;
  final String name;
  final String info;
  final String image;
  final List<String> tags;
  final String period;
  final String counrty;
  final LatLng location;

  const TourItem({
    @required this.name,
    @required this.id,
    @required this.info,
    @required this.image,
    @required this.tags,
    @required this.period,
    @required this.counrty,
    @required this.location,
  })  : assert(name != null),
        assert(id != null),
        assert(info != null),
        assert(location != null);

  TourItem.fromJson(Map jsonMap)
      : assert(jsonMap['name'] != null),
        assert(jsonMap['id'] != null),
        assert(jsonMap['info'] != null),
        assert(jsonMap['image'] != null),
        assert(jsonMap['tags'] != null),
        assert(jsonMap['period'] != null),
        assert(jsonMap['counrty'] != null),
        assert(jsonMap['location'] != null),
        name = jsonMap['name'],
        id = jsonMap['id'],
        info = jsonMap['info'],
        image = jsonMap['image'],
        tags = jsonMap['tags'],
        period = jsonMap['period'],
        counrty = jsonMap['counrty'],
        location = jsonMap['location'];
}
