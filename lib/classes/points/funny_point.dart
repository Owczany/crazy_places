import 'package:crazy_places/classes/points/location_point.dart';
import 'package:flutter/material.dart';

class FunnyPoint extends LocationPoint {
  String pathYT;

  FunnyPoint({
    required double lat,
    required double lang,
    required Icon icon,
    required String name,
    required String description,
    required this.pathYT,
  }) : super(
    lat: lat,
    lang: lang,
    icon: icon,
    name: name,
    description: description,
  );

  @override
  String toString() {
    return 'FunnyPoint(lat: $lat, lang: $lang, pathLogo: $icon, name: $name, description: $description, pathYT: $pathYT)';
  }
}