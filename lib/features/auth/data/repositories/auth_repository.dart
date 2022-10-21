import 'package:flutter/material.dart';
import '../data_source/local/auth_local_data_source.dart';
import '../data_source/remote/auth_remote_data_source.dart';
import '../models/sign_in_model/sign_in_model.dart';
import '../models/sign_up_model/sign_up_model.dart';
import '../models/user_dto/user_dto.dart';

class AuthRepository {
  final AuthRemoteDataSource _remoteDataSource = AuthRemoteDataSource();
  final AuthLocalDataSource _localDataSource = AuthLocalDataSource();

  /// return [Token] in String format
  String? getToken() {
    return _localDataSource.getToken();
  }

  /// login and return [Token] from internet
  /// parameter [email, password]
  Future<String?> signUp(SignUpModel user) async {
    try {
      UserDto? userDetail = await _remoteDataSource.signUp(user);
      _localDataSource.setUser(userDetail);
      return userDetail.token;
    } catch (e) {
      debugPrint('$e REPOSITORY');
      return null;
    }
  }

  /// signIn and return [Token] from internet
  /// parameter [email, password]
  Future<String?> signIn(SignInModel user) async {
    try {
      UserDto? userDetail = await _remoteDataSource.signIn(user);
      _localDataSource.setUser(userDetail);
      return userDetail.token;
    } catch (e) {
      debugPrint('$e REPOSITORY');
      return null;
    }
  }

  Future signOut() async {
    String? token = getToken();
    print('=========$token');
    _localDataSource.clearUser();
  }
}
