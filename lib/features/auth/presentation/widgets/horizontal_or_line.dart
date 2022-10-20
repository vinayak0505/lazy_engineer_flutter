import 'package:flutter/material.dart';
import '../../../../assets/constants/strings.dart' as string;

class HorizontalOrLine extends StatelessWidget {
  const HorizontalOrLine({super.key});
  
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(indent: 20.0, endIndent: 10.0, thickness: 1),
        ),
        Text(string.or, style: theme.textTheme.bodyMedium),
        const Expanded(
          child: Divider(indent: 10.0, endIndent: 20.0, thickness: 1),
        ),
      ],
    );
  }
}