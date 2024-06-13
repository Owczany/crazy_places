import 'package:crazy_places/classes/components/buttons/alert_button.dart';
import 'package:crazy_places/classes/components/other/air_tile.dart';

import 'package:crazy_places/classes/points/private_point.dart';
import 'package:crazy_places/functions/hive_fun.dart';
import 'package:crazy_places/pages/map_page.dart';
import 'package:flutter/material.dart';

class PrivateAlert{
  final PrivatePoint privatePoint;

  PrivateAlert(this.privatePoint);

  void showAlert(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text(privatePoint.name)),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Text(privatePoint.description),
                AirTile(air: privatePoint),
              ],
            ),
          ),
          actions: [
            AlertButton(
              title: "Usuń",
              fun: () {
                removePointFromList(privatePoint);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MapPage()),
                );
              },
            ),AlertButton(
              title: "Okej",
              fun: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
