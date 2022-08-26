import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../assets/constants/strings.dart';
import '../../../components/custom_text_field.dart';

class TextFieldBox extends StatelessWidget {
  const TextFieldBox(
      {Key? key,
      required this.controller,
      required this.keyboardType,
      required this.icon,
      required this.text,
      this.validation,
      this.obscureText})
      : super(key: key);
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String icon;
  final String text;
  // final Stream<bool> validation;
  final bool? obscureText, validation;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(text, style: theme.textTheme.bodyText2)),
      const SizedBox(height: 2),
      CustomTextField(
          controller: controller,
          hintText: text,
          keyboardType: keyboardType,
          // autofocus: true,
          obscureText: obscureText,
          prefixIcon: SvgPicture.asset(icon)),
      const SizedBox(height: 2),
      // validation
      validation ?? true
          ? const SizedBox()
          : Text("Enter correct $text",
              style: theme.textTheme.caption?.copyWith(color: theme.errorColor))
    ]);
  }
}
