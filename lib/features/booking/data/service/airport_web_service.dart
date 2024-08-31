import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/api/api_constant.dart';

part 'airport_web_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrlAirport)
abstract class AirportWebService {
  factory AirportWebService(Dio dio, {String baseUrl}) = _AirportWebService;

  @GET(ApiEndPoints.airports)
  Future<dynamic> getAirports(
      {@Query('access_key') required String accessToken});
}
