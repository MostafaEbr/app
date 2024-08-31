// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic data) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic data)? success,
    TResult? Function(dynamic data)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingInitial value) initial,
    required TResult Function(BookingStateLoading value) loading,
    required TResult Function(BookingStateSuccess value) success,
    required TResult Function(BookingStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingInitial value)? initial,
    TResult? Function(BookingStateLoading value)? loading,
    TResult? Function(BookingStateSuccess value)? success,
    TResult? Function(BookingStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingInitial value)? initial,
    TResult Function(BookingStateLoading value)? loading,
    TResult Function(BookingStateSuccess value)? success,
    TResult Function(BookingStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BookingInitialImplCopyWith<$Res> {
  factory _$$BookingInitialImplCopyWith(_$BookingInitialImpl value,
          $Res Function(_$BookingInitialImpl) then) =
      __$$BookingInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingInitialImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingInitialImpl>
    implements _$$BookingInitialImplCopyWith<$Res> {
  __$$BookingInitialImplCopyWithImpl(
      _$BookingInitialImpl _value, $Res Function(_$BookingInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingInitialImpl implements _BookingInitial {
  const _$BookingInitialImpl();

  @override
  String toString() {
    return 'BookingState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookingInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic data) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic data)? success,
    TResult? Function(dynamic data)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingInitial value) initial,
    required TResult Function(BookingStateLoading value) loading,
    required TResult Function(BookingStateSuccess value) success,
    required TResult Function(BookingStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingInitial value)? initial,
    TResult? Function(BookingStateLoading value)? loading,
    TResult? Function(BookingStateSuccess value)? success,
    TResult? Function(BookingStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingInitial value)? initial,
    TResult Function(BookingStateLoading value)? loading,
    TResult Function(BookingStateSuccess value)? success,
    TResult Function(BookingStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _BookingInitial implements BookingState {
  const factory _BookingInitial() = _$BookingInitialImpl;
}

/// @nodoc
abstract class _$$BookingStateLoadingImplCopyWith<$Res> {
  factory _$$BookingStateLoadingImplCopyWith(_$BookingStateLoadingImpl value,
          $Res Function(_$BookingStateLoadingImpl) then) =
      __$$BookingStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingStateLoadingImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingStateLoadingImpl>
    implements _$$BookingStateLoadingImplCopyWith<$Res> {
  __$$BookingStateLoadingImplCopyWithImpl(_$BookingStateLoadingImpl _value,
      $Res Function(_$BookingStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingStateLoadingImpl implements BookingStateLoading {
  const _$BookingStateLoadingImpl();

  @override
  String toString() {
    return 'BookingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic data) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic data)? success,
    TResult? Function(dynamic data)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingInitial value) initial,
    required TResult Function(BookingStateLoading value) loading,
    required TResult Function(BookingStateSuccess value) success,
    required TResult Function(BookingStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingInitial value)? initial,
    TResult? Function(BookingStateLoading value)? loading,
    TResult? Function(BookingStateSuccess value)? success,
    TResult? Function(BookingStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingInitial value)? initial,
    TResult Function(BookingStateLoading value)? loading,
    TResult Function(BookingStateSuccess value)? success,
    TResult Function(BookingStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookingStateLoading implements BookingState {
  const factory BookingStateLoading() = _$BookingStateLoadingImpl;
}

/// @nodoc
abstract class _$$BookingStateSuccessImplCopyWith<$Res> {
  factory _$$BookingStateSuccessImplCopyWith(_$BookingStateSuccessImpl value,
          $Res Function(_$BookingStateSuccessImpl) then) =
      __$$BookingStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$BookingStateSuccessImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingStateSuccessImpl>
    implements _$$BookingStateSuccessImplCopyWith<$Res> {
  __$$BookingStateSuccessImplCopyWithImpl(_$BookingStateSuccessImpl _value,
      $Res Function(_$BookingStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BookingStateSuccessImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BookingStateSuccessImpl implements BookingStateSuccess {
  const _$BookingStateSuccessImpl(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'BookingState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingStateSuccessImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingStateSuccessImplCopyWith<_$BookingStateSuccessImpl> get copyWith =>
      __$$BookingStateSuccessImplCopyWithImpl<_$BookingStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic data) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic data)? success,
    TResult? Function(dynamic data)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingInitial value) initial,
    required TResult Function(BookingStateLoading value) loading,
    required TResult Function(BookingStateSuccess value) success,
    required TResult Function(BookingStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingInitial value)? initial,
    TResult? Function(BookingStateLoading value)? loading,
    TResult? Function(BookingStateSuccess value)? success,
    TResult? Function(BookingStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingInitial value)? initial,
    TResult Function(BookingStateLoading value)? loading,
    TResult Function(BookingStateSuccess value)? success,
    TResult Function(BookingStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BookingStateSuccess implements BookingState {
  const factory BookingStateSuccess(final dynamic data) =
      _$BookingStateSuccessImpl;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$BookingStateSuccessImplCopyWith<_$BookingStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingStateFailureImplCopyWith<$Res> {
  factory _$$BookingStateFailureImplCopyWith(_$BookingStateFailureImpl value,
          $Res Function(_$BookingStateFailureImpl) then) =
      __$$BookingStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$BookingStateFailureImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingStateFailureImpl>
    implements _$$BookingStateFailureImplCopyWith<$Res> {
  __$$BookingStateFailureImplCopyWithImpl(_$BookingStateFailureImpl _value,
      $Res Function(_$BookingStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BookingStateFailureImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BookingStateFailureImpl implements BookingStateFailure {
  const _$BookingStateFailureImpl(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'BookingState.failure(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingStateFailureImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingStateFailureImplCopyWith<_$BookingStateFailureImpl> get copyWith =>
      __$$BookingStateFailureImplCopyWithImpl<_$BookingStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic data) failure,
  }) {
    return failure(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic data)? success,
    TResult? Function(dynamic data)? failure,
  }) {
    return failure?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic data)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BookingInitial value) initial,
    required TResult Function(BookingStateLoading value) loading,
    required TResult Function(BookingStateSuccess value) success,
    required TResult Function(BookingStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BookingInitial value)? initial,
    TResult? Function(BookingStateLoading value)? loading,
    TResult? Function(BookingStateSuccess value)? success,
    TResult? Function(BookingStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BookingInitial value)? initial,
    TResult Function(BookingStateLoading value)? loading,
    TResult Function(BookingStateSuccess value)? success,
    TResult Function(BookingStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BookingStateFailure implements BookingState {
  const factory BookingStateFailure(final dynamic data) =
      _$BookingStateFailureImpl;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$BookingStateFailureImplCopyWith<_$BookingStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
