
import 'package:assessment/features/booking/data/repo_impl/book_repo_impl.dart';
import 'package:assessment/features/booking/data/service/airport_web_service.dart';
import 'package:assessment/features/booking/data/service/web_service.dart';
import 'package:assessment/features/booking/domain/use_cases/get_airport_use_cases.dart';
import 'package:assessment/features/booking/presentation/manager/airport/airport_cubit.dart';
import 'package:assessment/features/booking/presentation/manager/booking_cubit.dart';
import 'package:get_it/get_it.dart';
import '../../config/manager/app_manager_cubit.dart';
import '../../features/booking/data/repo_impl/airport_repo_impl.dart';
import '../../features/booking/domain/use_cases/get_booking_use_case.dart';
import '../api/dio_factory.dart';



final sl = GetIt.instance;

 initializeDependencies()  async{

  // Setup Dio for network requests
  final dio = DioFactory.getDio();
  // Register Setting dependencies
  sl.registerFactory<AppMangerCubit>(() => AppMangerCubit());


  // Register Airport dependencies
  sl.registerLazySingleton<AirportWebService>(() => AirportWebService(dio));
  sl.registerLazySingleton<AirportRepoImpl>(() => AirportRepoImpl( airportWebService:  sl<AirportWebService>()));
  sl.registerLazySingleton<GetAirportUseCase>(() => GetAirportUseCase(airportRepo: sl<AirportRepoImpl>()));
  sl.registerFactory<AirportCubit>(() => AirportCubit(getAirportUseCase: sl<GetAirportUseCase>()));



  // Register Booking dependencies
  sl.registerLazySingleton<BookingWebService>(() => BookingWebService(dio));
  sl.registerLazySingleton<BookingRepoImpl>(() => BookingRepoImpl( bookingWebService:  sl<BookingWebService>()));
  sl.registerLazySingleton<GetFlightUseCase>(() => GetFlightUseCase(bookingRepo: sl<BookingRepoImpl>()));
  sl.registerFactory<BookingCubit>(() => BookingCubit(sl<GetFlightUseCase>()));









}
