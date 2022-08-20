import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/screens/components/grid_card.dart';
import '../../assets/constants/strings.dart';
import '../components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            _nametag(context, DummyStrings.name),
            const SizedBox(height: 12),
            SearchBar(
              searchController: searchController,
            ),
            const SizedBox(height: 32),
            _slider(),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                HomeScreenText.lastOpened,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 100),
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                HomeScreenText.categories,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            MasonryGridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              itemCount: HomeScreenList.categoriesList.length,
              itemBuilder: (BuildContext context, int index) =>
                  GridCard(data: HomeScreenList.categoriesList[index]),
              // staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              mainAxisSpacing: 12,
              crossAxisSpacing: 16,
            ),
          ]),
        ),
      ),
    );
  }

  Widget _nametag(BuildContext context, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    HomeScreenText.hello,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ]),
            const Spacer(),
            GestureDetector(
              child: SvgPicture.asset(
                AppIcons.notifications,
                width: 48,
                height: 48,
              ),
              onTap: () {},
            )
          ]),
    );
  }

  Widget _slider() {
    return CarouselSlider(
        items: HomeScreenList.sliderImageList,
        options: CarouselOptions(
          height: 250,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),);
  }
}
