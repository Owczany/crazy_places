import 'package:crazy_places/classes/points/historical_point.dart';
import 'package:flutter/material.dart';

class HistoricalAlert{
  final HistoricalPoint historicalPoint;

  HistoricalAlert(this.historicalPoint);

  void showAlert(BuildContext context) {
    historicalPoint.playSound();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(historicalPoint.name),
          content: Container(
            child: Text(historicalPoint.description),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
