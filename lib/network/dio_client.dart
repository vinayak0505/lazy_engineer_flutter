import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:lazy_engineer/model/user_dto/user_dto.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../model/signin_model/signin_model.dart';
import '../model/signup_model/signup_model.dart';
import 'dio_exception.dart';

const apiBaseUrl = 'https://lazy-engineer.herokuapp.com';

class DioClient {
  late final Dio _dio;
  DioClient() {
    _dio = Dio(BaseOptions(baseUrl: apiBaseUrl));
    // _dio.interceptors.add(AuthorizationInterceptor());
    _dio.interceptors.add(PrettyDioLogger());
  }

  Future<UserDto?> signUp(SignUpModel user) async {
    try {
      final response = await _dio.post('/auth/signUp', data: user.toJson());
      UserDto userResponse = UserDto.fromJson(response.data);
      return userResponse;
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<String?> signIn(SignInModel user) async {
    try {
      final response = await _dio.post('/auth/signIn', data: user.toJson());
      UserDto userResponse = UserDto.fromJson(response.data);
      return userResponse.data.token;
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<void> signOut(String token) async {
    try {
      final response = await _dio.post('/auth/signOut', data: '');
      return response.data.json['token'];
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  // Deletes a user having the provided `id`.
  // The access-token has been passed using [AuthorizationInterceptor].
  Future<void> deleteUser(int id) async {
    try {
      await _dio.delete('/users/$id');
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      debugPrint(e.toString());
      throw e.toString();
    }
  }
}
