import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class NotesLocalDatasource {
  Future downloadNotes(String fileName, String fileLink) async {
    final dio = Dio();
    final notes = Hive.box('notes');
    final tempDir = await getTemporaryDirectory();
    final String fullPath = '${tempDir.path}/$fileName';
    await dio.download(fileLink, fullPath);
    notes.add(fullPath);
  }
}
