import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';

class MultiOptionFilter extends StatelessWidget {
  final List<String> list;
  final ValueNotifier<List<String>> selected;

  const MultiOptionFilter({
    required this.list,
    required this.selected,
    super.key,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: kRoundedContainer,
        child: ValueListenableBuilder(
          builder: (context, _, __) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return OptionFilter(
                  title: list[index],
                  isSelected: selected.value.contains(list[index]),
                  onTap: (changed) {
                    // final value = selected.value;
                    // value[index] = changed;
                    // selected.value = value;
                    if (changed) {
                      selected.value.add(list[index]);
                    } else {
                      selected.value.remove(list[index]);
                    }
                  },
                );
              },
            );
          },
          valueListenable: selected,
        ),
      ),
    );
  }
}

class OptionFilter extends StatelessWidget {
  final String title;
  final bool isSelected;
  final void Function(bool) onTap;

  const OptionFilter({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleMedium;
    return CheckboxListTile(
      dense: true,
      value: false,
      title: Text(title, style: style),
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (value) => (value != null) ? onTap(value) : null,
    );
  }
}
