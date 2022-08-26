import 'package:flutter/material.dart';
import '../../assets/constants/decoration.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.controller,
      this.autofocus,
      this.readOnly,
      this.keyboardType,
      this.onSubitted,
      this.hintText,
      this.obscureText,
      this.labelText,
      this.prefixIcon, this.suffixIcon})
      : super(key: key);
  final TextEditingController controller;
  final bool? autofocus, readOnly, obscureText;
  final TextInputType? keyboardType;
  final void Function(String value)? onSubitted;
  final String? hintText, labelText;
  final Widget? prefixIcon, suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText ?? false,
      autofocus: autofocus ?? false,
      readOnly: readOnly ?? false,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      onSubmitted: onSubitted ?? (_) {},
      decoration: kTextFieldDecoration.copyWith(
        fillColor: Theme.of(context).canvasColor,
        hintText: hintText,
        labelText: labelText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: prefixIcon,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: suffixIcon,
        )
      ),
    );
  }
}
