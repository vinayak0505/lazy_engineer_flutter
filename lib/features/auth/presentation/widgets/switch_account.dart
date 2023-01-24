import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart' as string;
import 'package:lazy_engineer/features/auth/presentation/auth_cubit/auth_cubit.dart';

class SwitchAccount extends StatelessWidget {
  const SwitchAccount({this.toRegister = false, super.key});
  final bool toRegister;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Align(
      child: RichText(
        text: TextSpan(
          style: theme.textTheme.bodyMedium,
          children: <TextSpan>[
            TextSpan(
                text: toRegister
                    ? string.dontHaveAccount
                    : string.alreadyHaveAccount,),
            TextSpan(
              text: toRegister ? string.createOne : string.goToLogin,
              style: const TextStyle(fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.read<AuthCubit>().pageSetter();
                },
            ),
          ],
        ),
      ),
    );
  }
}
