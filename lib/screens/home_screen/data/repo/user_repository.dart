import 'package:flutter/foundation.dart';

import '../../../../model/user.dart';
import '../../../../network/dio_client.dart';

class UserRepository {
  UserRepository() {
    getUser();
  }
  final DioClient _apiProvider = DioClient();
  int id = 21;
  Future<User?> getUser() async {
    try {
      User user = User.dummy();
      return user;
      return _apiProvider.getUser(id: id);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
