import 'package:flutter/material.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen(this.error, {Key? key}) : super(key: key);
  final dynamic error;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Text(
          error.toString(),
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.errorColor,
          ),
        ),
      ),
    );
  }
}
