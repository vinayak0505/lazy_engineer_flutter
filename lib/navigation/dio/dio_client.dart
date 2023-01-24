import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:lazy_engineer/model/user.dart';
import 'package:lazy_engineer/navigation/dio/authorization_inceptors.dart';
import 'package:lazy_engineer/navigation/dio/dio_exception.dart';

const apiBaseUrl = 'https://';

class DioClient {
  late final Dio _dio;
  DioClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: apiBaseUrl,
            connectTimeout: 5000,
            receiveTimeout: 3000,
          ),
        )..interceptors.add(AuthorizationInterceptor());

  Future<User?> getUser({required int id}) async {
    try {
      final response = await _dio.get('/users/$id');
      return User.fromJson(response.data as Map<String,dynamic>);
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      debugPrint(e.toString());
      throw e.toString();
    }
  }

  Future<User?> createUser({required User user}) async {
    try {
      final response = await _dio.post('/users', data: user.toJson());
      return User.fromJson(response.data as Map<String,dynamic>);
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  // Deletes a user having the provided `id`.
  // The access-token has been passed using [AuthorizationInterceptor].
  Future<void> deleteUser({required int id}) async {
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
