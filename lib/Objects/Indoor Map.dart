// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

import 'Tour Item.dart';

/// Information about a [Tour Site].
class IndoorMap {
  final List<Polygon> polygons;
  final List<Marker> markers;
  final List<TourItem> items;

  const IndoorMap({
    @required this.polygons,
    @required this.markers,
    @required this.items,
  })  : assert(polygons != null),
        assert(markers != null),
        assert(items != null);

  IndoorMap.fromJson(Map jsonMap)
      : assert(jsonMap['polygons'] != null),
        assert(jsonMap['markers'] != null),
        assert(jsonMap['items'] != null),
        polygons = jsonMap['polygons'],
        markers = jsonMap['markers'],
        items = jsonMap['items'];
}
