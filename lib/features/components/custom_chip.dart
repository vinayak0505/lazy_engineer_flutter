import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({super.key, this.text, this.toDelete, this.icon, this.onDelete});
  final String? text;
  final String? icon;
  final bool? toDelete;
  final void Function()? onDelete;

  factory CustomChip.addTags() {
    return const CustomChip(toDelete: false, icon: AppIcons.plusIcon);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Chip(
      backgroundColor: const Color(0x14212121),
      deleteIcon:
          toDelete ?? true ? const CustomIcon(AppIcons.closeIcon) : null,
      onDeleted: toDelete ?? true ? onDelete : null,
      label: text != null
          ? Text(text!, style: theme.textTheme.titleMedium)
          : icon != null
              ? CustomIcon(icon!)
              : const SizedBox(),
    );
  }
}
