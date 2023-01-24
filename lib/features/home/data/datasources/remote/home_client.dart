import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/model/user.dart';
import 'package:retrofit/http.dart';

part 'home_client.g.dart';

@RestApi()
abstract class HomeClient {
  factory HomeClient(Dio dio, {String baseUrl}) = _HomeClient;

  @GET(AppConfig.user)
  Future<BaseResponse<List<User>>> getUser();
}
