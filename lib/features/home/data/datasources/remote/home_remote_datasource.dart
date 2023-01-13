import 'package:dio/dio.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/core/models/base_response/base_response.dart';
import 'package:lazy_engineer/features/home/data/datasources/remote/home_client.dart';
import 'package:lazy_engineer/model/user.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HomeRemoteDatasource {
  final HomeClient _client;

  factory HomeRemoteDatasource() {
    final Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.options.headers = {};
    final HomeClient client = HomeClient(dio, baseUrl: AppConfig.apiBaseUrl);
    return HomeRemoteDatasource._(client);
  }

  HomeRemoteDatasource._(this._client);
  Future<BaseResponse<List<User>>> getHome() async {
    final BaseResponse<List<User>> response = await _client.getUser();
    return response;
  }

}
