import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/screens/components/cached_image.dart';
import '../../assets/constants/decoration.dart';
import 'custom_image.dart';

import '../home_screen/data/modal/categories_model.dart';

class GridCard extends StatelessWidget {
  const GridCard({Key? key, required this.data}) : super(key: key);
  final CategoriesModel data;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: kRoundedContainer,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedImage(
              image: data.image,
              height: 120,
              radius: kRoundedRectangleRadius,
              onlyTop: true,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(data.subtitle, style: theme.textTheme.titleLarge),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
              child: Text(data.description, style: theme.textTheme.bodyMedium),
            ),
          ]),
    );
  }
}
