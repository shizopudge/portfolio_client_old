import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'failure.g.dart';

sealed class Failure extends Equatable {
  final dynamic message;

  const Failure({required this.message});
}

@JsonSerializable()
class CasualFailure extends Failure {
  const CasualFailure({super.message = 'Something went wrong'});

  factory CasualFailure.fromJson(Map<String, dynamic> json) =>
      _$CasualFailureFromJson(json);

  Map<String, dynamic> toJson() => _$CasualFailureToJson(this);

  @override
  List<Object?> get props => [message];
}

@JsonSerializable()
class ServerFailure extends Failure {
  final int statusCode;
  const ServerFailure({
    super.message,
    required this.statusCode,
  });

  factory ServerFailure.fromJson(Map<String, dynamic> json) =>
      _$ServerFailureFromJson(json);

  Map<String, dynamic> toJson() => _$ServerFailureToJson(this);

  @override
  List<Object?> get props => [message, statusCode];
}

@JsonSerializable()
class CacheFailure extends Failure {
  const CacheFailure({super.message});

  factory CacheFailure.fromJson(Map<String, dynamic> json) =>
      _$CacheFailureFromJson(json);

  Map<String, dynamic> toJson() => _$CacheFailureToJson(this);

  @override
  List<Object?> get props => [message];
}
