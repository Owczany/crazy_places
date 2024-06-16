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
    bool klik = false;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: StarDialog(privatePoint: privatePoint),

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

class StarDialog extends StatefulWidget {
  final PrivatePoint privatePoint;

  const StarDialog({Key? key, required this.privatePoint}) : super(key: key);

  @override
  _StarDialogState createState() => _StarDialogState();
}

class _StarDialogState extends State<StarDialog> {
  bool klik = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: Text(widget.privatePoint.name)),
        Positioned(
          right: 0.0,
          top: -10.0,
          child: IconButton(
            icon: Icon(klik ? Icons.star : Icons.star_border,
            color: klik ? Colors.blueAccent : Colors.black,
            ),
            onPressed: () {
              setState(() {
                klik = !klik;
                //tutaj ma być logika do dodawania punktów do listy ulubionych
              });
            },
          ),
        ),
      ],
    );
  }
}