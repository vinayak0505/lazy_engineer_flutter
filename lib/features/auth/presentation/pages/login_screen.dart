import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/auth/data/models/sign_in_model/sign_in_model.dart';
import 'package:lazy_engineer/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:lazy_engineer/features/auth/presentation/widgets/widgets.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class LoginScreen extends StatelessWidget with InputValidationMixin {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final ThemeData theme = Theme.of(context);

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
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8.0)],
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 8),
          child: Form(
            key: formGlobalKey,
            child: Column(
              children: [
                const SizedBox(height: 18),
                Text(loginAccount, style: theme.textTheme.headline5),
                const SizedBox(height: 28),
                CustomTextField(
                  controller: emailController,
                  hintText: email,
                  prefixIcon: AppIcons.emailIcon,
                  keyboardType: TextInputType.emailAddress,
                  validator: emailValidation,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: passwordController,
                  hintText: password,
                  prefixIcon: AppIcons.passwordIcon,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  validator: passwordValidation,
                ),
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    forgetPassword,
                    style: theme.textTheme.bodySmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                CustomButton(
                  text: login,
                  isBig: true,
                  onPressed: () {
                    if (formGlobalKey.currentState!.validate()) {
                      final SignInModel user = SignInModel(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      context.read<AuthCubit>().signIn(user);
                      context.go(RouteGenerator.initialRoute);
                    }
                  },
                ),
                const SizedBox(height: 16),
                const HorizontalOrLine(),
                const SizedBox(height: 12),
                const GoogleFacebook(),
                const SizedBox(height: 20),
                const SwitchAccount(toRegister: true),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
