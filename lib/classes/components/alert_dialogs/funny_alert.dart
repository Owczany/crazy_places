import 'package:crazy_places/classes/components/buttons/alert_button.dart';
import 'package:crazy_places/classes/components/buttons/fav_button.dart';
import 'package:crazy_places/classes/points/funny_point.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FunnyAlert {
  final FunnyPoint funnyPoint;

  FunnyAlert(this.funnyPoint);

  void showAlert(BuildContext context) {
    funnyPoint.playSound();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // title: Center(child: Text(funnyPoint.name)),
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text(funnyPoint.name), FavouriteButton()],
            ),
          ),
          content: Container(
            child: Text(funnyPoint.description),
          ),
          actions: [
            AlertButton(
              title: "Okej",
              fun: () {
                Navigator.of(context).pop();
              },
            ),
            AlertButton(
              title: "Przejdź do YT",
              fun: () async {
                final url = Uri.parse(funnyPoint.pathYT);
                Navigator.of(context).pop();
                if (await canLaunchUrl(url)) {
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
            ),
            // TextButton(
            //   onPressed: () async {
            //     final url = Uri.parse(funnyPoint.pathYT);
            //     Navigator.of(context).pop();
            //     if (!await canLaunchUrl(url)) {
            //       launchUrl(url, mode: LaunchMode.externalApplication);
            //     } else {
            //       // Jeśli link jest niepoprawny, możesz pokazać błąd lub inny komunikat
            //       if (context.mounted) {
            //         ScaffoldMessenger.of(context).showSnackBar(
            //           SnackBar(
            //             content: Text('Nie można otworzyć linku: $url'),
            //           ),
            //         );
            //       }
            //     }
            //   },
            //   child: const Text('Przejdź do YT'),
            // ),
          ],
        );
      },
    );
  }
}
