import 'package:flutter/material.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen(this.error, {super.key});
  final dynamic error;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Text(
        error.toString(),
        style: theme.textTheme.bodyLarge?.copyWith(
          color: theme.errorColor,
        ),
      ),
    );
  }
}
