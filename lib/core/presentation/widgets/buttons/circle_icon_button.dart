import '../../animations/opacity_animation.dart';
import '../../animations/slide_animation.dart';
import '../../../styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

import '../../animations/hover_animation.dart';

class CircleIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon icon;
  final double radius;
  const CircleIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return HoverAnimation(
      matrixOnHover: Matrix4.compose(
        Vector3(0, -10, 1.5),
        Quaternion(0, 0, 0, 0),
        Vector3(
          1.1,
          1.1,
          1.1,
        ),
      ),
      builder: (isHovered) => SlideAnimation(
        begin: const Offset(0, -1),
        child: OpacityAnimation(
          child: Container(
            height: radius * 2,
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Pallete.addition.withOpacity(.4),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Pallete.addition.withOpacity(.3),
                ),
                BoxShadow(
                  color: Pallete.addition.withOpacity(.2),
                ),
              ],
            ),
            child: FittedBox(
              child: IconButton(
                onPressed: onPressed,
                icon: icon,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
