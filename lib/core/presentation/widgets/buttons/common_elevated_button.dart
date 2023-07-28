import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

import '../../../styles/colors.dart';
import '../../animations/hover_animation.dart';

class CommonElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double minHeight;
  final double minWidth;
  final bool isEnabled;
  const CommonElevatedButton({
    super.key,
    required this.onPressed,
    required this.minHeight,
    required this.minWidth,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return HoverAnimation(
      matrixOnHover: isEnabled
          ? Matrix4.compose(
              Vector3(0, -2.0, 2.0),
              Quaternion.identity(),
              Vector3(1.1, 1.1, 1.1),
            )
          : Matrix4.identity(),
      builder: (isHovered) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          boxShadow: [
            BoxShadow(
              color: Pallete.primary.withOpacity(.25),
              blurRadius: 5,
              spreadRadius: 1,
              offset: const Offset(
                0,
                3,
              ),
            ),
          ],
        ),
        constraints: BoxConstraints(
          minHeight: minHeight,
          minWidth: minWidth,
        ),
        child: ElevatedButton(
          onPressed: isEnabled ? onPressed : null,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(21),
            backgroundColor: Pallete.primary,
            disabledBackgroundColor: Pallete.addition,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
          ),
          child: FittedBox(
            child: Text(
              'Войти',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Pallete.second),
            ),
          ),
        ),
      ),
    );
  }
}
