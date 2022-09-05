import 'package:flutter/material.dart';
import '../../assets/constants/decoration.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer(
      {Key? key, required this.isMultiOption, required this.data})
      : super(key: key);
  final bool isMultiOption;
  final List<String> data;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
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
          visualDensity: const VisualDensity(horizontal: -4, vertical: -2),
          leading: isMultiOption
              ? Checkbox(
                  value: true,
                  onChanged: (value) => false,
                )
              : Radio(
                  value: true,
                  onChanged: (value) => false,
                  groupValue: false,
                ),
          title: Text(data[index], style: theme.textTheme.titleMedium),
        ),
      ),
    );
  }
}

class CounterFormField extends FormField<String> {
  CounterFormField({
    Key? key,
    FormFieldSetter<String>? onSaved,
    required FormFieldValidator<String> validator,
    required bool isMultiOption,
    required List<String> data,
    required TextEditingController controller,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
    TextStyle? style,
    TextStyle? errorStyle,
    FocusNode? focusNode,
    String? title,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: validator,
          initialValue: controller.text,
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
                  leading: isMultiOption
                      ? Checkbox(
                        value: controller.text == 'true',
                        onChanged: (value) {
                          if (value == null) return;
                          controller.text = value ? 'true' : 'false';
                          state.didChange(value ? 'true' : 'false');
                          focusNode?.requestFocus();
                          if (focusNode != null) {
                            FocusScope.of(state.context).nextFocus();
                          }
                        })
                      : Radio<String>(
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