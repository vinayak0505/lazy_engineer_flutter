mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length == 6;

  String? emailValidation(String? value) {
    RegExp emailRegExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value?.isEmpty ?? true) return 'Enter Email';
    return (emailRegExp.hasMatch(value!) ? null : 'Enter Valid Email');
  }

  String? passwordValidation(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Enter Password';
    } else if (value!.length < 6) {
      return 'Enter Valid Password';
    }
    return null;
  }

  String? confirmPasswordValidation(String? value, String? password) {
    if (value?.isEmpty ?? true) {
      return 'Enter Confirm Password';
    } else if (value != password) {
      return 'Enter Valid Confirm Password';
    }
    return null;
  }

  String? usernameValidation(String? value) {
    RegExp nameRegExp = RegExp('[a-zA-Z]');
    if (value?.isEmpty ?? true) return 'Enter Username';
    return (nameRegExp.hasMatch(value!) ? null : 'Enter Valid Username');
  }

  String? nullCheckTextValidation(String? value, String message) {
    if (value?.isEmpty ?? true) return 'Enter $message';
    return null;
  }

  String? nullCheckNumValidation(String? value, String message) {
    RegExp numRegExp = RegExp('[0-9]');
    if (value?.isEmpty ?? true) return 'Enter $message';
    return (numRegExp.hasMatch(value!) ? null : 'Enter Valid $message');
  }

  String? emptyListCheckValidation(List<String>? list, String message) {
    print('validation $list');
    if (list?.isEmpty ?? true) return 'Enter $message';
    return null;
  }
}
