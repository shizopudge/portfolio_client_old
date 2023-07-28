import 'package:client/core/services/mouse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vector_math/vector_math_64.dart';

class HoverAnimation extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  final Duration duration;
  final Matrix4? matrixOnHover;
  const HoverAnimation({
    super.key,
    required this.builder,
    this.duration = const Duration(milliseconds: 150),
    this.matrixOnHover,
  });

  @override
  State<HoverAnimation> createState() => _HoverAnimationState();
}

class _HoverAnimationState extends State<HoverAnimation> {
  final Matrix4 _initialMatrix = Matrix4.identity();

  late final Matrix4 _matrixOnHover;
  late final ValueNotifier<Matrix4> _transformNotifier;

  @override
  void initState() {
    _transformNotifier = ValueNotifier<Matrix4>(_initialMatrix);
    _matrixOnHover = widget.matrixOnHover ??
        Matrix4.compose(
          Vector3(5, -25.0, 0.0),
          Quaternion.identity(),
          Vector3(1.5, 1.5, 1.5),
        );
    super.initState();
  }

  @override
  void dispose() {
    _transformNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        context.read<MouseCubit>().setStatus(MouseStatus.click);

        _transformNotifier.value = _matrixOnHover;
      },
      onExit: (event) {
        context.read<MouseCubit>().setStatus(MouseStatus.casual);
        _transformNotifier.value = _initialMatrix;
      },
      child: ValueListenableBuilder(
        valueListenable: _transformNotifier,
        builder: (context, transform, _) => AnimatedContainer(
          duration: widget.duration,
          transform: transform,
          child: widget.builder(_isHovered),
        ),
      ),
    );
  }

  bool get _isHovered => _transformNotifier.value == _matrixOnHover;
}
