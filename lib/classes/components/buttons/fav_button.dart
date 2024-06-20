import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  final bool isClicked;
  final void Function(bool)? onTap;
  const FavouriteButton({
    super.key,
    required this.isClicked,
    this.onTap,
  });

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  late bool isClicked;
  late Animation<double> size;
  late Animation<Color?> color;

  @override
  void initState() {
    isClicked = widget.isClicked;
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    final Animation<double> curve =
        CurvedAnimation(parent: controller!, curve: Curves.easeInOut);
    size = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 20.0, end: 30.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 30.0, end: 20.0), weight: 1)
    ]).animate(curve);
    color = ColorTween(begin: Colors.black, end: Colors.yellow).animate(curve);
    controller?.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isClicked ? controller!.reverse() : controller!.forward();
        setState(() {
          isClicked = !isClicked;
          widget.onTap;
        });
      }, // TODO: Button
      child: Icon(
        isClicked ? Icons.star : Icons.star_border,
        size: size.value,
        color: color.value,
      ),
    );
  }
}
