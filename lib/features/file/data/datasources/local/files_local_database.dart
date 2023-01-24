import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class FilesLocalDatasource {
  Future downloadFiles(String fileName, String fileLink) async {
    final dio = Dio();
    final files = Hive.box('files');
    final tempDir = await getTemporaryDirectory();
    final String fullPath = '${tempDir.path}/$fileName';
    await dio.download(fileLink, fullPath);
    files.add(fullPath);
  }
}
