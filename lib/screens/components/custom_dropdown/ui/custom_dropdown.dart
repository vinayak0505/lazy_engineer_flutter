import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/components/custom_icon.dart';

import '../../../../assets/constants/decoration.dart';
import '../../../../assets/icons.dart';

class DropdownTab extends StatelessWidget {
  const DropdownTab({Key? key, required this.list, this.hintText})
      : super(key: key);
  final List<String> list;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DropdownButton<String>(
        menuMaxHeight: 300,
        iconSize: 8,
        elevation: 0,
        isExpanded: true,
        borderRadius: const BorderRadius.all(
          Radius.circular(kRoundedRectangleRadius),
        ),
        hint: hintText != null ? Text(hintText!) : null,
        icon: const CustomIcon(AppIcons.downArrowIcon),
        items: list
            .map((String item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: theme.textTheme.labelMedium,
                )))
            .toList(),
        onChanged: (value) {});
  }
}
