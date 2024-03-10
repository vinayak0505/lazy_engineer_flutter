import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/auth/data/data_source/remote/auth_client.dart';
import 'package:lazy_engineer/features/auth/data/models/sign_in_model/sign_in_model.dart';
import 'package:lazy_engineer/features/auth/data/models/sign_up_model/sign_up_model.dart';
import 'package:lazy_engineer/features/auth/data/models/user_dto/user_dto.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AuthRemoteDataSource {
  final AuthClient _client;

  factory AuthRemoteDataSource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.options.headers = {};
    final AuthClient client = AuthClient(
      dio,
      baseUrl: AppConfig.apiBaseUrl,
    );
    return AuthRemoteDataSource._(client);
  }

  AuthRemoteDataSource._(this._client);

  Future<UserDto> signIn(SignInModel user) async {
    final BaseResponse<UserDto> response = await _client.signIn(user);
    return response.data;
  }

  Future<UserDto> signUp(SignUpModel user) async {
    final BaseResponse<UserDto> response = await _client.signUp(user);
    return response.data;
  }

  // Deletes a user having the provided `id`.
  // The access-token has been passed using [AuthorizationInterceptor].
  Future<void> deleteUser(int id) async {
    // await _client.delete(id);
  }
}
