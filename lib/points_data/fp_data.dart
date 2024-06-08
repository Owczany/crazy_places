import 'package:crazy_places/classes/points/funny_point.dart';
import 'package:flutter/material.dart';

List<FunnyPoint> funnyPoints = [
  FunnyPoint(
    lat: 53.197744,
    lang: 18.373484,
    icon: const Icon(
      Icons.pedal_bike,
      color: Colors.red,
      size: 40,
    ),
    name: "Paweł Jumper",
    description:
        "To jest to miejsce gdzie Paweł Jumper skakał. Hasło 'to już się kameruje!' przeszło do historii polskiego YouTuba",
    pathYT: "https://www.youtube.com/watch?v=9cX17CeYKt0&ab_channel=Dendi321",
    musicPath: "pawel.mp3",
  ),
  FunnyPoint(
    lat: 51.4706915,
    lang: 15.3938231,
    icon: const Icon(
      Icons.military_tech,
      color: Colors.red,
      size: 40,
    ),
    name: "Chorąży zepsuł błotnik",
    description:
        "Jeden z najbardziej znanych punktów na YouTubowej mapie kraju. Jako ciekawsotkę warto wyjaśnić skąd taka złość u dowódcy. Wóz BWP-1 przedstawiony na filmie jest wozem bardzo przestarzałym. Z tego powodu, od kilkunastu lat w całym kraju brakuje części zamiennych do wozu. Dlatego prawdą było stwierdzenie: 'Takiego [błotnika] już nie dostanę'.",
    pathYT:
        "https://www.youtube.com/watch?v=fc3qeAuxeuo&t=6s&ab_channel=thefocus",
    musicPath: "chorazy.mp3",
  ),
  FunnyPoint(
    lat: 51.208617,
    lang: 16.151040,
    icon: const Icon(
      Icons.construction,
      color: Colors.red,
      size: 40,
    ),
    name: "Dobrze chłopaki robią",
    description:
        "Najsłynniejszy remont Legnicy, ale nie ma co się przejmować bo dobrze chłopaki robią, dobry przekaz leci.",
    pathYT:
        "https://www.youtube.com/watch?v=RsiC3ymj9Zc&ab_channel=RapPolskiePodziemie",
    musicPath: "dobrze.mp3",
  ),
];
