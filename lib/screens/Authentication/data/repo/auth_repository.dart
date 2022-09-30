import 'package:flutter/material.dart';
import 'package:lazy_engineer/model/signup_model/signup_model.dart';
import 'package:lazy_engineer/model/user_dto/user_dto.dart';
import '../../../../model/signin_model/signin_model.dart';
import '../../../../network/dio_client.dart';
import '../datasource/auth_local_datasource.dart';

class AuthRepository {
  final DioClient _apiProvider = DioClient();
  final AuthLocalDataSource _localDataSource = AuthLocalDataSource();

  /// return [Token] in String format
  String? getToken() {
    return _localDataSource.getToken();
  }

  /// login and return [Token] from internet
  /// parameter [email, password]
  Future<String?> signUp(SignUpModel user) async {
    try {
      print('===repository before');
      UserDto? userDetail = await _apiProvider.signUp(user);
      print('===repository $userDetail');
      if (userDetail != null) {
        _localDataSource.setUser(userDetail);
        debugPrint('====signUp: ${userDetail.data.token}');
        return userDetail.data.token;
      }
      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  /// signIn and return [Token] from internet
  /// parameter [name, email, password]
  Future<String?> signIn(SignInModel user) async {
    try {
      SignInModel userInput = user;
      String? token = await _apiProvider.signIn(userInput);
      debugPrint('====signIn: $token');
      return token;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future logout() async {
    try {
      String? token = getToken();
      if (token != null) {
        await _apiProvider.signOut(token);
        _localDataSource.clearUser();
        debugPrint('====signOut');
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
