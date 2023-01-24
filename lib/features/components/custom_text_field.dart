import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.autofocus = false,
    this.readOnly = false,
    this.keyboardType,
    this.onSubitted,
    this.hintText = 'Search',
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
    this.focusNode,
    this.suffixOnPress,
    this.suffixIconSize,
  });

  final TextEditingController controller;
  final bool autofocus;
  final bool readOnly;
  final bool obscureText;
  final bool showBorder;
  final bool filled;
  final bool underline;
  final int maxLines;
  final double? suffixIconSize;
  final double? width;
  final String? hintText;
  final String? labelText;
  final String? prefixIcon;
  final String? suffixIcon;
  final String? Function(String? value)? validator;
  final TextInputType? keyboardType;
  final void Function(String value)? onSubitted;
  final void Function(String? value)? onChange;
  final void Function()? suffixOnPress;
  final FocusNode? focusNode;

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
    return Builder(
      builder: (context) {
        return SizedBox(
          width: width,
          child: TextFormField(
            controller: controller,
            focusNode: focusNode,
            obscureText: obscureText,
            autofocus: autofocus,
            readOnly: readOnly,
            keyboardType: keyboardType,
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
                      child: CustomIcon(
                        prefixIcon!,
                        color: Colors.black,
                      ),
                    )
                  : null,
              suffixIcon: suffixIcon != null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      child: InkWell(
                        onTap: suffixOnPress,
                        child: CustomIcon(
                          suffixIcon!,
                          height: suffixIconSize,
                          width: suffixIconSize,
                          color: Colors.black,
                        ),
                      ),
                    )
                  : null,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              filled: filled,
              focusedErrorBorder: underline
                  ? underlineBorder(AppThemes.lightDarkColor)
                  : circularBorder(AppThemes.lightDarkColor),
              border: underline
                  ? underlineBorder(AppThemes.lightDarkColor)
                  : circularBorder(AppThemes.lightDarkColor),
              enabledBorder: underline
                  ? underlineBorder(AppThemes.lightDarkColor)
                  : circularBorder(AppThemes.lightDarkColor),
              disabledBorder: underline
                  ? underlineBorder(AppThemes.lightDarkColor)
                  : circularBorder(AppThemes.lightDarkColor),
              focusedBorder: underline
                  ? underlineBorder(AppThemes.primaryColor1)
                  : circularBorder(AppThemes.primaryColor1),
              errorBorder: underline
                  ? underlineBorder(AppThemes.errorColor)
                  : circularBorder(AppThemes.errorColor),
            ),
          ),
        );
      },
    );
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
