import 'package:animated_loading_ui/res/icon_type.dart';
import 'package:flutter/material.dart';

class SimpleRotation extends StatefulWidget {
  final radius;
  final IconImage iconImage;
  final Color? color;
  const SimpleRotation({
    super.key,
    required this.radius,
    required this.iconImage,
    this.color,
  });

  @override
  State<SimpleRotation> createState() => _SimpleRotationState();
}

class _SimpleRotationState extends State<SimpleRotation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _rotationAnimation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _rotationAnimation,
      child: Container(
        height: widget.radius,
        width: widget.radius,
        alignment: Alignment.center,
        child: Image.asset(
          IconType.getIcon(widget.iconImage),
          package: 'animated_loading_ui',
          fit: BoxFit.cover,
          color: widget.color,
        ),
      ),
    );
  }
}
