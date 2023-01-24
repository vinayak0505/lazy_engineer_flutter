part of 'settings_cubit.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool pushNotification,
    required bool darkMode,
  }) = _Settings;
}
