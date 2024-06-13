import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({super.key});

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {}, // TODO: Button
      child: Icon(Icons.start_outlined),
    );
  }
}
