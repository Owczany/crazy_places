import 'package:crazy_places/classes/components/buttons/alert_button.dart';
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
          title: Center(child: Text(historicalPoint.name)),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Text(historicalPoint.description),
              ],
            ),
          ),
          actions: [
            AlertButton(
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
