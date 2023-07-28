import 'package:dio/dio.dart';

import '../domain/entities/failure/failure.dart';

extension DioExceptionConvertation on DioExceptionType {
  Failure fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        return const CasualFailure(
            message: 'Request to API server was cancelled');
      case DioExceptionType.connectionTimeout:
        return const CasualFailure(
            message: 'Connection timeout with API server');
      case DioExceptionType.receiveTimeout:
        return const CasualFailure(
            message: 'Receive timeout in connection with API server');
      case DioExceptionType.sendTimeout:
        return const CasualFailure(
            message: 'Send timeout in connection with API server');
      default:
        return const CasualFailure(message: 'Something went wrong');
    }
  }
}
