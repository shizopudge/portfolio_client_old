// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnknownFailure _$UnknownFailureFromJson(Map<String, dynamic> json) =>
    UnknownFailure(
      message: json['message'] ?? 'Something went wrong',
    );

Map<String, dynamic> _$UnknownFailureToJson(UnknownFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

ServerFailure _$ServerFailureFromJson(Map<String, dynamic> json) =>
    ServerFailure(
      message: json['message'],
      statusCode: json['statusCode'] as int,
    );

Map<String, dynamic> _$ServerFailureToJson(ServerFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

CacheFailure _$CacheFailureFromJson(Map<String, dynamic> json) => CacheFailure(
      message: json['message'],
    );

Map<String, dynamic> _$CacheFailureToJson(CacheFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
