import 'package:flutter/material.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import '../../assets/constants/decoration.dart';
import '../../assets/icons.dart';

class CustomDropdown extends FormField<String> {
  CustomDropdown({
    Key? key,
    required List<String> list,
    String? hintText,
    FormFieldValidator<String>? validator,
    bool isExpanded = true,
    TextEditingController? controller,
  }) : super(
          key: key,
          // onSaved: onSaved,
          validator: validator,
          initialValue: controller!.text,
          builder: (FormFieldState<String> state) {
            final theme = Theme.of(state.context);
            return Container(
              decoration: kRoundedContainer,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DropdownButton<String>(
                  elevation: 0,
                  underline: const SizedBox(),
                  isExpanded: isExpanded,
                  hint: hintText != null ? Text(hintText) : null,
                  value: controller.text != '' ? controller.text : null,
                  icon: const CustomIcon(
                    AppIcons.downArrowIcon,
                    height: 8,
                  ),
                  items: list
                      .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: theme.textTheme.labelMedium,
                          )))
                      .toList(),
                  onChanged: (value) {
                    controller.text = value!;
                  }),
            );
          },
        );
}
