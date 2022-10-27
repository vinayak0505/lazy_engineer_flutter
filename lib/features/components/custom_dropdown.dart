import 'package:flutter/material.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import '../../assets/constants/decoration.dart';
import '../../assets/icons.dart';

// String? dropdownValue;

// class CustomDropdown extends FormField<String> {
//   CustomDropdown({
//     Key? key,
//     required List<String> list,
//     List<String>? keyList,
//     String? hintText,
//     FormFieldValidator<String>? validator,
//     double? width,
//     bool isExpanded = true,
//     TextEditingController? controller,
//   }) : super(
//           key: key,
//           validator: validator,
//           initialValue: dropdownValue,
//           builder: (FormFieldState<String> state) {
//             final theme = Theme.of(state.context);
//             return Container(
//               width: width,
//               decoration: kRoundedContainer,
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: DropdownButton<String>(
//                   elevation: 0,
//                   underline: const SizedBox(),
//                   isExpanded: isExpanded,
//                   hint: hintText != null ? Text(hintText) : null,
//                   value: dropdownValue,
//                   icon: const CustomIcon(
//                     AppIcons.downArrowIcon,
//                     height: 8,
//                   ),
//                   items: list
//                       .map(
//                         (String item) => DropdownMenuItem<String>(
//                           value: item,
//                           child: Text(
//                             item,
//                             style: theme.textTheme.labelMedium,
//                           ),
//                         ),
//                       )
//                       .toList(),
//                   onChanged: (value) {
//                     if (keyList != null) {
//                       dropdownValue = value!;
//                       controller.text = keyList[list.indexOf(value)];
//                     } else {
//                       dropdownValue = value!;
//                       controller.text = value;
//                     }
//                     print(
//                         '=======$dropdownValue || ${controller.text}');
//                   }),
//             );
//           },
//         );
// }

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({
    super.key,
    required this.list,
    this.keyList,
    this.hintText,
    this.validator,
    this.width,
    this.isExpanded = true,
    required this.controller,
  });
  final List<String> list;
  final List<String>? keyList;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final double? width;
  final bool isExpanded;
  final TextEditingController controller;

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: widget.width,
      decoration: kRoundedContainer,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DropdownButton<String>(
          elevation: 0,
          underline: const SizedBox(),
          isExpanded: widget.isExpanded,
          hint: widget.hintText != null ? Text(widget.hintText!) : null,
          value: dropdownValue,
          icon: const CustomIcon(
            AppIcons.downArrowIcon,
            height: 8,
          ),
          items: widget.list
              .map(
                (String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              )
              .toList(),
          onChanged: (value) {
            if (widget.keyList != null) {
              setState(() {
                dropdownValue = value!;
                widget.controller.text =
                    widget.keyList![widget.list.indexOf(value)];
              });
            } else {
              setState(() {
                dropdownValue = value!;
                widget.controller.text = value;
              });
            }
          }),
    );
  }
}
