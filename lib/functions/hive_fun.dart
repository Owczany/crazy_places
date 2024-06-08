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
void removePointFromList(PrivatePoint punkt) {
  var box = Hive.box('Basic_Box');

  // Pobierz aktualne listy z boxa
  List lats = box.get("lats", defaultValue: [66.543602]);
  List langs = box.get("langs", defaultValue: [25.847201]);
  List types = box.get("types", defaultValue: ["default"]);
  List names = box.get("names", defaultValue: ["Dom Świętego Mikołaja"]);
  List descs = box.get("descs", defaultValue: ["Święty Mikołaj Mieszka w Rovaniemi"]);
  int index = -1;
  for (int i = 0; i< lats.length; i++){
    if (lats[i] == punkt.lat && langs[i] == punkt.lang && names[i] == punkt.name){
      index = i;
      break;
    }
  }
  // Sprawdź, czy indeks jest prawidłowy
  if (index >= 0 && index < lats.length) {
    // Usuń elementy z list
    lats.removeAt(index);
    langs.removeAt(index);
    types.removeAt(index);
    names.removeAt(index);
    descs.removeAt(index);

    // Zaktualizuj listy w boxie
    box.put("lats", lats);
    box.put("langs", langs);
    box.put("types", types);
    box.put("names", names);
    box.put("descs", descs);
  } else {
    print("Nieprawidłowy indeks: $index");
  }
}

Icon getIcon(String typ) {
  switch (typ) {
    case 'dom':
      return Icon(
        Icons.home,
        color: Colors.blue,
        size: 50,
      );
    case 'szkoła':
      return Icon(
        Icons.school,
        color: Colors.green,
        size: 50,
      );
    case 'praca':
      return Icon(
        Icons.work,
        color: Colors.brown,
        size: 50,
      );
    case 'hobby':
      return Icon(
        Icons.sports_soccer,
        color: Colors.orange,
        size: 50,
      );
    case 'inne':
      return Icon(
        Icons.star,
        color: Colors.orange,
        size: 50,
      );
    default:
      return Icon(
        Icons.star,
        color: Colors.purple,
        size: 50,
      );
  }
}

