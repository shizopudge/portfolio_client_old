import 'package:equatable/equatable.dart';

import 'difficulty.dart';
import 'task.dart';
import 'technology.dart';
import 'url.dart';

class Project extends Equatable {
  final int id;
  final String name;
  final String? description;
  final String slug;
  final String purpose;
  final List<String> images;
  final List<Task> tasks;
  final List<Difficulty> difficulties;
  final List<Technology> technologies;
  final List<Url> urls;

  const Project({
    required this.id,
    required this.name,
    required this.description,
    required this.slug,
    required this.purpose,
    required this.images,
    required this.tasks,
    required this.difficulties,
    required this.technologies,
    required this.urls,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        slug,
        purpose,
        images,
        tasks,
        difficulties,
        technologies,
        urls
      ];
}
