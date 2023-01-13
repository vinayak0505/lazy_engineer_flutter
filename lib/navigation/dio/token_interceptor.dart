import 'package:dio/dio.dart';
import 'package:lazy_engineer/features/auth/data/data_source/local/auth_local_data_source.dart';

class TokenInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    super.onRequest(options, handler);

    final hasTokenHeader =
        options.headers.containsKey(HeaderKeys.tokenHeaderKey);

    if (hasTokenHeader &&
        options.headers[HeaderKeys.tokenHeaderKey] ==
            HeaderValues.autoAuthHeaderValue) {
      final String? token = await AuthLocalDataSource().getToken();

      options.headers[HeaderKeys.tokenHeaderKey] = token;
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
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmdWxsTmFtZSI6IlZpbmF5YWsgQWdhcndhbCIsImVtYWlsIjoidmluYXlha2FnZ2Fyd2FsMTBAZ21haWwuY29tIiwicGFzc3dvcmQiOiIkMmIkMTAkZEtxbS9odjRPYjd0VUtLWFZPN3RvT3IveVpmVXk2UDdreklyVGxKVC95OWxxT0U0SGQ2RFciLCJpYXQiOjE2NzM2MDQ1MDYsImV4cCI6MTY3Mzc3NzMwNn0.Pqhz_lg07eevW3Oo9hlR_xqe_QAetASXT-JL2_3uR-M';
}
