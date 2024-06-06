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
              child: const Text('OK'),
            ),
            TextButton(
              onPressed: () async {
                final url = Uri.parse(funnyPoint.pathYT);
                Navigator.of(context).pop();
                if (!await canLaunchUrl(url)) {
                  launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  // Jeśli link jest niepoprawny, możesz pokazać błąd lub inny komunikat
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Nie można otworzyć linku: $url'),
                      ),
                    );
                  }
                }
              },
              child: const Text('Przejdź do YT'),
            ),
          ],
        );
      },
    );
  }
}
