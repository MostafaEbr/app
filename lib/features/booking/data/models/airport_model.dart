import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';


part 'airport_model.freezed.dart';
part 'airport_model.g.dart';


@Freezed(makeCollectionsUnmodifiable: false)
class AirportModel extends Equatable with _$AirportModel{

  const AirportModel._();

  const factory AirportModel(
      {
        String? id,
        String? gmt,
        String? airportId,
        String? iata_code,
        String? city_iata_code,
        String? icao_code,
        String? country_iso2,
        String? geoname_id,
        String? latitude,
        String? longitude,
        String? airport_name,
        String? country_name,
        String? phone_number,
        String? timezone,
      })= _AirportModel;

  factory AirportModel.fromJson(Map<String, dynamic> json) => _$AirportModelFromJson(json);

  @override
  List<Object?> get props => [
     id,
     gmt,
     airportId,
     iata_code,
     city_iata_code,
     icao_code,
     country_iso2,
     geoname_id,
     latitude,
    longitude,
    airport_name,
    country_name,
    phone_number,
    timezone,
  ];

}
