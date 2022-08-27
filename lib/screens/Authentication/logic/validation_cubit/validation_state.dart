class ValidationState {
  Map<String, bool> validators;
  bool isValidated;
  ValidationState({this.validators = const <String, bool>{}, this.isValidated = false});
}
