import 'package:assessment/features/booking/data/models/airport_model.dart';


class BookingRequestBody {
  AirportModel? from;
  AirportModel? to;
  DateTime? startDate;
  DateTime? endDate;
  int? type;
  int? adults;
  int? children;
  String? classBooking;

  BookingRequestBody({
    this.from,
    this.to,
    this.startDate,
    this.endDate,
    this.adults=1,
    this.type=1,
    this.children,
    this.classBooking,
  });


  BookingRequestBody.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    type = json['type'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    adults = json['adults'];
    children = json['children'];
    classBooking = json['classBooking'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['departure_id'] = from;
    data['arrival_id'] = to;
    data['outbound_date'] = startDate;
    if(type==1){
      data['return_date'] = endDate;
    }
    data['type'] = type;
    data['adults'] = adults;
    data['children'] = children;
    if(classBooking!=null) {
      data['travel_class'] =returnTravelClass(classBooking);
    }
    return data;
  }

 int returnTravelClass(classBooking){
    int bookingClass = 1;
    switch(classBooking){
      case 'Economy':
        bookingClass=1;
        break;
      case 'Business':
        bookingClass=2;
        break;
      case 'First Class':
        bookingClass=4;
        break;
    }
    return bookingClass;
  }

}