import 'package:flutter/material.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';

class CompanyTag extends StatelessWidget {
  const CompanyTag({
    super.key,
    this.icon,
    required this.companyName,
    required this.description,
    this.follow = false,
  });
  final String? icon;
  final String companyName;
  final String description;
  final bool follow;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      children: [
        const SizedBox(width: 8),
        CustomImage(
          networkImage: icon,
          height: 70,
          width: 70,
          radius: 35,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              companyName,
              style: theme.textTheme.bodyText1?.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 6),
            Text(
              description,
              style: theme.textTheme.bodyText2
                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ],
        ),
        const Spacer(),
        if (follow)
          Text(
            '+ Follow',
            style: theme.textTheme.titleMedium
                ?.copyWith(color: AppThemes.subTitleColor),
          )
        else
          const SizedBox(),
        const SizedBox(width: 16),
      ],
    );
  }
}
