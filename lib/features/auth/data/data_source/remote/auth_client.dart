import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import '../../models/sign_in_model/sign_in_model.dart';
import '../../models/sign_up_model/sign_up_model.dart';
import '../../models/user_dto/user_dto.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST(AppConfig.signUp)
  Future<BaseResponse<UserDto>> signUp(@Body() SignUpModel body);
  
  @POST(AppConfig.signIn)
  Future<BaseResponse<UserDto>> signIn(@Body() SignInModel body);
}
