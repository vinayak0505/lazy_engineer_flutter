import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../assets/constants/strings.dart';
import '../../../assets/icons.dart';
import '../../../assets/images.dart';
import '../../../config/route/routes.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../logic/login_bloc/auth_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(children: const [
        AuthBackground(),
        LoginAccount(),
      ]),
    );
  }
}

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            SvgPicture.asset(AppIcons.lazyEngineerIcon),
            const SizedBox(width: 8),
            Text(lazyEngineer,
                style: theme.textTheme.headline5
                    ?.copyWith(fontWeight: FontWeight.w600))
          ]),
          const SizedBox(height: 50),
          Image.asset(AppImages.authBackgroundImage)
        ],
      ),
    );
  }
}

class LoginAccount extends StatelessWidget {
  const LoginAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    ThemeData theme = Theme.of(context);

    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              ),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8.0)]),
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 8),
          child: Column(
            children: [
              const SizedBox(height: 18),
              Text(loginAccount, style: theme.textTheme.headline5),
              const SizedBox(height: 28),
              CustomTextField(
                  controller: emailController,
                  hintText: email,
                  prefixIcon: SvgPicture.asset(AppIcons.emailIcon),
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(height: 16),
              CustomTextField(
                controller: passwordController,
                hintText: password,
                prefixIcon: SvgPicture.asset(AppIcons.passwordIcon),
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 4),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(forgetPassword,
                      style: theme.textTheme.bodySmall
                          ?.copyWith(fontWeight: FontWeight.bold))),
              const SizedBox(height: 18),
              CustomButton(
                text: login,
                isBig: true,
                onPressed: () {
                  context
                      .read<AuthCubit>()
                      .logIn(emailController.text, passwordController.text);
                },
              ),
              const SizedBox(height: 16),
              horizontalOrLine(theme),
              const SizedBox(height: 12),
              Row(children: [
                Expanded(
                  child: CustomButton.google(onPressed: () {}),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton.facebook(onPressed: () {}),
                ),
              ]),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    style: theme.textTheme.bodyMedium,
                    children: <TextSpan>[
                      const TextSpan(text: dontHaveAccount),
                      TextSpan(
                        text: createOne,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacementNamed(
                                context, PageRoutes.registerScreen);
                          },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget horizontalOrLine(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(indent: 20.0, endIndent: 10.0, thickness: 1),
        ),
        Text(or, style: theme.textTheme.bodyMedium),
        const Expanded(
          child: Divider(indent: 10.0, endIndent: 20.0, thickness: 1),
        ),
      ],
    );
  }
}
