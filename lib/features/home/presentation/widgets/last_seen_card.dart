import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';

class LastSeenCard extends StatelessWidget {
  const LastSeenCard({
    super.key,
    this.image,
    required this.title,
    required this.category,
    required this.description,
    required this.date,
  });
  final String? image;
  final String? description;
  final String title;
  final String category;
  final String date;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      decoration: kRoundedContainer,
      width: 200,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            child: CustomImage(
              image: image,
              height: 120,
              radius: kRoundedRectangleRadius,
              onlyTop: true,
              boxFit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: theme.textTheme.titleLarge,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              category,
              style: theme.textTheme.subtitle1,
            ),
          ),
          if (description != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 16),
              child: Text(
                description!,
                style: theme.textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              date,
              style: theme.textTheme.overline,
            ),
          )
        ],
      ),
    );
  }
}
