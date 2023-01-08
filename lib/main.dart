import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lazy_engineer/my_app.dart';
// ignore: depend_on_referenced_packages
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('notes');
  await Hive.openBox('papers');
  await Hive.openBox('books');
  await Hive.openBox('files');
  await Hive.openBox('jobs');

  ///remove the leading hash (#) from the URL of your Flutter web app,
  setPathUrlStrategy();
  runApp(const MyApp());
}
