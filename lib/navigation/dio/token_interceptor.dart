import 'package:dio/dio.dart';

import '../../features/auth/data/data_source/local/auth_local_data_source.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    super.onRequest(options, handler);

    final hasTokenHeader =
        options.headers.containsKey(HeaderKeys.tokenHeaderKey);

    final hasNoTokenHeader =
        options.headers.containsKey(HeaderKeys.noTokenHeaderKey);

    if (hasNoTokenHeader) {
      options.headers.remove(HeaderKeys.tokenHeaderKey);
      options.headers.remove(HeaderKeys.noTokenHeaderKey);
      return;
    }

    if (hasTokenHeader &&
        options.headers[HeaderKeys.tokenHeaderKey] ==
            HeaderValues.autoAuthHeaderValue) {
      String? token = await AuthLocalDataSource().getToken();

      options.headers[HeaderKeys.tokenHeaderKey] = token;
      print('===========token= $token');
      // Printer.print(token, title: "auth token:");
    }
  }
}

class HeaderKeys {
  static const String tokenHeaderKey = 'token';
  static const String noTokenHeaderKey = 'noToken';
}

class HeaderValues {
  static const String autoAuthHeaderValue = 'authAuthHeaderValue';
  static const tempToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InZpbmF5YWthZ2dhcndhbDEwQGdtYWlsLmNvbSIsImZ1bGxOYW1lIjoiVmluYXlhayBBZ2Fyd2FsIiwicGFzc3dvcmQiOiIkMmIkMTAkOGpEY08xMlhrRVE1YVc2VUJkVkI0LkdUNS9WUU4wQzBRTE0xM0tmNFVmSkp2NlJ2ZEFUbEciLCJpYXQiOjE2NzMxNTg5NDYsImV4cCI6MTY3MzMzMTc0Nn0.hTZGTXapAC0pJBYPbTJsxfFg2OcJQFa6J5KcXDzB1q8';
}
