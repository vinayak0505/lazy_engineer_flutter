import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../assets/constants/strings.dart';
import '../../assets/icons.dart';
import 'custom_textfield.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key, required this.searchController}) : super(key: key);
  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        controller: searchController,
        hPadding: 20,
        hint: HomeScreenText.searchCourse,
        suffix: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(AppIcons.searchIcon),
        ));
  }
}
