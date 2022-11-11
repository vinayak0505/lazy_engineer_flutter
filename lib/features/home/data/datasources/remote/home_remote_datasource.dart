import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../config/app_config.dart';
import '../../../../../core/models/base_response/base_response.dart';
import '../../../../../model/user.dart';
import 'home_client.dart';

class HomeRemoteDatasource {
  final HomeClient _client;

  HomeRemoteDatasource._(this._client);

  factory HomeRemoteDatasource() {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger(responseBody: true));
    dio.options.headers = {};
    HomeClient client = HomeClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return HomeRemoteDatasource._(client);
  }
  Future<BaseResponse<List<User>>> getHome() async {
    BaseResponse<List<User>> response = await _client.getUser();
    return response;
  }

}
