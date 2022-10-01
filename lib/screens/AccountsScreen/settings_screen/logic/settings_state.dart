part of 'settings_cubit.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState(bool pushNotification, bool darkMode) = _Settings;
}
