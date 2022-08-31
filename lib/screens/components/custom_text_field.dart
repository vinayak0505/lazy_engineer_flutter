import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../assets/constants/decoration.dart';
import 'custom_image.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.controller,
      this.autofocus = false,
      this.readOnly = false,
      this.keyboardType,
      this.onSubitted,
      this.hintText = "Search by Name",
      this.obscureText = false,
      this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      this.validator,
      this.onChange})
      : super(key: key);

  final TextEditingController controller;
  final bool autofocus, readOnly, obscureText;
  final TextInputType? keyboardType;
  final void Function(String value)? onSubitted;
  final String? hintText, labelText;
  final String? prefixIcon, suffixIcon;
  final String? Function(String? value)? validator;
  final void Function(String? value)? onChange;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Column(
        children: [
          TextFormField(
            controller: controller,
            obscureText: obscureText,
            autofocus: autofocus,
            readOnly: readOnly,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            onFieldSubmitted: onSubitted,
            validator: validator,
            decoration: kTextFieldDecoration.copyWith(
                fillColor: Theme.of(context).canvasColor,
                hintText: hintText,
                labelText: labelText,
                prefixIcon: Padding(
                  padding: prefixIcon != null
                      ? const EdgeInsets.symmetric(vertical: 8, horizontal: 12)
                      : EdgeInsets.zero,
                  child: prefixIcon != null ? CustomIcon(prefixIcon!) : null,
                ),
                suffixIcon: Padding(
                  padding: suffixIcon != null
                      ? const EdgeInsets.symmetric(vertical: 8, horizontal: 12)
                      : EdgeInsets.zero,
                  child: suffixIcon != null ? CustomIcon(suffixIcon!) : null,
                )),
          ),
        ],
      );
    });
  }
}
