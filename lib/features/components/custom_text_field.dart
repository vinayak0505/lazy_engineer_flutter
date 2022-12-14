import 'package:flutter/material.dart';
import '../../assets/constants/decoration.dart';
import '../../config/theme/app_theme.dart';
import 'custom_icon.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    this.autofocus = false,
    this.readOnly = false,
    this.keyboardType,
    this.onSubitted,
    this.hintText = 'Enter Value',
    this.obscureText = false,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onChange,
    this.showBorder = true,
    this.underline = false,
    this.filled = true,
    this.maxLines = 1,
    this.width,
  }) : super(key: key);

  final TextEditingController controller;
  final bool autofocus, readOnly, obscureText, showBorder, filled, underline;
  final TextInputType? keyboardType;
  final void Function(String value)? onSubitted;
  final String? hintText, labelText;
  final String? prefixIcon, suffixIcon;
  final String? Function(String? value)? validator;
  final void Function(String? value)? onChange;
  final int maxLines;
  final double? width;

  factory CustomTextField.secondary({
    required TextEditingController controller,
    TextInputType? keyboardType,
    String? prefixIcon,
    String? hintText,
    double? width,
    String? Function(String? value)? validator,
    void Function(String)? onSubitted,
  }) {
    return CustomTextField(
      controller: controller,
      prefixIcon: prefixIcon,
      hintText: hintText,
      keyboardType: keyboardType,
      width: width,
      onSubitted: onSubitted,
      showBorder: false,
      underline: true,
      filled: false,
      validator: validator,
    );
  }

  factory CustomTextField.multiLine({
    required TextEditingController controller,
    String? Function(String? value)? validator,
    String hintText = 'Enter Value',
  }) {
    return CustomTextField(
      controller: controller,
      keyboardType: TextInputType.multiline,
      hintText: hintText,
      filled: false,
      maxLines: 3,
      validator: validator,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SizedBox(
        width: width,
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          autofocus: autofocus,
          readOnly: readOnly,
          keyboardType: TextInputType.text,
          onFieldSubmitted: onSubitted,
          validator: validator,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            fillColor: Theme.of(context).canvasColor,
            prefixIcon: prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    child: CustomIcon(prefixIcon!),
                  )
                : null,
            suffixIcon: suffixIcon != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    child: CustomIcon(suffixIcon!),
                  )
                : null,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            filled: filled,
            border: underline
                ? circularBorder(AppThemes.lightDarkColor)
                : underlineBorder(AppThemes.lightDarkColor),
            enabledBorder: !underline
                ? circularBorder(AppThemes.lightDarkColor)
                : underlineBorder(AppThemes.lightDarkColor),
            disabledBorder: !underline
                ? circularBorder(AppThemes.lightDarkColor)
                : underlineBorder(AppThemes.lightDarkColor),
            focusedBorder: !underline
                ? circularBorder(AppThemes.primaryColor1)
                : underlineBorder(AppThemes.primaryColor1),
            errorBorder: !underline
                ? circularBorder(AppThemes.errorColor)
                : underlineBorder(AppThemes.errorColor),
          ),
        ),
      );
    });
  }

  InputBorder circularBorder(Color color) {
    return OutlineInputBorder(
      borderSide:
          showBorder ? BorderSide(color: color, width: 0.5) : BorderSide.none,
      borderRadius: const BorderRadius.all(
        Radius.circular(kRoundedRectangleRadius),
      ),
    );
  }

  InputBorder underlineBorder(Color color) {
    return UnderlineInputBorder(
      borderSide: BorderSide(color: color),
    );
  }
}
