import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart' as string;
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/auth/data/models/sign_up_model/sign_up_model.dart';
import 'package:lazy_engineer/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:lazy_engineer/features/auth/presentation/widgets/widgets.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class RegisterScreen extends StatelessWidget with InputValidationMixin {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();
    final ThemeData theme = Theme.of(context);
    final passwordObsecureView = ValueNotifier(true);
    final cPasswordObsecureView = ValueNotifier(true);
    return SingleChildScrollView(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 18),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  string.registerAccount,
                  style: theme.textTheme.headline5,
                ),
              ),
              const SizedBox(height: 28),
              CustomTextField(
                controller: fullNameController,
                iconColor: Colors.blueGrey,
                hintText: string.fullName,
                prefixIcon: AppIcons.userIcon,
                keyboardType: TextInputType.name,
                validator: usernameValidation,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: emailController,
                iconColor: Colors.blueGrey,
                prefixIcon: AppIcons.emailIcon,
                keyboardType: TextInputType.emailAddress,
                validator: emailValidation,
              ),
              const SizedBox(height: 16),
              ValueListenableBuilder(
                valueListenable: passwordObsecureView,
                builder: (context, _, __) {
                  return CustomTextField(
                    controller: passwordController,
                    iconColor: Colors.blueGrey,
                    hintText: string.password,
                    prefixIcon: AppIcons.passwordIcon,
                    suffixIconSize: 22,
                    suffixIcon: passwordObsecureView.value
                        ? AppIcons.hidePasswordIcon
                        : AppIcons.showPasswordIcon,
                    suffixOnPress: () => passwordObsecureView.value =
                        !passwordObsecureView.value,
                    obscureText: passwordObsecureView.value,
                    keyboardType: TextInputType.visiblePassword,
                    validator: passwordValidation,
                  );
                },
              ),
              const SizedBox(height: 16),
              ValueListenableBuilder(
                valueListenable: cPasswordObsecureView,
                builder: (context, _, __) {
                  return CustomTextField(
                    controller: confirmPasswordController,
                    iconColor: Colors.blueGrey,
                    hintText: string.confirmPassword,
                    prefixIcon: AppIcons.passwordIcon,
                    suffixIconSize: 22,
                    suffixIcon: cPasswordObsecureView.value
                        ? AppIcons.hidePasswordIcon
                        : AppIcons.showPasswordIcon,
                    suffixOnPress: () => cPasswordObsecureView.value =
                        !cPasswordObsecureView.value,
                    obscureText: cPasswordObsecureView.value,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) => confirmPasswordValidation(
                      value,
                      passwordController.text,
                    ),
                  );
                },
              ),
              const SizedBox(height: 18),
              CustomButton(
                text: string.register,
                onPressed: () {
                  if (formGlobalKey.currentState!.validate()) {
                    final SignUpModel user = SignUpModel(
                      fullName: fullNameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                    );
                    context.read<AuthCubit>().signUp(user);
                    context.go(RouteGenerator.initialRoute);
                  }
                },
              ),
              const SizedBox(height: 16),
              const HorizontalOrLine(),
              const SizedBox(height: 12),
              const GoogleFacebook(),
              const SizedBox(height: 20),
              const SwitchAccount(),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
