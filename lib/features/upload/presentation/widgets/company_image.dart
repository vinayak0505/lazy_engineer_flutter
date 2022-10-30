import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../assets/images.dart';
import '../../../../config/app_config.dart';
import '../../../components/custom_image.dart';
import 'full_screen_photo.dart';

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
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      File imagsTemporary = File(image.path);
      setState(() {
        newList.add(imagsTemporary);
        widget.onSubmit.call(newList);
      });
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image: $e');
    }
  }

  // PlatformFile? pickedFile;

  // Future selectFile() async {
  //   final result = await FilePicker.platform.pickFiles();
  //   if (result == null) return;

  //   setState(() {
  //     pickedFile = result.files.first;
  //   });
  // }

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
        ]);
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

// class CompanyImage extends StatelessWidget {
//   const CompanyImage({
//     super.key,
//     required this.list,
//     required this.onSubmit,
//   });
//   final List<File> list;
//   final void Function(List<File>) onSubmit;

//   @override
//   Widget build(BuildContext context) {
//     List<File> newList = context.read<ListCubit<File>>().state.list as List<File>;
//     Future pickImage() async {
//       try {
//         final image =
//             await ImagePicker().pickImage(source: ImageSource.gallery);
//         if (image == null) return;
//         File imagesTemporary = File(image.path);
//         context.read<ListCubit<File>>().addElement(imagesTemporary);
//         newList = context.read<ListCubit<File>>().state.list  as List<File>;
//       } on PlatformException catch (e) {
//         debugPrint('Failed to pick image: $e');
//       }
//     }

//     // List newList = context.read<ListCubit<File>>().onSubmit();
//     return GridView.count(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         crossAxisCount: 3,
//         crossAxisSpacing: 4.0,
//         mainAxisSpacing: 4.0,
//         children: <Widget>[
//           ...newList.map(
//                 (image) => Hero(
//                   tag: AppConfig.companyPhotoTag,
//                   child: GestureDetector(
//                     child: Image.file(image),
//                     onLongPress: () {
//                       context.read<ListCubit>().removeElement(image);
//                     },
//                     onTap: () => navigation(
//                       context,
//                       context.read<ListCubit<File>>().onSubmit().indexOf(image),
//                       context.read<ListCubit<File>>().onSubmit() as List<File>,
//                     ),
//                   ),
//                 ),
//               ),
//           GestureDetector(
//             onTap: () => pickImage(),
//             child: const CustomImage(
//               image: AppImages.addImage,
//             ),
//           ),
//         ]);
//   }

//   void navigation(BuildContext context, int index, List<File> list) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => FullScreenPhoto(
//           index: index,
//           list: list,
//         ),
//       ),
//     );
//   }
// }
