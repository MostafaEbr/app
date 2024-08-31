// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airports_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AirportsModel _$AirportsModelFromJson(Map<String, dynamic> json) {
  return _AirportsModel.fromJson(json);
}

/// @nodoc
mixin _$AirportsModel {
  Pagination? get pagination => throw _privateConstructorUsedError;
  List<AirportModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirportsModelCopyWith<AirportsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportsModelCopyWith<$Res> {
  factory $AirportsModelCopyWith(
          AirportsModel value, $Res Function(AirportsModel) then) =
      _$AirportsModelCopyWithImpl<$Res, AirportsModel>;
  @useResult
  $Res call({Pagination? pagination, List<AirportModel>? data});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$AirportsModelCopyWithImpl<$Res, $Val extends AirportsModel>
    implements $AirportsModelCopyWith<$Res> {
  _$AirportsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AirportModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AirportsModelImplCopyWith<$Res>
    implements $AirportsModelCopyWith<$Res> {
  factory _$$AirportsModelImplCopyWith(
          _$AirportsModelImpl value, $Res Function(_$AirportsModelImpl) then) =
      __$$AirportsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pagination? pagination, List<AirportModel>? data});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$AirportsModelImplCopyWithImpl<$Res>
    extends _$AirportsModelCopyWithImpl<$Res, _$AirportsModelImpl>
    implements _$$AirportsModelImplCopyWith<$Res> {
  __$$AirportsModelImplCopyWithImpl(
      _$AirportsModelImpl _value, $Res Function(_$AirportsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AirportsModelImpl(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AirportModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AirportsModelImpl extends _AirportsModel {
  const _$AirportsModelImpl({this.pagination, this.data}) : super._();

  factory _$AirportsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AirportsModelImplFromJson(json);

  @override
  final Pagination? pagination;
  @override
  final List<AirportModel>? data;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AirportsModelImplCopyWith<_$AirportsModelImpl> get copyWith =>
      __$$AirportsModelImplCopyWithImpl<_$AirportsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirportsModelImplToJson(
      this,
    );
  }
}

abstract class _AirportsModel extends AirportsModel {
  const factory _AirportsModel(
      {final Pagination? pagination,
      final List<AirportModel>? data}) = _$AirportsModelImpl;
  const _AirportsModel._() : super._();

  factory _AirportsModel.fromJson(Map<String, dynamic> json) =
      _$AirportsModelImpl.fromJson;

  @override
  Pagination? get pagination;
  @override
  List<AirportModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AirportsModelImplCopyWith<_$AirportsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
