class HeaderKeys {
  static const String tokenHeaderKey = 'token';
  static const String noTokenHeaderKey = 'noToken';
}

class HeaderValues {
  static String? userToken;
  HeaderValues(String? token) {
    userToken = token;
  }
}
