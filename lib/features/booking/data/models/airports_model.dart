import '../../../../core/utils/models/pagination.dart';
import 'airport_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'airports_model.freezed.dart';
part 'airports_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class AirportsModel extends Equatable with _$AirportsModel {
  const AirportsModel._();

  const factory AirportsModel({
    Pagination? pagination,
    List<AirportModel>? data,
  }) = _AirportsModel;

  factory AirportsModel.fromJson(Map<String, dynamic> json) => _$AirportsModelFromJson(json);

  @override
  List<Object?> get props => [
    pagination,
    data,
  ];
}


