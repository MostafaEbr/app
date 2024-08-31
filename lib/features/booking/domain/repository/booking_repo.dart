
import 'package:assessment/core/api/api_results.dart';
import '../../data/models/result_travels.dart';
import '../entities/book_request_body.dart';


abstract class BookingRepo {

 Future<ApiResult<ResultTravels>> getBookingList({required BookingRequestBody bookingRequestBody});
}