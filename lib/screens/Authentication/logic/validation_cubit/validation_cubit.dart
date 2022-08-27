import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/screens/Authentication/logic/validation_cubit/validation_state.dart';

class ValidationCubit extends Cubit<ValidationState> {
  ValidationCubit() : super(ValidationState());

  void addValidators(List<String> keys) {
    Map<String, bool> map = Map<String, bool>();
    for (String key in keys) {
      map[key] = false;
    }
    return emit(ValidationState(validators: map));
  }

  void checkValidators(String key, String value) {
    state.validators.update(key, (_) => value.length > 3);
    return emit(ValidationState(validators: state.validators));
  }

  List<String> isValidated() {
    bool allValid = true;
    List<String> toValidate = [];
    state.validators.forEach((k, v) {
      allValid && v;
      if (!v) toValidate.add(k);
    });
    emit(ValidationState(isValidated: allValid));
    return toValidate;
  }
}
