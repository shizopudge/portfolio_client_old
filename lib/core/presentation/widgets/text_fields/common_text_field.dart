import 'package:flutter/material.dart';

import '../../../styles/colors.dart';

class CommonTextField extends StatefulWidget {
  final TextEditingController _controller;
  final String hintText;
  const CommonTextField({
    super.key,
    required TextEditingController controller,
    required this.hintText,
  }) : _controller = controller;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField>
    with TickerProviderStateMixin {
  late final AnimationController _transferController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 150));
  late final Animation<double> _transferAnimation =
      Tween<double>(begin: 100, end: 0).animate(_transferController);
  late final AnimationController _opacityController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 150));
  late final Animation<double> _opacityAnimation =
      Tween<double>(begin: 0, end: 1).animate(_opacityController);

  @override
  void dispose() {
    _transferController.dispose();
    _opacityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget._controller,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Pallete.second,
          ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Pallete.primary,
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Pallete.second,
            ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(21),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(21),
        ),
      ),
    );
  }
}
