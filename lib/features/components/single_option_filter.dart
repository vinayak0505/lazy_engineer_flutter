import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';

class SingleOptionFilter extends FormField<String> {
  SingleOptionFilter({
    super.key,
    super.onSaved,
    super.validator,
    required List<String> data,
    TextEditingController? controller,
    AutovalidateMode super.autovalidateMode = AutovalidateMode.disabled,
    FocusNode? focusNode,
  }) : super(
          initialValue: controller!.text,
          builder: (FormFieldState<String> state) {
            final ThemeData theme = Theme.of(state.context);
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
                      toggleable: true,
                      value: data[index],
                      groupValue: controller.text,
                      onChanged: (String? value) {
                        controller.text = value ?? '';
                        state.didChange(value);
                        focusNode?.requestFocus();
                        if (focusNode != null) {
                          FocusScope.of(state.context).nextFocus();
                        }
                      },),
                  title: Text(
                    data[index],
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
            );
          },
        );
}
