import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazy_engineer/assets/constants/strings.dart' as string;
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:lazy_engineer/features/auth/presentation/pages/login_screen.dart';
import 'package:lazy_engineer/features/auth/presentation/pages/register_screen.dart';
import 'package:lazy_engineer/features/auth/presentation/widgets/widgets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: context.read<AuthCubit>().controller,
        children: [
          Stack(children: const [
            AuthBackground(),
            LoginScreen(),
          ],),
          Stack(alignment: AlignmentDirectional.bottomCenter, children: const [
            AuthBackground(),
            RegisterScreen(),
          ],),
        ],
      ),
    );
  }

  Widget nameWithIcon(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 16, 0),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        SvgPicture.asset(AppIcons.lazyEngineerIcon),
        const SizedBox(width: 8),
        Text(
          string.lazyEngineer,
          style: theme.textTheme.headline5?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],),
    );
  }
}
