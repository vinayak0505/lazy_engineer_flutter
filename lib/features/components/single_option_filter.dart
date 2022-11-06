import 'package:flutter/material.dart';
import '../../assets/constants/decoration.dart';

class SingleOptionFilter extends FormField<String> {
  SingleOptionFilter({
    Key? key,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    required List<String> data,
    TextEditingController? controller,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
    TextStyle? style,
    TextStyle? errorStyle,
    FocusNode? focusNode,
    String? title,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: validator,
          initialValue: controller!.text,
          autovalidateMode: autovalidateMode,
          builder: (FormFieldState<String> state) {
            final theme = Theme.of(state.context);
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: kRoundedContainer,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -2),
                  leading: Radio<String>(
                      focusNode: focusNode,
                      focusColor: Colors.green,
                      value: data[index],
                      groupValue: controller.text,
                      onChanged: (String? value) {
                        if (value == null) return;
                        controller.text = value;
                        state.didChange(value);
                        focusNode?.requestFocus();
                        if (focusNode != null) {
                          FocusScope.of(state.context).nextFocus();
                        }
                      }),
                  title: Text(data[index], style: theme.textTheme.titleMedium),
                ),
              ),
            );
          },
        );
}
