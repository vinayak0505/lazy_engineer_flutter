import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/config/theme/bloc/theme_bloc.dart';
import 'package:lazy_engineer/my_app.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => ThemeBloc(),
    )], 
    child: const MyApp()));
}
