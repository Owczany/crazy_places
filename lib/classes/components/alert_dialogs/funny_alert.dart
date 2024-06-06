import 'package:crazy_places/classes/points/funny_point.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FunnyAlert {
  final FunnyPoint funnyPoint;

  FunnyAlert(this.funnyPoint);

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(funnyPoint.name),
          content: Container(
            child: Text(funnyPoint.description),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
            TextButton(
              onPressed: () async {
                final url = funnyPoint.pathYT;
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  // Jeśli link jest niepoprawny, możesz pokazać błąd lub inny komunikat
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Nie można otworzyć linku: $url'),
                    ),
                  );
                }
                Navigator.of(context).pop();
              },
              child: Text('Przejdź do YT'),
            ),
          ],
        );
      },
    );
  }
}
