import 'package:flutter/material.dart';

import '../../../../model/user.dart';
import '../../../../network/dio_client.dart';

class AuthRepository {
  final DioClient _apiProvider = DioClient();

  Future<String?> autoLogin() async {
    try {
      // final session = await Amplify.Auth.fetchAuthSession();
      // if (session.isSignedIn) {
      //   return await fetchUserIdFromAttributes();
      // } else {
      //   return null;
      // }
      User user = User.dummy();
      return user.userId;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<String?> login() async {
    try {
      debugPrint('attempting login');
      await Future.delayed(const Duration(seconds: 3));
      debugPrint('logged in');
      User user = User.dummy();
      return user.userId;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<String?> register({fullName, email, password}) async {
    try {
      User user = User.dummy();
      return user.userId;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future logout() async {
    try {} catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
