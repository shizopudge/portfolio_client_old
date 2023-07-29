import 'package:flutter/material.dart';

class SlideAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Offset begin;
  final Offset end;
  final bool repeat;
  const SlideAnimation({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 300),
    this.repeat = false,
    this.begin = const Offset(1, 0),
    this.end = const Offset(0, 0),
  });

  @override
  State<SlideAnimation> createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _animation =
      Tween<Offset>(begin: widget.begin, end: widget.end)
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
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
