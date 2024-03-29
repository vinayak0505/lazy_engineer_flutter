// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState(pushNotification: false, darkMode: false));

  void togglePushNotification({required bool newValue}) {
    emit(state.copyWith(pushNotification: newValue));
  }
  void toggleDarkMode({required bool newValue}) {
    emit(state.copyWith(darkMode: newValue));
  }
}
