library animated_ui_loader;

import 'package:animated_loading_ui/res/icon_type.dart';
import 'package:animated_loading_ui/res/indicators/simple_rotation.dart';
import 'package:animated_loading_ui/res/indicators/three_dots_leftright.dart';
import 'package:animated_loading_ui/res/indicators/speed_rotation.dart';
import 'package:flutter/material.dart';

class AnimatedUiLoader extends StatelessWidget {
  final Widget child;
  const AnimatedUiLoader._({Key? key, required this.child}) : super(key: key);

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
  factory AnimatedUiLoader.wheel({
    double acceleration = 0.001,
    double maxSpeed = 15,
    double radius = 32,
  }) {
    return AnimatedUiLoader._(
      child: SpeedRotation(
        acceleration: acceleration,
        maxSpeed: maxSpeed,
        radius: radius,
        iconImage: IconImage.wheel,
      ),
    );
  }

  //facotry fan rotation... defaoult..
  factory AnimatedUiLoader.fan({double radius = 32, Color? color}) {
    return AnimatedUiLoader._(
      child: SimpleRotation(
        radius: radius,
        iconImage: IconImage.fan,
        color: color,
      ),
    );
  }

  //facotry gear rotation... defaoult..
  factory AnimatedUiLoader.gear({double radius = 32, Color? color}) {
    return AnimatedUiLoader._(
      child: SimpleRotation(
        radius: radius,
        iconImage: IconImage.gear,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
