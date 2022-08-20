import 'package:equatable/equatable.dart';
import 'package:lazy_engineer/config/theme/app_theme/app_theme.dart';

class ThemeEvent extends Equatable {
  final AppTheme theme;
  const ThemeEvent({required this.theme});

  @override
  List<Object> get props => [];
}
