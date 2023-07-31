import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/adaptative.dart';
import '../bloc/projects_bloc.dart';
import '../widgets/projects_web.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProjectsBloc(),
      child: BlocConsumer<ProjectsBloc, ProjectsState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Responsive(
            mobile: const Text('mobile'),
            tablet: const Text('tablet'),
            desktop: ProjectsWeb(
              projects: state.projects,
            ),
          );
        },
      ),
    );
  }
}
