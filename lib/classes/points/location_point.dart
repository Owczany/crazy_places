import 'package:flutter/material.dart';
import 'dart:math';


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

  double distanceTo(double otherLat, double otherLang) {
    const double earthRadius = 6371.0; // Radius of the Earth in kilometers

    double dLat = _degreesToRadians(otherLat - lat);
    double dLang = _degreesToRadians(otherLang - lang);

    double a = sin(dLat / 2) * sin(dLat / 2) +
        cos(_degreesToRadians(lat)) * cos(_degreesToRadians(otherLat)) *
            sin(dLang / 2) * sin(dLang / 2);

    double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return earthRadius * c;
  }

  double _degreesToRadians(double degrees) {
    return degrees * pi / 180;
  }


  @override
  String toString() {
    return 'LocationPoint(lat: $lat, lang: $lang, pathLogo: $icon, name: $name, description: $description)';
  }
}