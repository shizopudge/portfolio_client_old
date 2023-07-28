import 'package:equatable/equatable.dart';

class Url extends Equatable {
  final String id;
  final String name;
  final String link;

  const Url({
    required this.id,
    required this.name,
    required this.link,
  });

  @override
  List<Object?> get props => [];
}
