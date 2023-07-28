import 'package:dio/dio.dart';
import '../domain/entities/failure/failure.dart';

extension DioExceptionConvertation on DioExceptionType {
  Failure fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        return const UnknownFailure(
            message: 'Request to API server was cancelled');
      case DioExceptionType.connectionTimeout:
        return const UnknownFailure(
            message: 'Connection timeout with API server');
      case DioExceptionType.receiveTimeout:
        return const UnknownFailure(
            message: 'Receive timeout in connection with API server');
      case DioExceptionType.sendTimeout:
        return const UnknownFailure(
            message: 'Send timeout in connection with API server');
      default:
        return const UnknownFailure(message: 'Something went wrong');
    }
  }
}
