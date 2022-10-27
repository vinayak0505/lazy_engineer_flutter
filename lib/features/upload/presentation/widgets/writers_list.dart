import 'package:flutter/material.dart';

import '../../../../assets/constants/strings.dart';
import '../../../components/custom_text_field.dart';

class WriterListWidget extends StatefulWidget {
  const WriterListWidget({super.key, required this.writerList});
  final void Function(List<String>)? writerList;

  @override
  State<WriterListWidget> createState() => _WriterListWidgetState();
}

class _WriterListWidgetState extends State<WriterListWidget> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    List<String> list = [];
    return Column(
      children: [
        CustomTextField.secondary(
          controller: controller,
          hintText: writer,
          onSubitted: (value) {
            setState(() {
              list.add(value);
            });
            controller.clear();
          },
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) => ListTile(
            dense: true,
            title: Text(list[index]),
          ),
          separatorBuilder: (_, __) => const Divider(),
        ),
      ],
    );
  }
}
