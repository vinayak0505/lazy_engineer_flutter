import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/components/custom_image.dart';
import 'package:lazy_engineer/screens/components/custom_card.dart';

import '../home_screen/modal/categories_model.dart';

class GridCard extends StatelessWidget {
  const GridCard({Key? key, required this.data}) : super(key: key);
  final CategoriesModel data;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      radius: 8,
      padding: const EdgeInsets.only(bottom: 8),
      margin: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImage(
              borderRadius: 8,
              innerBorderRadius: 8,
              height: 100,
              svgImage: data.image,
              onlyTop: true,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(data.subtitle, style: Theme.of(context).textTheme.subtitle1),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(data.description,
                  style: Theme.of(context).textTheme.bodySmall),
            ),
          ]),
    );
  }
}
