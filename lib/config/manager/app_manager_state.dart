import 'package:freezed_annotation/freezed_annotation.dart';


part 'app_manager_state.freezed.dart';
@freezed
class AppMangerState with _$AppMangerState {
  const factory AppMangerState.initial() = _Initial;
  const factory AppMangerState.changeTheme() = ChangeTheme;
  const factory AppMangerState.changeLanguage() = ChangeLanguage;
}
