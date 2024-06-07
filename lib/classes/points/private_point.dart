import 'package:crazy_places/classes/air/aq_class.dart';
import 'package:crazy_places/classes/points/location_point.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';


class PrivatePoint extends LocationPoint {
  PrivatePoint({
    required double lat,
    required double lang,
    required Icon icon,
    required String name,
    required String description,
  }) : super(
    lat: lat,
    lang: lang,
    icon: icon,
    name: name,
    description: description,
  );

  @override
  String toString() {
    return 'PrivatePoint(lat: $lat, lang: $lang, pathLogo: $icon, name: $name, description: $description)';
  }

  Future<int> fetchData() async {

    try {
      var url = Uri.parse(
          'https://api.waqi.info/feed/geo:${this.lat};${this.lang}/?token=$APIKEY');
      var response = await http.get(url).timeout(const Duration(seconds: 5));
      if (response.statusCode == 200) {
        AirQuality airQuality = AirQuality.fromJson(jsonDecode(response.body));
        if (airQuality.aqi >= 0 && airQuality.aqi <= 50) {
          return 1;
        } else if (airQuality.aqi > 50 && airQuality.aqi <= 150) {
          return 2;
        } else if (airQuality.aqi > 150) {
          return 3;
        }
        //
        // print(airQuality);
        // return airQuality;
      }
      return 0;
    } on TimeoutException catch (e) {
      print('Timeout');
      return 0;
    }
  }


}