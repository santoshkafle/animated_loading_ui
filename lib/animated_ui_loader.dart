library;

import 'package:animated_loading_ui/res/icon_type.dart';
import 'package:animated_loading_ui/res/indicators/simple_rotation.dart';
import 'package:animated_loading_ui/res/indicators/three_dots_leftright.dart';
import 'package:flutter/material.dart';

class AnimatedUiLoader extends StatelessWidget {
  final Widget child;
  const AnimatedUiLoader._({required this.child});

  //facotry method... defaoult..
  factory AnimatedUiLoader({
    double radius = 15,
    double iconSize = 15,
    double bgHeight = 15,
    Color dotsColor = Colors.white,
    Color? iconColor,
    Color bgColor = Colors.transparent,
    List<BoxShadow>? dotsShadows,
    IconData? icon,
  }) {
    return AnimatedUiLoader._(
      child: ThreeDotsLeftright(
        radius: radius,
        iconSize: iconSize,
        bgHeight: bgHeight,
        dotsColor: dotsColor,
        iconColor: iconColor,
        bgColor: bgColor,
        dotsShadow: dotsShadows,
        icon: icon,
      ),
    );
  }

  //facotry moving rl... defaoult..
  factory AnimatedUiLoader.dotsMovingRL({
    double radius = 15,
    double iconSize = 15,
    double bgHeight = 15,
    Color dotsColor = Colors.white,
    Color? iconColor,
    Color bgColor = Colors.transparent,
    List<BoxShadow>? dotsShadows,
    IconData? icon,
  }) {
    return AnimatedUiLoader._(
      child: ThreeDotsLeftright(
        radius: radius,
        iconSize: iconSize,
        bgHeight: bgHeight,
        dotsColor: dotsColor,
        iconColor: iconColor,
        bgColor: bgColor,
        dotsShadow: dotsShadows,
        icon: icon,
      ),
    );
  }

  //facotry wheel rotation... defaoult..
  factory AnimatedUiLoader.rotate({
    double radius = 32,
    IconImage image = IconImage.wheel,
    Color? color
  }) {
    return AnimatedUiLoader._(
      child: SimpleRotation(
        radius: radius,
        iconImage: image,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
