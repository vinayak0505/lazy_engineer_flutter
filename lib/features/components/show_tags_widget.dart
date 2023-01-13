import 'package:flutter/material.dart';
import 'package:lazy_engineer/features/components/custom_chip.dart';

class ShowTagsWidget extends StatelessWidget {
  const ShowTagsWidget(this.tags, {super.key});
  final List<String> tags;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ...List.generate(
          tags.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CustomChip(
                text: tags[index],
              ),
            );
          },
        ),
      ],
    );
  }
}
