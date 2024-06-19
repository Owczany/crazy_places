import 'package:crazy_places/classes/components/buttons/alert_button.dart';
import 'package:crazy_places/pages/map_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          child: AlertButton(
              fun: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MapPage()),
                  ),
              title: "Mapa"),
        ),
      ),
    );
  }
}
