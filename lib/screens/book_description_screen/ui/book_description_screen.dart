import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/components/cached_image.dart';

import '../../../assets/icons.dart';
import '../../../assets/images.dart';
import '../../components/custom_image.dart';

class BookDescriptionScreen extends StatelessWidget {
  const BookDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const CustomIcon(
            AppIcons.backArrow,
            margin: EdgeInsets.only(left: 16),
          ),
        ),
      ),
      body: Column(
        children: [
          BookDetails(),
        ],
      ),
    );
  }
}

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const CachedImage(
            image: AppImages.practicleFileImage,
            height: 150,
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("By Vinayak agarwal,Dr .harman jaggi", style: theme.textTheme.overline),
                Text("Computer Graphics And Multimedia", style: theme.textTheme.headline5),
                Text("for Computer Graphics", style: theme.textTheme.titleLarge),
                Row(
                  children: [
                    
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
