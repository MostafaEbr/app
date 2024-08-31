// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airports_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirportsModelImpl _$$AirportsModelImplFromJson(Map<String, dynamic> json) =>
    _$AirportsModelImpl(
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AirportModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AirportsModelImplToJson(_$AirportsModelImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
