// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirportModelImpl _$$AirportModelImplFromJson(Map<String, dynamic> json) =>
    _$AirportModelImpl(
      id: json['id'] as String?,
      gmt: json['gmt'] as String?,
      airportId: json['airportId'] as String?,
      iata_code: json['iata_code'] as String?,
      city_iata_code: json['city_iata_code'] as String?,
      icao_code: json['icao_code'] as String?,
      country_iso2: json['country_iso2'] as String?,
      geoname_id: json['geoname_id'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      airport_name: json['airport_name'] as String?,
      country_name: json['country_name'] as String?,
      phone_number: json['phone_number'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$AirportModelImplToJson(_$AirportModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gmt': instance.gmt,
      'airportId': instance.airportId,
      'iata_code': instance.iata_code,
      'city_iata_code': instance.city_iata_code,
      'icao_code': instance.icao_code,
      'country_iso2': instance.country_iso2,
      'geoname_id': instance.geoname_id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'airport_name': instance.airport_name,
      'country_name': instance.country_name,
      'phone_number': instance.phone_number,
      'timezone': instance.timezone,
    };
