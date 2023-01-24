import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class PapersLocalDatasource {
  Future downloadPapers(String fileName, String fileLink) async {
    final dio = Dio();
    final papers = Hive.box('papers');
    final tempDir = await getTemporaryDirectory();
    final String fullPath = '${tempDir.path}/$fileName';
    await dio.download(fileLink, fullPath);
    papers.add(fullPath);
  }
}
