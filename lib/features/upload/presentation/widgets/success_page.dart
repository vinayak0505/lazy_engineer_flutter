import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: ListView(
        children: [
          const CustomImage(image: AppImages.uploadedImage),
          Text(
            'File is Uploaded',
            style: theme.textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
