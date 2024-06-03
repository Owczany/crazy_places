import 'package:crazy_places/classes/points/location_point.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HistoricalPoint extends LocationPoint{
  String musicPath;

  HistoricalPoint({
    required double lat,
    required double lang,
    required Icon icon,
    required String name,
    required String description,
    required this.musicPath,
  }) : super(
    lat: lat,
    lang: lang,
    icon: icon,
    name: name,
    description: description,
  );

  @override
  String toString() {
    return 'HistoricalPoint(lat: $lat, lang: $lang, pathLogo: $icon, name: $name, description: $description, musicPath: $musicPath)';
  }

  Future<void> playSound() async { //puszczanie dzwieku po sciezce
    AudioPlayer audioPlayer = AudioPlayer();
    print("dzwiek zaczety");
    await audioPlayer.play(AssetSource(this.musicPath));
    print("dzwiek zakonczony");
  }

}