import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(
            message: "Connection to server failed",
            errors: error.message,
            status: error.response?.statusCode,
          );
        case DioExceptionType.cancel:
          return ApiErrorModel(
            message: "Request to the server was cancelled",
            errors: error.message,
            status: error.response?.statusCode,
          );
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(
            message: "Connection timeout with the server",
            errors: error.message,
            status: error.response?.statusCode,
          );
        case DioExceptionType.unknown:
          return ApiErrorModel(
            message:
                "Connection to the server failed due to internet connection",
            errors: error.message,
            status: error.response?.statusCode,
          );
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
            message: "Receive timeout in connection with the server",
            errors: error.message,
            status: error.response?.statusCode,
          );
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            message: "Send timeout in connection with the server",
            errors: error.message,
            status: error.response?.statusCode,
          );
        default:
          return ApiErrorModel(
            message: "Something went wrong",
            errors: error.message,
            status: error.response?.statusCode,
          );
      }
    } else {
      return ApiErrorModel(
        message: "Unknown error occurred",
        errors: error.toString(),
      );
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  return ApiErrorModel(
    message: data['message'] ?? "Unknown error occurred",
    status: data['status'] ?? 500,
    errors: data['errors'] ?? {},
  );
}
