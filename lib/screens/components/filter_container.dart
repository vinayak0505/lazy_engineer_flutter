import 'package:flutter/material.dart';
import '../../assets/constants/decoration.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer(
      {Key? key, required this.isMultiOption, required this.data})
      : super(key: key);
  final bool isMultiOption;
  final List<String> data;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: kRoundedContainer,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (context, index) => ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -2),
          leading: isMultiOption
              ? Checkbox(
                  value: true,
                  onChanged: (value) => false,
                )
              : Radio(
                  value: true,
                  onChanged: (value) => false,
                  groupValue: false,
                ),
          title: Text(data[index], style: theme.textTheme.titleMedium),
        ),
      ),
    );
  }
}
