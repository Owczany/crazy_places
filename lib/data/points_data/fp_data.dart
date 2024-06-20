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
  FunnyPoint(
    lat: 51.594736,
    lang: 18.733621,
    icon: const Icon(
      Icons.park,
      color: Colors.red,
      size: 40,
    ),
    name: "A komu to potrzebne",
    description: "Wywiad z Sieradza na temat legalizacji marihuanen.",
    pathYT:
        "https://www.youtube.com/watch?v=gPq5EY1O09g&ab_channel=siewie.tvSieradzkieWie%C5%9Bci",
    musicPath: "mari.mp3",
  ),
  FunnyPoint(
    lat: 51.648656,
    lang: 17.815415,
    icon: const Icon(
      Icons.mic,
      color: Colors.red,
      size: 40,
    ),
    name: "Co Pana na codzień denerwuje",
    description: "Chemia mnie interesuje",
    pathYT: "https://www.youtube.com/watch?v=5pHDY7S-zmQ&ab_channel=OstroviaTV",
    musicPath: "chemia.mp3",
  ),
  FunnyPoint(
    lat: 50.298821,
    lang: 18.669870,
    icon: const Icon(
      Icons.computer,
      color: Colors.red,
      size: 40,
    ),
    name: "Bede grał w gre",
    description: "Co planuje Pan robić w Sylwestra?",
    pathYT: "https://www.youtube.com/watch?v=b0HF8M5UKdA&ab_channel=MrPhilos1000",
    musicPath: "gre.mp3",
  ),
  FunnyPoint(
    lat: 53.429107,
    lang: 14.518359,
    icon: const Icon(
      Icons.car_crash,
      color: Colors.red,
      size: 40,
    ),
    name: "Ale urwał",
    description: "Sroga zima i oblodzone drogi",
    pathYT: "https://www.youtube.com/watch?v=IBFz7G2YfgI&ab_channel=Szajs",
    musicPath: "ale.mp3",
  ),
];
