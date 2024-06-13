import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({super.key});

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  late Animation<double> size;
  late Animation<Color> color;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    final Animation<double> curve =
        CurvedAnimation(parent: controller!, curve: Curves.easeInOut);
    size = Tween(begin: 20.0, end: 30.0).animate(curve);
    controller?.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {controller!.forward();}, // TODO: Button
      child: Icon(
        Icons.star_border,
        size: size.value,
      ),
    );
  }
}
