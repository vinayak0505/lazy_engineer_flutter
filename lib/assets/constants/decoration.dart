import 'package:flutter/material.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';

/// Text Field Style
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppThemes.lightDarkColor),
    borderRadius: BorderRadius.all(Radius.circular(kRoundedRectangleRadius)),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(kRoundedRectangleRadius)),
  ),
  filled: true,
);

const kRoundedRectangleRadius = 8.0;
