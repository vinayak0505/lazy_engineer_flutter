import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final String? hint;
  final String? error;
  final double? hPadding;
  final TextInputType? keyboardType;
  final String? counter;
  final String? initialValue;
  final Widget? prefix;
  final Widget? suffix;
  final bool readOnly;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final int? minLines;
  final int? maxLines;
  final TextCapitalization? textCapitalization;
  final double? borderRadius;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  final bool autoFocus;
  final bool showBorder;
  final bool underline;
  final int? maxLength;
  final TextInputAction? textInputAction;

  const CustomTextField({
    Key? key,
    this.controller,
    this.inputFormatters,
    this.hint,
    this.error,
    this.hPadding,
    this.keyboardType,
    this.counter,
    this.initialValue,
    this.prefix,
    this.suffix,
    this.readOnly = false,
    this.validator,
    this.onChanged,
    this.minLines,
    this.maxLines,
    this.textCapitalization,
    this.borderRadius,
    this.focusNode,
    this.onTap,
    this.autoFocus = false,
    this.showBorder = true,
    this.underline = false,
    this.maxLength,
    this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hPadding ?? 32.0),
      child: ClipSmoothRect(
        radius: SmoothBorderRadius(
          cornerRadius: borderRadius ?? 8,
          cornerSmoothing: 1,
        ),
        child: TextFormField(
          textInputAction: textInputAction,
          controller: controller,
          keyboardType: keyboardType,
          focusNode: focusNode,
          autofocus: autoFocus,
          maxLength: maxLength,
          onTap: onTap,
          style: theme.textTheme.bodyText2!.copyWith(
            color: const Color(0xff768795),
            fontWeight: FontWeight.w600,
          ),
          textCapitalization:
              textCapitalization ?? TextCapitalization.sentences,
          minLines: minLines,
          maxLines: maxLines,
          inputFormatters: inputFormatters,
          initialValue: initialValue,
          validator: validator,
          readOnly: readOnly,
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            hintText: hint,
            hintStyle: theme.textTheme.bodyText2,
            filled: true,
            prefix: prefix,
            suffixIcon: suffix,
            isDense: true,
            fillColor: theme.scaffoldBackgroundColor,
            errorText: error,
            errorStyle: theme.textTheme.overline,
            counterText: counter,
            enabledBorder: buildOutlineInputBorder(theme),
            border: buildOutlineInputBorder(theme),
            focusedBorder: buildOutlineInputBorder(theme),
            errorBorder: errorBorder(theme),
          ),
        ),
      ),
    );
  }

  InputBorder buildOutlineInputBorder(ThemeData theme) {
    if (underline) {
      return UnderlineInputBorder(
        borderSide: BorderSide(color: theme.hintColor, width: 0.5),
      );
    } else {
      return OutlineInputBorder(
        borderRadius: SmoothBorderRadius(
          cornerRadius: borderRadius ?? 8,
          cornerSmoothing: 1,
        ),
        borderSide: showBorder
            ? BorderSide(color: theme.hintColor, width: 0.5)
            : BorderSide.none,
      );
    }
  }

  InputBorder errorBorder(ThemeData theme) {
    if (underline) {
      return UnderlineInputBorder(
        borderSide: BorderSide(color: theme.hintColor, width: 0.5),
      );
    }
    return OutlineInputBorder(
      borderRadius: SmoothBorderRadius(
        cornerRadius: borderRadius ?? 8,
        cornerSmoothing: 1,
      ),
      borderSide:
          showBorder ? BorderSide(color: theme.errorColor) : BorderSide.none,
    );
  }
}
