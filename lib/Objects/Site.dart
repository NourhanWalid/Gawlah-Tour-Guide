// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

import 'Indoor Map.dart';
import 'Tour Item.dart';

/// Information about a [Tour Site].
class Site {
  final String name;
  final String info;
  final String type;
  final String image;
  final Map<String, String> tickets;
  final Map<String, String> openning_hours;
  final List<TourItem> items;
  final IndoorMap indoorMap;

  const Site({
    @required this.name,
    @required this.info,
    @required this.type,
    @required this.image,
    @required this.tickets,
    @required this.openning_hours,
    @required this.items,
    @required this.indoorMap,
  })  : assert(name != null),
        assert(info != null),
        assert(type != null),
        assert(image != null),
        assert(tickets != null),
        assert(openning_hours != null),
        assert(items != null),
        assert(indoorMap != null);

  Site.fromJson(Map jsonMap)
      : assert(jsonMap['name'] != null),
        assert(jsonMap['info'] != null),
        assert(jsonMap['type'] != null),
        assert(jsonMap['image'] != null),
        assert(jsonMap['openning_hours'] != null),
        assert(jsonMap['tickets'] != null),
        assert(jsonMap['items'] != null),
        assert(jsonMap['indoorMap'] != null),

        
        name = jsonMap['name'],
        info = jsonMap['info'],
        type = jsonMap['type'],
        image = jsonMap['image'],
        openning_hours = jsonMap['openning_hours'],
        indoorMap = jsonMap['indoorMap'],
        tickets = jsonMap['tickets'],
        items = jsonMap['items'];
}
