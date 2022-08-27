import 'package:flutter/material.dart';

import '../../../../model/user.dart';
import '../../../../network/dio_client.dart';

class AuthRepository {
  final DioClient _apiProvider = DioClient();

  /// return [Token] in String format
  Future<String?> getToken() async {
    try {
      // final session = await Amplify.Auth.fetchAuthSession();
      // if (session.isSignedIn) {
      //   return await fetchUserIdFromAttributes();
      // } else {
      //   return null;
      // }
      //
      throw ErrorDescription('lol');
      await Future.delayed(const Duration(seconds: 3));
      User user = User.dummy();
      return user.userId;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  /// login and return [Token] from internet
  /// parameter [email, password]
  Future<String> logIn(String email, String password) async {
    await Future.delayed(const Duration(seconds: 3));
    return "token";
  }

  /// signIn and return [Token] from internet
  /// parameter [name, email, password]
  Future<String?> signIn(String fullName, String email, String password) async {
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
