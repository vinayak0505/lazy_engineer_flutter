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

BoxDecoration kRoundedBottomContainer = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: AppThemes.lightDarkColor),
  borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
);

