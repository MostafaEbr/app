import 'package:freezed_annotation/freezed_annotation.dart';

import '../error/api_error_model.dart';

part 'api_results.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.validation(dynamic data) = Validation<T>;
  const factory ApiResult.failure(ApiErrorModel apiErrorModel) = Failure<T>;
}
