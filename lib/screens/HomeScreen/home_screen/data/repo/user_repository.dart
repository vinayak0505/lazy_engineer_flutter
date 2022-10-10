import 'package:flutter/foundation.dart';

import '../../../../../features/auth/data/models/user/user_model.dart';


class UserRepository {
  UserRepository() {
    getUser();
  }
  int id = 21;
  Future<UserModel?> getUser() async {
    try {
      UserModel user = UserModel.dummy();
      return user;
      // return _apiProvider.getUser(id: id);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
