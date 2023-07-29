import 'package:flutter/material.dart';

import '../../../styles/colors.dart';
import '../common/common_loader.dart';

class LoadingPage extends StatelessWidget {
  final double? loaderHeight;
  final double? loaderWidth;
  const LoadingPage({
    super.key,
    this.loaderHeight,
    this.loaderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: Scaffold(
        backgroundColor: Pallete.primary,
        body: Center(
          child: CommonLoader(
            color: Pallete.second,
            height: loaderHeight,
            width: loaderWidth,
          ),
        ),
      ),
    );
  }
}
