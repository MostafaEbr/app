import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/api/api_constant.dart';

part 'web_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class BookingWebService {
  factory BookingWebService(Dio dio, {String baseUrl}) = _BookingWebService;

  @GET(ApiEndPoints.booking)
  Future<dynamic> getBooking(
      {@Query("engine") required String engine,
      @Query("api_key")required String apiKey,
      @Query("departure_id") required String departureId,
      @Query("arrival_id")required  String arrivalId,
      @Query("outbound_date") required String? outboundDate,
      @Query("return_date") required String returnDate,
      @Query("type") required int type,
      @Query("adults") required int adults,
      @Query("children") required int? children,
      @Query("travel_class") required int  travelClass,
      });
}
