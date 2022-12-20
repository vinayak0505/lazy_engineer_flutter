import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import '../../../../assets/icons.dart';
import '../../../../assets/images.dart';
import '../../../components/custom_icon.dart';

class BookDescriptionScreen extends StatelessWidget {
  const BookDescriptionScreen(this.id, {Key? key}) : super(key: key);
  final String? id;

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomImage(
                          image: AppImages.bookCoverImage,
                          radius: kRoundedRectangleRadius,
                          height: 180,
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 12),
                                Text(
                                  'Computer Graphics and Multimedia',
                                  style: theme.textTheme.headline5,
                                ),
                                const SizedBox(height: 12),
                                Text('Computer Graphics',
                                    style: theme.textTheme.titleLarge),
                                const SizedBox(height: 16),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(children: [
                                        const CustomIcon(AppIcons.likeIcon,
                                            width: 18),
                                        Text(
                                          'Like',
                                          style: theme.textTheme.bodyText1,
                                        )
                                      ]),
                                      Column(children: [
                                        const CustomIcon(AppIcons.dislikeIcon,
                                            width: 18),
                                        Text(
                                          'Dislike',
                                          style: theme.textTheme.bodyText1,
                                        )
                                      ]),
                                      Column(children: [
                                        const CustomIcon(AppIcons.bookIcon),
                                        Text(
                                          'E-Book',
                                          style: theme.textTheme.bodyText1,
                                        )
                                      ]),
                                      Column(children: [
                                        const CustomIcon(AppIcons.pageIcon),
                                        Text(
                                          'pages',
                                          style: theme.textTheme.bodyText1,
                                        )
                                      ])
                                    ]),
                                const SizedBox(height: 16),
                                Align(
                                  alignment: Alignment.center,
                                  child: CustomButton(
                                    text: download,
                                    onPressed: () {},
                                    width: 120,
                                  ),
                                ),
                              ]),
                        )
                      ]),
                ),
                const SizedBox(height: 16),
                Text(
                  'About',
                  style: theme.textTheme.headline5,
                ),
                const SizedBox(height: 16),
                Text(
                  'THE BOOK THAT INSPIRED THE AWARD-WINNING MOVIE Nominated for 12 OSCARS including BEST PICTURE, BEST DIRECTOR and BEST ACTOR Winner of 5 BAFTAS including Best Actor, Best Director and Best Film Winner of the 2016 Golden Globes for Best Motion Picture - Drama, Best Actor - Drama, and Best Director The novel that inspired the epic new movie starring Leonardo DiCaprio and Tom Hardy.',
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 16),
                Row(children: [
                  Text('Writers', style: theme.textTheme.headlineSmall),
                  const SizedBox(width: 80),
                  Text('By Vinayak agarwal', style: theme.textTheme.bodyText2),
                ]),
                const SizedBox(height: 16),
                Row(children: [
                  Text('Semester', style: theme.textTheme.headlineSmall),
                  const SizedBox(width: 60),
                  Text('3rd Semester', style: theme.textTheme.bodyText2),
                ]),
                const SizedBox(height: 16),
                Row(children: [
                  Text('Book Edition', style: theme.textTheme.headlineSmall),
                  const SizedBox(width: 30),
                  Text('Second Edition', style: theme.textTheme.bodyText2),
                ]),
                const SizedBox(height: 16),
                Row(children: [
                  Text('Price', style: theme.textTheme.headlineSmall),
                  const SizedBox(width: 110),
                  Text('Rs. 500', style: theme.textTheme.bodyText2),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
