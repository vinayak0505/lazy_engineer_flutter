import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/config/theme/bloc/theme_event.dart';
import 'package:lazy_engineer/config/theme/bloc/theme_state.dart';
import '../app_theme/app_theme.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  //
  ThemeBloc()
      : super(ThemeState(theme: AppThemes.appThemeData[AppTheme.lightTheme]));
  Stream<ThemeState> mapEventToState(ThemeEvent? event) async* {
    if (event is ThemeEvent) {
      yield ThemeState(
        theme: AppThemes.appThemeData[event.theme],
      );
    }
  }
}
