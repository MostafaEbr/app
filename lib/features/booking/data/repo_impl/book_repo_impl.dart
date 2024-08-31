
import 'package:assessment/core/api/api_results.dart';
import 'package:assessment/features/booking/data/service/web_service.dart';

import '../../../../core/enums/status_code.dart';
import '../../../../core/error/api_error_model.dart';
import '../../../../core/error/error_handler.dart';
import '../../../../core/utils/helper/date_formater.dart';
import '../../domain/entities/book_request_body.dart';
import '../../domain/repository/booking_repo.dart';
import '../models/result_travels.dart';

class BookingRepoImpl extends BookingRepo {
  BookingWebService bookingWebService;
  final String _apiKey = "bf03d03a4033adbe2d11421bb3d848fb1754700efc396ce53222c9cfeca6a6e4";
  final String engine ="google_flights";
  BookingRepoImpl({required this.bookingWebService});

  @override
  Future<ApiResult<ResultTravels>> getBookingList({required BookingRequestBody bookingRequestBody})async{
    ResultTravels resultTravels;
    try {
      var data = await bookingWebService.getBooking(
          engine: engine,
          apiKey: _apiKey,
          departureId:  bookingRequestBody.from!.city_iata_code! ,
          arrivalId: bookingRequestBody.to!.city_iata_code!,
          type: bookingRequestBody.type!,
          travelClass: bookingRequestBody.returnTravelClass(bookingRequestBody.classBooking),
          adults: bookingRequestBody.adults! ,
          children:  bookingRequestBody.children,
          outboundDate:AppDateFormater.dayFormated(bookingRequestBody.startDate!),
          returnDate: AppDateFormater.dayFormated(bookingRequestBody.endDate!),
      );

      resultTravels=ResultTravels.fromJson(data);
      return ApiResult.success(resultTravels);
    } catch (error) {
      ApiErrorModel apiErrorModel = ApiErrorHandler.handle(error);
      if (apiErrorModel.status == HttpStatusCode.unprocessableEntity.code) {
        return ApiResult.validation(apiErrorModel);
      }
      return ApiResult.failure(apiErrorModel);
    }
  }


}