import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/download/presentation/logic/download/download_cubit.dart';

class ListOfFile extends StatelessWidget {
  const ListOfFile({
    super.key,
    required this.listValue,
    required this.listKey,
  });
  final List<String> listValue;
  final List<String> listKey;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 4,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listValue.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () =>
              context.read<DownloadCubit>().downloadFile(listValue[index]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CustomImage(
                  image: AppIcons.pdfIcon,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: Text(
                    converter(listValue[index]),
                    style: theme.textTheme.titleLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 2),
    );
  }

  String converter(String ele) {
    final int start = ele.lastIndexOf('/') + 1;
    return ele.substring(start);
  }
}
