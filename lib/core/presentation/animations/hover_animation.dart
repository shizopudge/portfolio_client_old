import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class HoverAnimation extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  final Duration duration;
  final Matrix4? matrixOnHover;
  final bool repeat;
  const HoverAnimation({
    super.key,
    required this.builder,
    this.duration = const Duration(milliseconds: 150),
    this.matrixOnHover,
    this.repeat = false,
  });

  @override
  State<HoverAnimation> createState() => _HoverAnimationState();
}

class _HoverAnimationState extends State<HoverAnimation>
    with SingleTickerProviderStateMixin {
  final Matrix4 _initialMatrix = Matrix4.identity();

  final Matrix4 _matrixOnHover = Matrix4.compose(
    Vector3(5, -25.0, 0.0),
    Quaternion.identity(),
    Vector3(1.5, 1.5, 1.5),
  );
  late final AnimationController _hoverAnimationController =
      AnimationController(vsync: this, duration: widget.duration);
  late final Animation<Matrix4> _hoverAnimation = Matrix4Tween(
          begin: _initialMatrix, end: widget.matrixOnHover ?? _matrixOnHover)
      .animate(_hoverAnimationController);

  @override
  void dispose() {
    _hoverAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        if (widget.repeat) {
          _hoverAnimationController.repeat(reverse: true);
        } else {
          _hoverAnimationController.forward();
        }
      },
      onExit: (event) {
        if (widget.repeat) {
          _hoverAnimationController.stop();
        } else {
          _hoverAnimationController.reverse();
        }
      },
      child: AnimatedBuilder(
        animation: _hoverAnimation,
        builder: (context, _) => AnimatedContainer(
            duration: _hoverAnimationController.duration ?? Duration.zero,
            transform: _hoverAnimation.value,
            child: widget.builder(isHovered)),
      ),
    );
  }

  bool get isHovered =>
      _hoverAnimation.isCompleted ||
      _hoverAnimation.status == AnimationStatus.forward;
}
