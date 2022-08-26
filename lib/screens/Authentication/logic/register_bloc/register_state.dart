import '../form_submission_status.dart';

class RegisterState {
  final String fullName;
  final String email;
  final String password;
  final String confirmPassword;
  final bool fullNameValidation;
  final bool emailValidation;
  final bool passwordValidation;
  final bool confirmPasswordValidation;
  final FormSubmissionStatus? formStatus;

  RegisterState(
    {
    this.fullName = '',
    this.email = '',
    this.password = '',
    this.confirmPassword = '',
    this.fullNameValidation = false,
    this.emailValidation = false,
    this.passwordValidation = false,
    this.confirmPasswordValidation = false,
    this.formStatus
  });

  RegisterState copyWith({
    String? fullName,
    String? email,
    String? password,
    String? confirmPassword,
    bool? fullNameValidation,
    bool? emailValidation,
    bool? passwordValidation,
    bool? confirmPasswordValidation,
    FormSubmissionStatus? formStatus,
  }) {
    return RegisterState(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      fullNameValidation: fullNameValidation ?? this.fullNameValidation,
      emailValidation: emailValidation ?? this.emailValidation,
      passwordValidation: passwordValidation ?? this.passwordValidation,
      confirmPasswordValidation: confirmPasswordValidation ?? this.confirmPasswordValidation,
      formStatus: formStatus ?? InitialFormStatus(),
    );
  }
}
