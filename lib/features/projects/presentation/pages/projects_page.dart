import 'package:flutter/material.dart';

import '../../../../core/services/adaptative.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Adaptive.init(context);
    return const Scaffold(
      body: Center(
        child: Text(
          'Projects',
        ),
      ),
    );
  }
}
