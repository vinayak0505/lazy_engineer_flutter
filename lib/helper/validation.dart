class Validation {
  static String? email(String? value) {
    if (value?.isEmpty ?? true) return "Please enter a valid email";
    return null;
  }

  static String? password(String? value) {
    if (value?.isEmpty ?? true) return "Please enter a valid password";
    return null;
  }
}
