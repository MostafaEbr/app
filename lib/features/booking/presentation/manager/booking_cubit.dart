import 'package:assessment/features/booking/presentation/manager/booking_states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../data/models/airport_model.dart';
import '../../data/models/result_travels.dart';
import '../../domain/entities/book_request_body.dart';
import '../../domain/entities/select_passenger.dart';
import '../../domain/use_cases/get_booking_use_case.dart';

class BookingCubit extends Cubit<BookingState> {
  GetFlightUseCase getFlightUseCase ;
  BookingCubit(this.getFlightUseCase) : super(const BookingState.initial());
  BookingRequestBody bookingRequestBody = BookingRequestBody();

  updateFrom(AirportModel airport) {
    emit(const BookingState.loading());
    bookingRequestBody.from = airport;
    emit(BookingState.success(bookingRequestBody));
  }

  updateTo(AirportModel airport) {
    emit(const BookingState.loading());

    bookingRequestBody.to = airport;
    emit(BookingState.success(bookingRequestBody));
  }
  void changeFromTo() {
    emit(const BookingState.loading());
    AirportModel? from = bookingRequestBody.from;
    AirportModel? to =  bookingRequestBody.to;
    bookingRequestBody.to = from;
    bookingRequestBody.from = to;
    emit(BookingState.success(bookingRequestBody));
  }


  updatePeriod(DateTimeRange daysSelect) {
    emit(const BookingState.loading());

    bookingRequestBody.startDate = daysSelect.start;
    bookingRequestBody.endDate = daysSelect.end;
    emit(BookingState.success(bookingRequestBody));
  }

  updatePassengers(SelectPassenger selectPassenger) {
    emit(const BookingState.loading());
    bookingRequestBody.adults = selectPassenger.adultsPassengers;
    bookingRequestBody.children = selectPassenger.childrenPassengers;
    emit(BookingState.success(bookingRequestBody));
  }

  updateClass(selectedClass) {
    emit(const BookingState.loading());
    bookingRequestBody.classBooking = selectedClass;
    emit(BookingState.success(bookingRequestBody));
  }
  ResultTravels? resultTravels ;

  getBookingFlight()async{
    resultTravels=null;
    emit(const BookingState.loading());
    final result =  await getFlightUseCase(bookingRequestBody: bookingRequestBody);
    result.when(
        success: (data){
          resultTravels = data;
          emit(BookingState.success(data));
        },
        validation: (validation){
          emit(BookingState.failure(validation));
        },
        failure: (failure){

          emit(BookingState.failure(failure));
        });

  }


}
