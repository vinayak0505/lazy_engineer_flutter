import 'package:lazy_engineer/screens/Authentication/logic/form_submission_status.dart';

class LoginState {
  final String email;
  final String password;
  final bool emailValidation;
  final bool passwordValidation;
  final FormSubmissionStatus? formStatus;

  LoginState({
    this.email = '',
    this.password = '',
    this.emailValidation = false,
    this.passwordValidation = false,
    this.formStatus,
  });

  LoginState copyWith({
    String? email,
    String? password,
    bool? emailValidation,
    bool? passwordValidation,
    FormSubmissionStatus? formStatus,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      emailValidation: emailValidation ?? this.emailValidation,
      passwordValidation: passwordValidation ?? this.passwordValidation,
      formStatus: formStatus ?? InitialFormStatus(),
    );
  }
}
