mixin InputValidationMixin {
  String? nullCheckValidation(String? value, String message) {
    if (value?.isEmpty ?? true) {
      return 'Enter $message';
    }
    return null;
  }
}
