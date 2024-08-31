import '../../../../core/api/api_results.dart';
import '../../data/models/airports_model.dart';

abstract class AirportRepo {

  Future<ApiResult<AirportsModel>> getAirPorts();

}