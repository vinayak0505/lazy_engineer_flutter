import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/home_page.dart';

class PageRoutes {
  static const String homePage = "home_page";

  static Map<String, WidgetBuilder> get routes {
    return {
      homePage: (context) => const HomePage(),
    };
  }
}
