import 'package:flutter/material.dart';
import 'package:lazy_engineer/features/auth/data/data_source/local/auth_local_data_source.dart';
import 'package:lazy_engineer/features/auth/data/data_source/remote/auth_remote_data_source.dart';
import 'package:lazy_engineer/features/auth/data/models/sign_in_model/sign_in_model.dart';
import 'package:lazy_engineer/features/auth/data/models/sign_up_model/sign_up_model.dart';
import 'package:lazy_engineer/features/auth/data/models/user_dto/user_dto.dart';
import 'package:lazy_engineer/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource _remoteDataSource = AuthRemoteDataSource();
  final AuthLocalDataSource _localDataSource = AuthLocalDataSource();

  /// return [Token] in String format
  Future<String?> getToken() async {
    return _localDataSource.getToken();
  }

  @override
  /// login and return [Token] from internet
  /// parameter [email, password]
  Future<String?> signUp(SignUpModel user) async {
    try {
      final UserDto userDetail = await _remoteDataSource.signUp(user);
      await _localDataSource.setUser(userDetail);
      return userDetail.token;
    } catch (e) {
      debugPrint('$e REPOSITORY');
      return null;
    }
  }

  @override
  /// signIn and return [Token] from internet
  /// parameter [email, password]
  Future<String?> signIn(SignInModel user) async {
    try {
      final UserDto userDetail = await _remoteDataSource.signIn(user);
      await _localDataSource.setUser(userDetail);
      return userDetail.token;
    } catch (e) {
      debugPrint('$e REPOSITORY');
      return null;
    }
  }

  @override
  Future signOut() async {
    _localDataSource.clearUser();
  }
}
