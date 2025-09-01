import 'package:flutter/material.dart';

class DotsDecoration {
  static Widget dotsVisuals({
    double radius = 15,
    double iconSize = 15,
    Color color = Colors.white,
    Color? iconsColor,
    List<BoxShadow>? dotShadow,
    IconData? icon,
  }) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: dotShadow,
      ),
      child:
          icon != null ? Icon(icon, color: iconsColor, size: iconSize) : null,
    );
  }
}
