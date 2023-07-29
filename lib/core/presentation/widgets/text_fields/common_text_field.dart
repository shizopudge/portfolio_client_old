import 'package:flutter/material.dart';

import '../../../styles/colors.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController _controller;
  final String hintText;
  const CommonTextField({
    super.key,
    required TextEditingController controller,
    required this.hintText,
  }) : _controller = controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Pallete.second,
          ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Pallete.primary,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
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
