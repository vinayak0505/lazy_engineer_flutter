import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:url_strategy/url_strategy.dart';
import 'my_app.dart';

void main() async {
  ///remove the leading hash (#) from the URL of your Flutter web app,
  setPathUrlStrategy();
  runApp(const MyApp());
}
