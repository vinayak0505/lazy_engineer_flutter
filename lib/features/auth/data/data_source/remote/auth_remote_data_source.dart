import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import '../../models/sign_in_model/sign_in_model.dart';
import '../../models/sign_up_model/sign_up_model.dart';
import '../../models/user_dto/user_dto.dart';
import 'auth_client.dart';

class AuthRemoteDataSource {
  final AuthClient _client;

  AuthRemoteDataSource._(this._client);

  factory AuthRemoteDataSource() {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger(responseBody: true));
    dio.options.headers = {};
    AuthClient client = AuthClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return AuthRemoteDataSource._(client);
  }

  Future<UserDto> signIn(SignInModel user) async {
    BaseResponse<UserDto> response = await _client.signIn(user);
    return response.data;
  }

  Future<UserDto> signUp(SignUpModel user) async {
    BaseResponse<UserDto> response = await _client.signUp(user);
    return response.data;
  }

  // Deletes a user having the provided `id`.
  // The access-token has been passed using [AuthorizationInterceptor].
  Future<void> deleteUser(int id) async {
    // await _client.delete(id);
  }
}