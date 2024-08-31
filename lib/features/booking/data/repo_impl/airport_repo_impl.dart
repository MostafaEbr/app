import 'package:assessment/core/api/api_results.dart';
import 'package:assessment/features/booking/data/service/airport_web_service.dart';
import '../../../../core/enums/status_code.dart';
import '../../../../core/error/api_error_model.dart';
import '../../../../core/error/error_handler.dart';
import '../../domain/repository/airport_repo.dart';
import '../models/airports_model.dart';

class AirportRepoImpl extends AirportRepo {
  final AirportWebService airportWebService;
  final String _accessToken = "4637d021d5a8c17d55809816c2163911";
  AirportRepoImpl({required this.airportWebService});

  @override
  Future<ApiResult<AirportsModel>> getAirPorts() async{
    AirportsModel airportsModel;
    try {
      var data =
          await airportWebService.getAirports(accessToken: _accessToken);
      airportsModel = AirportsModel.fromJson(data);
      return ApiResult.success(airportsModel);
    } catch (error) {
      ApiErrorModel apiErrorModel = ApiErrorHandler.handle(error);
      if (apiErrorModel.status == HttpStatusCode.unprocessableEntity.code) {
        return ApiResult.validation(apiErrorModel);
      }
      return ApiResult.failure(apiErrorModel);
    }
  }


}