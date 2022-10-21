import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  // final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // final _shellNavigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? push(
    String routeName, {
    Map<String, String>? queryParams,
  }) {
    if (queryParams != null) {
      routeName = Uri(
        path: routeName,
        queryParameters: queryParams,
      ).toString();
    }
    return navigatorKey.currentState?.pushNamed(routeName);
  }

  void pop() {
    navigatorKey.currentState!.pop();
  }
}
