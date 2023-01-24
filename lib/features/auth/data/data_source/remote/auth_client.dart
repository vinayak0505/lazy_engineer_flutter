import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/auth/data/models/sign_in_model/sign_in_model.dart';
import 'package:lazy_engineer/features/auth/data/models/sign_up_model/sign_up_model.dart';
import 'package:lazy_engineer/features/auth/data/models/user_dto/user_dto.dart';
import 'package:retrofit/http.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST(AppConfig.signUp)
  Future<BaseResponse<UserDto>> signUp(@Body() SignUpModel body);
  
  @POST(AppConfig.signIn)
  Future<BaseResponse<UserDto>> signIn(@Body() SignInModel body);
}
