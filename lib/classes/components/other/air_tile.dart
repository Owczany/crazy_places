import 'package:flutter/material.dart';

class AirTile extends StatelessWidget {
  final int air;

  AirTile({required this.air});

  @override
  Widget build(BuildContext context) {
    Color tileColor;
    String airQualityText;

    switch (air) {
      case 1:
        tileColor = Colors.green;
        airQualityText = 'Jakość powietrza: dobra';
        break;
      case 2:
        tileColor = Colors.yellow;
        airQualityText = 'Jakość powietrza: średnia';
        break;
      case 3:
        tileColor = Colors.red;
        airQualityText = 'Jakość powietrza: zła';
        break;
      default:
        tileColor = Colors.blue;
        airQualityText = 'Brak danych';
    }

    return ListTile(
      leading: Icon(Icons.air),
      tileColor: tileColor,
      title: Text(airQualityText),
    );
  }
}