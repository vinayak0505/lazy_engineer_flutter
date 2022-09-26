import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:url_strategy/url_strategy.dart';
import 'my_app.dart';

void main() async {
  ///remove the leading hash (#) from the URL of your Flutter web app,
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBlocOverrides.runZoned(() => runApp(const MyApp()),
      storage: await HydratedStorage.build(
          storageDirectory: await getApplicationDocumentsDirectory()));
}
