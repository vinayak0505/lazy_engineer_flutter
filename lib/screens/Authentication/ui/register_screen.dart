import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/screens/Authentication/logic/form_submission_status.dart';
import 'package:lazy_engineer/screens/components/custom_text_field.dart';
import '../../../assets/icons.dart';
import '../../../config/route/routes.dart';
import '../../components/custom_button.dart';
import '../logic/register_bloc/register_cubit.dart';
import '../logic/register_bloc/register_state.dart';
import 'components/rounded_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(alignment: Alignment.center, children: [
        Align(alignment: Alignment.topRight, child: nameWithIcon(theme)),
        Positioned(
            top: 150, child: SvgPicture.asset(AppImages.authBackgroundImage)),
        Align(
          alignment: Alignment.bottomCenter,
          child: BlocProvider(
            create: (context) => RegisterCubit(),
            child: const RegisterAccount(),
          ),
        )
      ]),
    );
  }

  Widget nameWithIcon(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 16, 0),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        SvgPicture.asset(AppIcons.lazyEngineerIcon),
        const SizedBox(width: 8),
        Text(lazyEngineer,
            style: theme.textTheme.headline5
                ?.copyWith(fontWeight: FontWeight.w600))
      ]),
    );
  }
}

class RegisterAccount extends StatelessWidget {
  const RegisterAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 18),
              Align(
                  alignment: Alignment.topCenter,
                  child:
                      Text(registerAccount, style: theme.textTheme.headline5)),
              const SizedBox(height: 28),
              BlocBuilder<RegisterCubit, RegisterState>(
                  builder: (context, state) {
                return CustomTextField(
                  controller: fullNameController,
                  hintText: fullName,
                  // prefixIcon: AppIcons.userIcon,
                  keyboardType: TextInputType.name,
                  // validation: context
                  //     .read<RegisterCubit>()
                  //     .fullNameValidation(fullNameController.text),
                );
              }),
              const SizedBox(height: 16),
              BlocBuilder<RegisterCubit, RegisterState>(
                  builder: (context, state) {
                return CustomTextField(
                  controller: emailController,
                  hintText: email,
                  // icon: AppIcons.emailIcon,
                  keyboardType: TextInputType.emailAddress,
                  // validation: context
                  //     .read<RegisterCubit>()
                  //     .emailValidation(emailController.text),
                );
              }),
              const SizedBox(height: 16),
              BlocBuilder<RegisterCubit, RegisterState>(
                  builder: (context, state) {
                return CustomTextField(
                  controller: passwordController,
                  hintText: password,
                  // icon: AppIcons.passwordIcon,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  // validation: context
                  //     .read<RegisterCubit>()
                  //     .passwordValidation(passwordController.text),
                );
              }),
              const SizedBox(height: 16),
              BlocBuilder<RegisterCubit, RegisterState>(
                  builder: (context, state) {
                return CustomTextField(
                  controller: confirmPasswordController,
                  hintText: confirmPassword,
                  // icon: AppIcons.passwordIcon,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  // validation: context
                  //     .read<RegisterCubit>()
                  //     .passwordValidation(confirmPasswordController.text),
                );
              }),
              const SizedBox(height: 18),
              BlocBuilder<RegisterCubit, RegisterState>(
                  builder: (context, state) {
                return state.formStatus is FormSubmitting
                    ? const CircularProgressIndicator()
                    : CustomButton(
                        text: register,
                        onPressed: () {
                          // _showSnacBar(context, "");
                        },
                      );
              }),
              const SizedBox(height: 16),
              horizontalOrLine(theme),
              const SizedBox(height: 12),
              Row(children: [
                RoundedButton(
                    color: AppThemes.googlePlusColor,
                    icon: AppIcons.gPlusIcon,
                    onPressed: () {}),
                RoundedButton(
                    color: AppThemes.facebookColor,
                    icon: AppIcons.fIcon,
                    onPressed: () {}),
              ]),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      style: theme.textTheme.bodyMedium,
                      children: <TextSpan>[
                        const TextSpan(text: alreadyHaveAccount),
                        TextSpan(
                            text: goToLogin,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacementNamed(
                                    context, PageRoutes.loginScreen);
                              }),
                      ]),
                ),
              ),
              const SizedBox(height: 12),
            ]),
      ),
    );
  }

  Widget horizontalOrLine(ThemeData theme) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Expanded(
        child: Divider(indent: 20.0, endIndent: 10.0, thickness: 1),
      ),
      Text(or, style: theme.textTheme.bodyMedium),
      const Expanded(
        child: Divider(indent: 10.0, endIndent: 20.0, thickness: 1),
      ),
    ]);
  }

  // void _showSnacBar(BuildContext context, String message) {
  //   final SnackBar = SnackBar(content: Text(message));
  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
  // }
}
