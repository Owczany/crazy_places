import 'package:flutter/material.dart';

class AlertButton extends StatelessWidget {
  final String title;
  final Function fun;

  AlertButton({required this.title, required this.fun});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
         backgroundColor: Colors.black,
      ),
      onPressed: () => fun(), // Akcja na kliknięcie
      child: Text(
        title,
        style: TextStyle(color: Colors.white), // Tekst na biało
      ),
    );
  }
}