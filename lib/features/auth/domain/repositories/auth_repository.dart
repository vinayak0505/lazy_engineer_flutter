import 'package:lazy_engineer/features/auth/data/models/sign_in_model/sign_in_model.dart';
import 'package:lazy_engineer/features/auth/data/models/sign_up_model/sign_up_model.dart';

abstract class AuthRepository {
  Future<String?> signUp(SignUpModel user);
  Future<String?> signIn(SignInModel user);
  Future signOut();
}
