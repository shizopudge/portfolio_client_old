import 'dart:ui';

import 'package:flutter/material.dart';

class BlurAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final double begin;
  final double end;
  final bool repeat;
  const BlurAnimation({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 500),
    this.repeat = false,
    this.begin = 15.0,
    this.end = 0.001,
  });

  @override
  State<BlurAnimation> createState() => _BlurAnimationState();
}

class _BlurAnimationState extends State<BlurAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _animation =
      Tween<double>(begin: widget.begin, end: widget.end)
          .animate(_animationController);

  @override
  void initState() {
    if (widget.repeat) {
      _animationController =
          AnimationController(vsync: this, duration: widget.duration)
            ..repeat(reverse: true);
    } else {
      _animationController =
          AnimationController(vsync: this, duration: widget.duration)
            ..forward();
    }
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, _) => ImageFiltered(
        imageFilter: ImageFilter.blur(
            sigmaX: _animation.value, sigmaY: _animation.value),
        child: widget.child,
      ),
    );
  }
}
