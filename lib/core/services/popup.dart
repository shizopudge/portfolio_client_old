import 'package:flutter/material.dart';

import '../styles/colors.dart';

class Popup {
  static showSnackBar({
    required BuildContext context,
    required String message,
  }) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          backgroundColor: Pallete.primary,
        ),
      );
}
