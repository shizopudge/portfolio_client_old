import 'package:flutter/material.dart';

import '../../../styles/colors.dart';

class DesktopElement extends StatelessWidget {
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final String name;
  final String imagePath;
  const DesktopElement({
    super.key,
    this.onTap,
    this.onDoubleTap,
    required this.name,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
              ),
            ),
            SizedBox(height: constraints.maxHeight * .08),
            SizedBox(
              height: constraints.maxHeight * .1,
              child: FittedBox(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Pallete.second,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
