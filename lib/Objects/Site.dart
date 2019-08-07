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

  const Site({
    @required this.name,
    @required this.info,
    @required this.type,
    @required this.image,
  })  : assert(name != null),
        assert(info != null),
        assert(type != null),
        assert(image != null);

  Site.fromJson(Map jsonMap)
      : assert(jsonMap['name'] != null),
        assert(jsonMap['info'] != null),
        assert(jsonMap['type'] != null),
        assert(jsonMap['image'] != null),
        assert(jsonMap['tickets'] != null),


        
        name = jsonMap['name'],
        info = jsonMap['info'],
        type = jsonMap['type'],
        image = jsonMap['image'];
}
