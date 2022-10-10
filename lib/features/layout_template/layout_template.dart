import 'package:flutter/material.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
