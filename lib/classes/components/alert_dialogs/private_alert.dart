import 'package:crazy_places/classes/components/buttons/alert_button.dart';
import 'package:crazy_places/classes/components/other/air_tile.dart';

import 'package:crazy_places/classes/points/private_point.dart';
import 'package:flutter/material.dart';

class PrivateAlert{
  final PrivatePoint privatePoint;

  PrivateAlert(this.privatePoint);

  void showAlert(BuildContext context) async {
    int air = await privatePoint.fetchData();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(privatePoint.name),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Text(privatePoint.description),
                AirTile(air: air),
              ],
            ),
          ),
          actions: [
            AlertButton(
              title: "Usuń",
              fun: () {
                Navigator.of(context).pop();
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
