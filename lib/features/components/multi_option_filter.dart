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
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return CheckboxListTile(
                  dense: true,
                  value: selected.value.contains(list[index]),
                  contentPadding: EdgeInsets.zero,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (value) {
                    if (value != null) {
                      if (value) {
                        if (!selected.value.contains(list[index])) {
                          final List<String> newlist = selected.value;
                          newlist.add(list[index]);
                          selected.value = newlist;
                        }
                      } else {
                        selected.value.remove(list[index]);
                      }
                      print('===$value ${selected.value}');
                    }
                  },
                  title: Text(
                    list[index],
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
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
