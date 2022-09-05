import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/screens/components/custom_image.dart';
import 'package:lazy_engineer/screens/components/custom_button.dart';

import '../../../../assets/icons.dart';
import '../../../../assets/images.dart';
import '../../../components/custom_icon.dart';

class BookDescriptionScreen extends StatelessWidget {
  const BookDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const BookDetails(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('About', style: theme.textTheme.headlineSmall),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
                'THE BOOK THAT INSPIRED THE AWARD-WINNING MOVIE Nominated for 12 OSCARS including BEST PICTURE, BEST DIRECTOR and BEST ACTOR Winner of 5 BAFTAS including Best Actor, Best Director and Best Film Winner of the 2016 Golden Globes for Best Motion Picture - Drama, Best Actor - Drama, and Best Director The novel that inspired the epic new movie starring Leonardo DiCaprio and Tom Hardy. ',
                style: theme.textTheme.bodyText2),
          ),
          const SizedBox(height: 32),
          const FiveStarRating(),
          const SizedBox(height: 8),
          Center(
              child: Text('Rate this book', style: theme.textTheme.bodyText2)),
          const SizedBox(height: 32),
          const NameTagTile(name: 'Harman Jaggi', value: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Some days a motivational quote can provide a quick pick-me-up for employees and even management. They can be a breath of fresh air when it comes to a drab afternoon.',
              style: theme.textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Similar books', style: theme.textTheme.headlineSmall),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 150,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: bookImageList.length,
                itemBuilder: (context, index) {
                  return CustomImage(
                    image: bookImageList[index],
                    radius: kRoundedRectangleRadius,
                    height: 150,
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(width: 8)),
          ),
          const SizedBox(height: 16)
        ]),
      ),
    );
  }
}

class NameTagTile extends StatelessWidget {
  const NameTagTile({Key? key, required this.name, required this.value})
      : super(key: key);
  final String name;
  final int value;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Row(
        children: [
          const CustomImage(
              image: AppImages.anonymousProfile, height: 50, radius: 25),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: theme.textTheme.titleLarge),
              const SizedBox(height: 2),
              FiveStarRating(isBig: false, value: value),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Text('SEE ALL', style: theme.textTheme.bodyMedium),
          )
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
    double rating = 4.5;
    int pages = 200;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const CustomImage(
          image: AppImages.bookCoverImage,
          radius: kRoundedRectangleRadius,
          height: 180,
        ),
        const SizedBox(width: 8),
        Flexible(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 12),
            Text('By Vinayak agarwal,Dr .harman jaggi',
                style: theme.textTheme.overline?.copyWith(fontSize: 12)),
            Text('Computer Graphics And Multimedia',
                style: theme.textTheme.headline5),
            Text('for Computer Graphics', style: theme.textTheme.titleLarge),
            const SizedBox(height: 16),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(children: [
                const CustomIcon(AppIcons.starIcon),
                Text('$rating Rating', style: theme.textTheme.bodyText1)
              ]),
              Column(children: [
                const CustomIcon(AppIcons.bookIcon),
                Text('E-Book', style: theme.textTheme.bodyText1)
              ]),
              Column(children: [
                const CustomIcon(AppIcons.pageIcon),
                Text('$pages pages', style: theme.textTheme.bodyText1)
              ])
            ]),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                text: 'Download',
                onPressed: () {},
                width: 120,
              ),
            ),
          ]),
        )
      ]),
    );
  }
}

class FiveStarRating extends StatelessWidget {
  const FiveStarRating({Key? key, this.value = 0, this.isBig = true})
      : super(key: key);
  final int value;
  final bool isBig;
  @override
  Widget build(BuildContext context) {
    double? height = isBig ? 26 : 16;
    double? gap = isBig ? 4 : 2;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return CustomIcon(
            index < value
                ? AppIcons.yellowFilledIcon
                : AppIcons.yellowEmptyIcon,
            padding: EdgeInsets.symmetric(horizontal: gap),
            height: height);
      }),
    );
  }
}
