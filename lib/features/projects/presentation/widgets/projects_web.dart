import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/styles/colors.dart';
import '../../domain/entities/project.dart';

class ProjectsWeb extends StatelessWidget {
  final List<Project> projects;
  const ProjectsWeb({
    super.key,
    required this.projects,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.transparent,
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return CachedNetworkImage(
            imageUrl: project.images.first,
            imageBuilder: (context, imageProvider) => Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  32,
                ),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    32,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Pallete.black.withOpacity(.45),
                      Pallete.black.withOpacity(.35),
                      Pallete.black.withOpacity(.25),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ),
            placeholder: (context, url) => Shimmer.fromColors(
              baseColor: Pallete.grey.shade300,
              highlightColor: Pallete.white,
              child: Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    32,
                  ),
                  color: Pallete.white,
                ),
              ),
            ),
            errorWidget: (context, url, error) => Shimmer.fromColors(
              baseColor: Pallete.grey.shade300,
              highlightColor: Pallete.white,
              child: Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    32,
                  ),
                  color: Pallete.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
