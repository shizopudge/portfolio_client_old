import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CommonLoader extends StatelessWidget {
  final Color color;
  final double? height;
  final double? width;

  const CommonLoader({
    super.key,
    required this.color,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FittedBox(
        child: Row(
          children: [
            Text(
              'Loading',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: color,
                  ),
            ),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('...',
                    textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: color,
                        ),
                    speed: const Duration(milliseconds: 250)),
              ],
              repeatForever: true,
            ),
          ],
        ),
      ),
    );
  }
}
