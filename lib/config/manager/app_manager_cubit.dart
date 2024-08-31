import 'package:bloc/bloc.dart';
import '../../core/utils/strings/app_strings.dart';
import 'app_manager_state.dart';


class AppMangerCubit extends Cubit<AppMangerState> {
  AppMangerCubit() : super(const AppMangerState.initial());

  String languageCode = AppStrings.arabic;

  void changeLanguage(String language) async {
    emit(const AppMangerState.initial());
    languageCode = language;
    emit(const AppMangerState.changeLanguage());
  }







}
