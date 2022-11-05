import 'package:flutter/material.dart';

// class MultiOptionFilter extends FormField<String> {
//   MultiOptionFilter({
//     Key? key,
//     FormFieldSetter<String>? onSaved,
//     FormFieldValidator<String>? validator,
//     required List<String> data,
//     // final Map<String, bool> _map = {};
//     AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
//     FocusNode? focusNode,
//     String? title,
//   }) : super(
//           key: key,
//           onSaved: onSaved,
//           validator: validator,
//           // initialValue: controller!.text,
//           autovalidateMode: autovalidateMode,
//           builder: (FormFieldState<String> state) {
//             final theme = Theme.of(state.context);
//             return Container(
//               padding: const EdgeInsets.all(8),
//               decoration: kRoundedContainer,
//               child: ListView(
//         children: _map.keys
//             .map(
//               (key) => CheckboxListTile(
//                 value: _map[key],
//                 onChanged: (value) => setState(() => _map[key] = value!),
//                 subtitle: Text(key),
//               ),
//             )
//             .toList(),
//       ),
//             );
//           },
//         );
// }

class MultiOptionFilter extends StatefulWidget {
  const MultiOptionFilter({
    super.key,
    required this.map,
    required this.onSubmit,
  });
  final Map<String, bool> map;
  final void Function(Map<String, bool>) onSubmit;

  @override
  State<MultiOptionFilter> createState() => _MultiOptionFilterState();
}

class _MultiOptionFilterState extends State<MultiOptionFilter> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: widget.map.keys
          .map(
            (key) => CheckboxListTile(
              dense: true,
              controlAffinity: ListTileControlAffinity.leading,
              value: widget.map[key],
              onChanged: (value) => setState(() => widget.map[key] = value!),
              title: Text(key),
            ),
          )
          .toList(),
    );
  }
}
