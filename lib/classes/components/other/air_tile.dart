import 'package:crazy_places/classes/points/private_point.dart';
import 'package:flutter/material.dart';

class AirTile extends StatelessWidget {
  final PrivatePoint air;

  const AirTile({super.key, required this.air});

  ListTile getListTile(int num) {
    switch (num) {
      case 1:
        return const ListTile(
          leading: Icon(Icons.air),
          tileColor: Colors.green,
          title: Text("Dobra"),
        );
      case 2:
        return const ListTile(
          leading: Icon(Icons.air),
          tileColor: Colors.yellow,
          title: Text("Średnia"),
        );
      case 3:
        return const ListTile(
          leading: Icon(Icons.air),
          tileColor: Colors.green,
          title: Text("Słaba"),
        );
      default:
        return const ListTile(
          leading: Icon(Icons.air),
          tileColor: Colors.green,
          title: Text("Nie znam"),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<int>(
      future: air.fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const ListTile(
            leading: Icon(Icons.air),
            tileColor: Colors.teal,
            title: Text("Getting Data"),
          );
        } else if (snapshot.hasError) {
          return const ListTile(
            leading: Icon(Icons.air),
            tileColor: Colors.orange,
            title: Text("Error"),
          );
        } else {
          return getListTile(snapshot.data!);
        }
      },
    );
  }
}
