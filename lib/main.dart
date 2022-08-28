import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'my_app.dart';

void main() {
  ///remove the leading hash (#) from the URL of your Flutter web app,
  setPathUrlStrategy();
  runApp(const MyApp());
}
