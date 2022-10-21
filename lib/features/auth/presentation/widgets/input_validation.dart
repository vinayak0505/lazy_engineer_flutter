
import '../../../../assets/constants/strings.dart';

mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length == 6;
  String? emailValidation(String? value) {
    RegExp emailRegExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value?.isEmpty ?? true) return 'enterEmail';
    return (emailRegExp.hasMatch(value!) ? null : 'enterValidEmail');
  }

  String? passwordValidation(String? value) {
    if (value?.isEmpty ?? true) {
      return 'enterPassword';
    } else if (value!.length < 6) {
      return 'enterValidPassword';
    }
    return null;
  }

  String? confirmPasswordValidation(String? value, String? password) {
    if (value?.isEmpty ?? true) {
      return 'enterConfirmPassword';
    } else if (value != password) {
      return 'enterValidConfirmPassword';
    }
    return null;
  }

  String? usernameValidation(String? value) {
    RegExp nameRegExp = RegExp('[a-zA-Z]');
    if (value?.isEmpty ?? true) return 'enterUsername';
    return (nameRegExp.hasMatch(value!) ? null : 'enterValidUsername');
  }
}
