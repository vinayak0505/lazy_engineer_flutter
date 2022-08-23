import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppTheme {
  lightTheme,
  darkTheme,
}

class AppThemes {
  //light theme
  static const Color whiteColor = Colors.white;
  static const Color primaryColor1 = Color(0xff4fc3f7);
  static const Color primaryColor2 = Color(0xffFE7474);
  static const Color lightColor = Colors.grey;
  static const Color darkColor = Color(0xff434343);
  static const Color textColor = Color(0xff3C3A36);
  static const Color textColorDark = Color(0xff333333);
  static const Color successColor = Color(0xff14C89A);
  static const Color errorColor = Color(0xffE5233B);
  static const Color hintColor = Color(0xffA3A4A6);

  static final appThemeData = {
    AppTheme.lightTheme: ThemeData(
      scaffoldBackgroundColor: whiteColor,
      // primarySwatch: Colors.blue,
      backgroundColor: whiteColor,
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Colors.transparent,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
            fontSize: 18,
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        enableFeedback: true,
        selectedItemColor: primaryColor2,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: whiteColor,
        contentTextStyle: GoogleFonts.roboto(
          color: const Color(0xff314862),
          fontSize: 10,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            GoogleFonts.roboto(fontSize: 10),
          ),
        ),
      ),
      textTheme: GoogleFonts.robotoTextTheme(
        Typography.material2018(platform: defaultTargetPlatform).black.copyWith(
              headline4: const TextStyle(
                fontSize: 38,
                color: textColorDark,
                fontWeight: FontWeight.w500,
              ),
              // not considered
              // subtitle1: const TextStyle(
              //   fontSize: 18,
              //   fontWeight: FontWeight.w600,
              //   color: textColor,
              //   height: 1.2,
              // ),
              // headline5: const TextStyle(
              //   fontSize: 27,
              //   fontWeight: FontWeight.w600,
              //   color: textColor,
              // ),
              // overline: const TextStyle(letterSpacing: 0, color: hintColor),
              // bodyText2: const TextStyle(color: hintColor),
            ),
      ),
    ),
    AppTheme.darkTheme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primarySwatch: Colors.teal,
      backgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  };
}
/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyText1)
/// body2        14.0  regular  0.25  (bodyText2)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5 