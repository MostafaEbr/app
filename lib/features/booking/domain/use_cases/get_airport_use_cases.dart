import 'package:assessment/features/booking/data/models/airports_model.dart';
import 'package:assessment/features/booking/domain/repository/airport_repo.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/api/api_results.dart';


class GetAirportUseCase extends Equatable {
  final AirportRepo airportRepo;
  const GetAirportUseCase({required this.airportRepo});

  Future<ApiResult<AirportsModel>> call() async {
    return await airportRepo.getAirPorts();
  }

  @override
  List<Object?> get props => [airportRepo];
}
