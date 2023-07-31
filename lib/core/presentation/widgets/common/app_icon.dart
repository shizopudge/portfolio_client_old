import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final VoidCallback onTap;
  final String name;
  final String imagePath;
  final bool isSelected;
  const AppIcon({
    super.key,
    required this.onTap,
    required this.name,
    required this.imagePath,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(
        builder: (context, constraints) => AnimatedContainer(
          padding: isSelected
              ? EdgeInsets.zero
              : EdgeInsets.all(constraints.maxHeight * .2),
          duration: const Duration(milliseconds: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 6,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                flex: 1,
                child: FittedBox(
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
