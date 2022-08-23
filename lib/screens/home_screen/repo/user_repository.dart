import 'package:flutter/foundation.dart';
import '../../../model/user.dart';

class UserRepository {
  Future<User?> getUser() async {
    try {
      User user = User.dummy();
      return user;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
