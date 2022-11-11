import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import '../../../../../model/user.dart';

part 'home_client.g.dart';

@RestApi()
abstract class HomeClient {
  factory HomeClient(Dio dio, {String baseUrl}) = _HomeClient;

  @GET(AppConfig.user)
  Future<BaseResponse<List<User>>> getUser();
}
