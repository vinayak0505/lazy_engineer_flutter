import 'package:flutter/material.dart';

import '../../../components/custom_icon.dart';

class CompanyTag extends StatelessWidget {
  const CompanyTag({
    Key? key,
    required this.icon,
    required this.companyName,
    required this.description,
    this.follow = false,
  }) : super(key: key);
  final String icon, companyName, description;
  final bool follow;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      children: [
        const SizedBox(width: 8),
        CustomIcon(icon, height: 54, width: 54),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(companyName, style: theme.textTheme.bodyText1),
            Text(
              description,
              style: theme.textTheme.bodyText2
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Spacer(),
        follow
            ? Text('+ Follow', style: theme.textTheme.titleMedium)
            : const SizedBox(),
        const SizedBox(width: 16),
      ],
    );
  }
}
