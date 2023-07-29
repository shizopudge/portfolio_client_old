import 'package:flutter/material.dart';

class OpacityAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final bool repeat;
  const OpacityAnimation({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 300),
    this.repeat = false,
  });

  @override
  State<OpacityAnimation> createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _animation =
      Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

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
      builder: (context, _) =>
          Opacity(opacity: _animation.value, child: widget.child),
    );
  }
}
