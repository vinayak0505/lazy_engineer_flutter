import 'package:flutter/material.dart';


class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: child,
    );
  }
}
