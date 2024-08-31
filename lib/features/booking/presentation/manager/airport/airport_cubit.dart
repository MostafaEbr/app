import 'package:assessment/features/booking/domain/use_cases/get_airport_use_cases.dart';
import 'package:bloc/bloc.dart';

import '../../../data/models/airports_model.dart';
import 'airport_states.dart';

class AirportCubit extends Cubit<AirportState>{
  final GetAirportUseCase getAirportUseCase;
  AirportCubit({required this.getAirportUseCase}) : super(const AirportState.initial());
  AirportsModel? airportsModel ;

  getAirport()async{

    emit(const AirportState.loading());
   final result =  await getAirportUseCase();
    result.when(
        success: (data){
          airportsModel = data;
          emit(AirportState.success(data));
        },
        validation: (validation){
          emit(AirportState.failure(validation));
        },
        failure: (failure){

          emit(AirportState.failure(failure));
    });

  }

}