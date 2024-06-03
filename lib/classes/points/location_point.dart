import 'package:flutter/material.dart';

class LocationPoint{
  double lat;
  double lang;
  Icon icon;
  String name;

  LocationPoint({
    required this.lat,
    required this.lang,
    required this.icon,
    required this.name,
  });

  @override
  String toString() {
    return 'LocationPoint(lat: $lat, lang: $lang, pathLogo: $icon, name: $name)';
  }
}