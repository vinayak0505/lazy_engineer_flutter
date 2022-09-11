import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/screens/HomeScreen/book_description_screen/data/bd_modal.dart';
import 'package:lazy_engineer/screens/components/custom_image.dart';
import 'package:lazy_engineer/screens/components/custom_button.dart';
import 'package:lazy_engineer/screens/components/failiure_screen.dart';
import 'package:lazy_engineer/screens/components/loading_screen.dart';
import '../../../../assets/icons.dart';
import '../../../../assets/images.dart';
import '../../../components/custom_icon.dart';
import '../data/repo/bd_repository.dart';
import '../logic/book_description_cubit.dart';

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
        child: BlocProvider(
          create: (context) => BookDescriptionCubit(BDRepository()),
          child: BlocBuilder<BookDescriptionCubit, BookDescriptionState>(
            builder: (context, state) {
              return state.when(
                  failure: (e) => FailiureScreen(e),
                  loading: () => const LoadingScreen(),
                  success:
                      (BDModal data, double starRating, List<bool> seeAll) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BookDetails(
                              writers: data.writer ?? [],
                              title: data.title ?? '',
                              subject: data.subject ?? '',
                              ratingValue: data.rating ?? 0,
                              physicalBookValue: data.physicalBook ?? false,
                              pagesValue: data.pages ?? 0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(about,
                                style: theme.textTheme.headlineSmall),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(data.about ?? '',
                                style: theme.textTheme.bodyText2),
                          ),
                          const SizedBox(height: 32),
                          const FiveStarRating(),
                          const SizedBox(height: 8),
                          Center(
                              child: Text(rateThisBook,
                                  style: theme.textTheme.bodyText2)),
                          const SizedBox(height: 32),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: data.reviews?.length ?? 1,
                            itemBuilder: (context, index) => ReviewListTile(
                              name: data.reviews?[index].user ?? '',
                              value: data.reviews?[index].rating ?? 0,
                              review:
                                  data.reviews?[index].reviewDescription ?? '',
                            ),
                          ),
                          const SizedBox(height: 32),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              similarBooks,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 150,
                            child: ListView.separated(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: data.similarBookImg?.length ?? 0,
                                itemBuilder: (context, index) {
                                  return CustomImage(
                                    image: data.similarBookImg?[index],
                                    radius: kRoundedRectangleRadius,
                                    height: 150,
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const SizedBox(width: 8)),
                          ),
                          const SizedBox(height: 16)
                        ]);
                  });
            },
          ),
        ),
      ),
    );
  }
}

class ReviewListTile extends StatelessWidget {
  const ReviewListTile(
      {Key? key, required this.name, required this.value, required this.review})
      : super(key: key);
  final String name;
  final double value;
  final String review;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Row(children: [
            const CustomImage(
                image: AppImages.anonymousProfile, height: 50, radius: 25),
            const SizedBox(width: 16),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(name, style: theme.textTheme.titleLarge),
              const SizedBox(height: 2),
              FiveStarRating(isBig: false, value: value),
            ]),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text(seeAll, style: theme.textTheme.bodyMedium),
            )
          ]),
          const SizedBox(height: 8),
          Text(
            review,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class BookDetails extends StatelessWidget {
  const BookDetails(
      {Key? key,
      required this.writers,
      required this.title,
      required this.subject,
      required this.ratingValue,
      required this.physicalBookValue,
      required this.pagesValue})
      : super(key: key);
  final List<String> writers;
  final String title;
  final String subject;
  final double ratingValue;
  final bool physicalBookValue;
  final int pagesValue;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
            Text(
              writers.toString(),
              style: theme.textTheme.overline?.copyWith(fontSize: 12),
            ),
            Text(
              title,
              style: theme.textTheme.headline5,
            ),
            Text(subject, style: theme.textTheme.titleLarge),
            const SizedBox(height: 16),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(children: [
                const CustomIcon(AppIcons.starIcon),
                Text(
                  '$ratingValue $rating',
                  style: theme.textTheme.bodyText1,
                )
              ]),
              Column(children: [
                const CustomIcon(AppIcons.bookIcon),
                Text(
                  physicalBookValue ? '$ebook/$physicalBook' : ebook,
                  style: theme.textTheme.bodyText1,
                )
              ]),
              Column(children: [
                const CustomIcon(AppIcons.pageIcon),
                Text(
                  '$pagesValue $pages',
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
    );
  }
}

class FiveStarRating extends StatelessWidget {
  const FiveStarRating({Key? key, this.value = 0, this.isBig = true})
      : super(key: key);
  final double value;
  final bool isBig;
  @override
  Widget build(BuildContext context) {
    double? height = isBig ? 26 : 16;
    double? gap = isBig ? 4 : 2;
    double rating = value;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            context.read<BookDescriptionCubit>().getRating(index);
            rating = context.read<BookDescriptionCubit>().data!.userRating!.toDouble();
          },
          child: CustomIcon(
              index < rating
                  ? AppIcons.yellowFilledIcon
                  : AppIcons.yellowEmptyIcon,
              padding: EdgeInsets.symmetric(horizontal: gap),
              height: height),
        );
      }),
    );
  }
}
