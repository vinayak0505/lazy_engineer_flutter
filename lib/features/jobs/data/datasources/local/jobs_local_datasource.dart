import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class JobsLocalDatasource {
  Future downloadJobs(String fileName, String fileLink) async {
    final dio = Dio();
    final notes = Hive.box('jobs');
    final tempDir = await getTemporaryDirectory();
    final String fullPath = '${tempDir.path}/$fileName';
    await dio.download(fileLink, fullPath);
    notes.add(fullPath);
  }
}
