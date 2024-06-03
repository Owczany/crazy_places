import 'package:flutter/material.dart';

class LocationPoint{
  double lat;
  double lang;
  Icon icon;
  String name;
  String description;

  LocationPoint({
    required this.lat,
    required this.lang,
    required this.icon,
    required this.name,
    required this.description,
  });

  @override
  String toString() {
    return 'LocationPoint(lat: $lat, lang: $lang, pathLogo: $icon, name: $name, description: $description)';
  }
}