import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/model/signup_model/signup_model.dart';
import 'package:lazy_engineer/screens/components/custom_text_field.dart';
import '../../../assets/icons.dart';
import '../../components/custom_button.dart';
import '../logic/login_bloc/auth_cubit.dart';
import '../logic/validation/input_validation.dart';

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
        const Align(
          alignment: Alignment.bottomCenter,
          child: RegisterAccount(),
        ),
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

class RegisterAccount extends StatelessWidget with InputValidationMixin {
  const RegisterAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
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
        child: Form(
          key: formGlobalKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 18),
                Align(
                    alignment: Alignment.topCenter,
                    child: Text(registerAccount,
                        style: theme.textTheme.headline5)),
                const SizedBox(height: 28),
                CustomTextField(
                  controller: fullNameController,
                  hintText: fullName,
                  prefixIcon: AppIcons.userIcon,
                  keyboardType: TextInputType.name,
                  validator: usernameValidation,
                ),
                const SizedBox(height: 16),
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
                const SizedBox(height: 16),
                CustomTextField(
                  controller: confirmPasswordController,
                  hintText: confirmPassword,
                  prefixIcon: AppIcons.passwordIcon,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) => confirmPasswordValidation(
                    value,
                    passwordController.text,
                  ),
                ),
                const SizedBox(height: 18),
                CustomButton(
                  text: register,
                  onPressed: () {
                    debugPrint('===onpress');
                    if (formGlobalKey.currentState!.validate()) {
                      debugPrint('===getvalidated');
                      SignUpModel user = SignUpModel(
                          userName: fullName, email: email, password: password);
                          debugPrint('===before');
                      context.read<AuthCubit>().signUp(user);
                      debugPrint('===after');
                      // BlocListener<AuthCubit, AuthState>(
                      //   listener: (context, state) {
                      //     debugPrint('===before');
                      //     context.read<AuthCubit>().signUp(user);
                      //     debugPrint('===after');
                      //   },
                      // );
                    }
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
                          const TextSpan(text: alreadyHaveAccount),
                          TextSpan(
                              text: goToLogin,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pop(context);
                                }),
                        ]),
                  ),
                ),
                const SizedBox(height: 12),
              ]),
        ),
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
}
