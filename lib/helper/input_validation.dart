mixin InputValidationMixin {
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
    if (list?.isEmpty ?? true) return 'Enter $message';
    return null;
  }
}
