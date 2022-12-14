import 'package:shared_preferences/shared_preferences.dart';

import '../../models/user/user_model.dart';
import '../../models/user_dto/user_dto.dart';

class AuthLocalDataSource {
  SharedPreferences? prefs;
  AuthLocalDataSource._() {
    _initprefs();
  }

  static final AuthLocalDataSource _instance = AuthLocalDataSource._();

  factory AuthLocalDataSource() => _instance;

  static const String _tokenKey = 'token';
  static const String _userIdKey = 'user_id';
  static const String _userNameKey = 'user_name';
  static const String _emailKey = 'email';
  static const String _passwordKey = 'password';
  static const String _universityKey = 'university';

  Future setUser(UserDto user) async {
    _initprefs();
    await prefs!.setString(_tokenKey, user.token);
    await prefs!.setString(_userNameKey, user.userDetail.fullName);
    await prefs!.setString(_emailKey, user.userDetail.email);
    String? university = user.userDetail.univercity;
    if (university != null) {
      await prefs?.setString(_universityKey, university);
    }
  }

  Future<UserModel> getUser() async {
    _initprefs();
    UserModel user = UserModel(
      token: prefs!.getString(_tokenKey),
      userId: prefs!.getString(_userIdKey),
      userName: prefs!.getString(_userNameKey)!,
      email: prefs!.getString(_emailKey)!,
      password: prefs!.getString(_passwordKey)!,
      university: prefs!.getString(_universityKey),
    );
    return user;
  }

  String? getToken() {
    _initprefs();
    return prefs?.getString(_tokenKey);
  }

  String? getId() {
    _initprefs();
    return prefs?.getString(_userIdKey);
  }

  Future<void> clearUser() async {
    _initprefs();
    await prefs?.clear();
  }

  _initprefs() async {
    prefs = await SharedPreferences.getInstance();
  }
}
