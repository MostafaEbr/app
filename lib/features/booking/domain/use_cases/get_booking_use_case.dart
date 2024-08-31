import 'package:equatable/equatable.dart';
import '../../../../core/api/api_results.dart';
import '../../data/models/result_travels.dart';
import '../entities/book_request_body.dart';
import '../repository/booking_repo.dart';


class GetFlightUseCase extends Equatable {
  final BookingRepo bookingRepo;
  const GetFlightUseCase({required this.bookingRepo});

  Future<ApiResult<ResultTravels>> call(
      {required BookingRequestBody bookingRequestBody}) async {
    return await bookingRepo.getBookingList(bookingRequestBody: bookingRequestBody);
  }

  @override
  List<Object?> get props => [bookingRepo];
}
