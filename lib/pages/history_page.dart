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
      "https://www.youtube.com/watch?v=wI1IroOdVvE&ab_channel=HeyFlutter%E2%80%A4com");
  final someUrl = Uri.parse("https://pub.dev/packages/flutter_osm_plugin");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            children: [
              Link(
                uri: websiteUrl,
                target: LinkTarget.defaultTarget,
                builder: (context, followLink) => TextButton(
                  onPressed: followLink,
                  child: Text("Kliknij mnie"),
                ),
              ),
              ElevatedButton(
                  onPressed: () =>
                      launchUrl(someUrl, mode: LaunchMode.externalApplication),
                  child: Text("siemka"))
            ],
          ),
        ),
      ),
    );
  }
}
