import 'package:animated_loading_ui/res/decoration/dots_decoration.dart';
import 'package:flutter/material.dart';

class ThreeDotsLeftright extends StatefulWidget {
  final double radius;
  final double iconSize;
  final double bgHeight;
  final Color dotsColor;
  final Color? iconColor;
  final Color bgColor;
  final List<BoxShadow>? dotsShadow;
  final IconData? icon;
  const ThreeDotsLeftright({
    super.key,
    this.radius = 15,
    this.iconSize = 15,
    this.bgHeight = 15,
    this.dotsColor = Colors.white,
    this.iconColor,
    this.bgColor = Colors.transparent,
    this.dotsShadow,
    this.icon,
  });

  @override
  State<ThreeDotsLeftright> createState() => _ThreeDotsLeftrightState();
}

class _ThreeDotsLeftrightState extends State<ThreeDotsLeftright>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _dotAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _dotAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 1.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 1.0, end: -1.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -1.0, end: 0.0), weight: 1),
    ]).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
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
    return Container(
      height: widget.bgHeight,
      width: 15 * 10,
      color: widget.bgColor,
      child: Stack(
        alignment: Alignment.center,
        children: List.generate(3, (index) => _animateDots(index)),
      ),
    );
  }

  _animateDots(int buildIndex) {
    const double distance = 20;

    double direction;
    if (buildIndex == 0) {
      direction = 3;
    } else if (buildIndex == 1) {
      direction = 2;
    } else if (buildIndex == 2) {
      direction = 1;
    } else {
      direction = 0;
    }
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_dotAnimation.value * distance * direction, 0.0),
          child: DotsDecoration.dotsVisuals(
            radius: widget.radius,
            color: widget.dotsColor,
            dotShadow: widget.dotsShadow,
            icon: widget.icon,
            iconSize: widget.iconSize,
            iconsColor: widget.iconColor,
          ),
        );
      },
    );
  }
}
