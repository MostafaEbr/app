import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';


part 'pagination.freezed.dart';
part 'pagination.g.dart';


@Freezed(makeCollectionsUnmodifiable: false)
class Pagination extends Equatable with _$Pagination{

  const Pagination._();

  const factory Pagination(
      {
        int? offset,
        int? limit,
        int? count,
        int? total
      })= _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);

  @override
  List<Object?> get props => [
     offset,
     limit,
     count,
     total
  ];

}