import 'package:crazy_places/classes/points/location_point.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FunnyPoint extends LocationPoint {
  String description;
  String pathYT;

  FunnyPoint({
    required double lat,
    required double lang,
    required Icon icon,
    required String name,
    required this.description,
    required this.pathYT,
  }) : super(
    lat: lat,
    lang: lang,
    icon: icon,
    name: name,
  );

  @override
  String toString() {
    return 'FunnyPoint(lat: $lat, lang: $lang, pathLogo: $icon, name: $name, description: $description, pathYT: $pathYT)';
  }

  void launchYoutubeVideo() async {
    String url = pathYT;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}