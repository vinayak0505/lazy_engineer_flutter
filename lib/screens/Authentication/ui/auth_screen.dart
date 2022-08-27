import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/helper/validation.dart';
import 'package:lazy_engineer/screens/Authentication/data/repo/auth_repository.dart';
import 'package:lazy_engineer/screens/Authentication/logic/login_bloc/login_cubit.dart';
import 'package:lazy_engineer/screens/Authentication/logic/validation_cubit/validation_cubit.dart';
import 'package:lazy_engineer/screens/Authentication/ui/login_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
        create: (context) => AuthRepository(),
        child: BlocProvider(
          create: (context) => LoginCubit(),
          child: BlocProvider(
            create: (context) => ValidationCubit(),
            child: const LoginScreen(),
          ),
        ));
  }
}
