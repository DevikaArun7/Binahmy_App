
import 'package:flutter/material.dart';

class GradientDivider extends StatelessWidget {
  final double height;
  final List<Color> colors;

  GradientDivider({required this.height, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}