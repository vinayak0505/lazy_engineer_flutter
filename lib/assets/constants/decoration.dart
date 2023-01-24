import 'package:flutter/material.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';

const double kRoundedRectangleRadius = 8.0;

BoxDecoration kRoundedContainer = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: AppThemes.lightDarkColor),
  borderRadius: const BorderRadius.all(
    Radius.circular(kRoundedRectangleRadius),
  ),
);

BoxDecoration kRoundedBottomNavigator = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: AppThemes.lightDarkColor),
  borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  ),
);

BoxDecoration kRoundedTopContainer = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: AppThemes.lightDarkColor),
  borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
);

BoxDecoration kRoundedBottomContainer = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: AppThemes.lightDarkColor),
  borderRadius: const BorderRadius.only(
    bottomLeft: Radius.circular(8),
    bottomRight: Radius.circular(8),
  ),
);

TextStyle? errorStyle = ThemeData.light()
    .textTheme
    .labelSmall
    ?.copyWith(color: ThemeData.light().errorColor, fontSize: 12);

final toBeBuildInFutureSnackBar = SnackBar(
  margin: const EdgeInsets.fromLTRB(24, 0, 24, 64),
  content: const Text(
    'To be build in Future',
    style: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
  ),
  shape: RoundedRectangleBorder(
        side: const BorderSide(),
        borderRadius: BorderRadius.circular(12),
      ),
  duration: const Duration(milliseconds: 400),
);
