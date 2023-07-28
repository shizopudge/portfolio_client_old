import 'package:equatable/equatable.dart';

class Technology extends Equatable {
  final String id;
  final String name;
  final String image;

  const Technology({
    required this.id,
    required this.name,
    required this.image,
  });

  @override
  List<Object?> get props => [id, name, image];
}
