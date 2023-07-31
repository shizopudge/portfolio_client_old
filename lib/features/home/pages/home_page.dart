import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../projects/presentation/pages/projects_page.dart';
import '../cubit/home_cubit.dart';
import '../widgets/apps_list.dart';

class HomePage extends StatefulWidget {
  static const String path = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currPage =
        context.select<HomeCubit, int>((cubit) => cubit.state.currPage);
    return IndexedStack(
      index: currPage,
      children: [
        const AppsList(),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: const ProjectsPage(),
        ),
      ],
    );
  }
}
