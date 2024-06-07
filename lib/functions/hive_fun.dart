import 'package:crazy_places/classes/points/private_point.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

void addPoint2List(PrivatePoint punkt, String type) {
  var box = Hive.box('Basic_Box');
  List lats = box.get("lats", defaultValue: [
    66.543602,
  ]);
  List langs = box.get("langs", defaultValue: [25.847201]);
  List types = box.get("types", defaultValue: [
    "default",
  ]);
  List names = box.get("names", defaultValue: ["Dom Świętego Mikołaja"]);
  List descs =
      box.get("descs", defaultValue: ["Święty Mikołaj Mieszka w Rovaniemi"]);
  lats.add(punkt.lat);
  langs.add(punkt.lang);
  types.add(type);
  names.add(punkt.name);
  descs.add(punkt.description);
  box.put("lats", lats);
  box.put("langs", langs);
  box.put("types", types);
  box.put("names", names);
  box.put("descs", descs);
}

List<PrivatePoint> getPoints() {
  var box = Hive.box('Basic_Box');
  List lats = box.get("lats", defaultValue: [66.543602]);
  List langs = box.get("langs", defaultValue: [25.847201]);
  List types = box.get("types", defaultValue: ["default"]);
  List names = box.get("names", defaultValue: ["Dom Świętego Mikołaja"]);
  List descs =
      box.get("descs", defaultValue: ["Święty Mikołaj Mieszka w Rovaniemi"]);
  List<PrivatePoint> lista = [];
  for (int i = 0; i < lats.length; i++) {
    lista.add(
      PrivatePoint(
          lat: lats[i],
          lang: langs[i],
          icon: getIcon(types[i]),
          name: names[i],
          description: descs[i]),
    );
  }
  // for (int i = 0; i < lats.length; i++) {
  //   print(lista[i]);
  // }
  return lista;
}

void wypiszPunkty() {
  var box = Hive.box('Basic_Box');
  List lats = box.get("lats", defaultValue: [66.543602]);
  List langs = box.get("langs", defaultValue: [25.847201]);
  List types = box.get("types", defaultValue: ["default"]);
  List names = box.get("names", defaultValue: ["Dom Świętego Mikołaja"]);
  List descs =
  box.get("descs", defaultValue: ["Święty Mikołaj Mieszka w Rovaniemi"]);
  List<PrivatePoint> lista = [];
  for (int i = 0; i < lats.length; i++) {
    lista.add(
      PrivatePoint(
          lat: lats[i],
          lang: langs[i],
          icon: getIcon(types[i]),
          name: names[i],
          description: descs[i]),
    );
  }
  for (int i = 0; i < lats.length; i++) {
    print(lista[i]);
  }
}
Icon getIcon(String typ) {
  return Icon(
    Icons.mosque_rounded,
    color: Colors.red,
    size: 50,
  );
}
