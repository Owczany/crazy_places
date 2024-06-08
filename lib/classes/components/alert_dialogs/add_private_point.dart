import 'package:crazy_places/classes/points/private_point.dart';
import 'package:crazy_places/functions/hive_fun.dart';
import 'package:crazy_places/pages/map_page.dart';
import 'package:flutter/material.dart';

class AddPrivatePointAlert {
  final double latitude;
  final double longitude;

  AddPrivatePointAlert({required this.latitude, required this.longitude});

  void showAlert(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController descController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text('Add Private Point')),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'name'),
              ),
              TextField(
                controller: descController,
                decoration: InputDecoration(labelText: 'desc'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('ok'),
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    descController.text.isNotEmpty) {
                  final newPoint = PrivatePoint(
                    lat: latitude,
                    lang: longitude,
                    icon: Icon(Icons.add),
                    name: nameController.text,
                    description: descController.text,
                  );
                  addPoint2List(newPoint, "default");
                  wypiszPunkty();
                  print('git');
                } else {
                  print('nie git');
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MapPage()),
                );
              },
            ),
            TextButton(
              child: Text('anuluj'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MapPage()),
                );
              },
            ),

          ],
        );
      },
    );
  }
}
