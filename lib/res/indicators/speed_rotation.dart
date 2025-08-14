// import 'package:animated_loading_ui/res/decoration/dots_decoration.dart';
import 'dart:math';
import 'package:animated_loading_ui/res/icon_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SpeedRotation extends StatefulWidget {
  final acceleration;
  final maxSpeed;
  final radius;
  final IconImage iconImage;
  const SpeedRotation({
    super.key,
    required this.acceleration,
    required this.maxSpeed,
    required this.radius,
    required this.iconImage,
  });

  @override
  State<SpeedRotation> createState() => _SpeedRotationState();
}

class _SpeedRotationState extends State<SpeedRotation>
    with SingleTickerProviderStateMixin {
  double _angle = 0;
  double _velocity = 0.01;

  late Ticker _ticker;

  @override
  void initState() {
    super.initState();
    _ticker = Ticker((_) {
      _velocity += widget.acceleration;
      _velocity = _velocity.clamp(0, widget.maxSpeed).toDouble();
      _angle = (_angle + _velocity) % (2 * pi);
      setState(() {});
    });

    _ticker.start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _angle,
      child: Container(
        height: widget.radius,
        width: widget.radius,
        alignment: Alignment.center,
        child: Image.asset(
          IconType.GetIcon(widget.iconImage),
          package: 'animated_loading_ui',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
