import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/config/app_config.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/full_screen_photo.dart';

class CompanyImage extends StatefulWidget {
  const CompanyImage({
    super.key,
    required this.list,
    required this.onSubmit,
  });
  final List<File> list;
  final void Function(List<File>) onSubmit;

  @override
  State<CompanyImage> createState() => _CompanyImageState();
}

class _CompanyImageState extends State<CompanyImage> {
  List<File> newList = [];
  Future pickImage() async {
    try {
      final image = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );
      if (image == null) return;
      final pickedFile = image.files.first;
      final File imageFile = File(pickedFile.path!);
      setState(() {
        newList.add(imageFile);
        widget.onSubmit.call(newList);
      });
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 4.0,
      children: <Widget>[
        ...newList.map(
          (image) => Hero(
            tag: AppConfig.companyPhotoTag,
            child: GestureDetector(
              child: Image.file(image),
              onLongPress: () {
                setState(() {
                  newList.remove(image);
                });
              },
              onTap: () => navigation(
                context,
                newList.indexOf(image),
                newList,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => pickImage(),
          // onTap: () => selectFile(),
          child: const CustomImage(
            image: AppImages.addImage,
          ),
        ),
      ],
    );
  }

  void navigation(BuildContext context, int index, List<File> list) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullScreenPhoto(
          index: index,
          list: list,
        ),
      ),
    );
  }
}
