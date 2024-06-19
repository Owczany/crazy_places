import 'package:crazy_places/classes/components/buttons/alert_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final websiteUrl = Uri.parse(
      "https://www.youtube.com/shorts/SXHMnicI6Pg");
  final someUrl = Uri.parse("https://www.youtube.com/shorts/SXHMnicI6Pg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AlertButton(
                  fun: () =>
                      launchUrl(someUrl, mode: LaunchMode.externalApplication),
                  title: "kliknij mnie :]")
            ],
          ),
        ),
      ),
    );
  }
}
