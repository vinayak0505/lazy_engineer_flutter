import 'package:lazy_engineer/features/upload/data/datasources/local/upload_data.dart';
import 'package:lazy_engineer/features/upload/data/datasources/local/upload_database.dart';

class UploadLocalDataSource {
  UploadDatabase uploadDatabase = UploadDatabase.instance;
  Future setName(String name) async {
    await uploadDatabase.database;
    Upload data = await uploadDatabase.create(Upload(name: name));
    print('========${data.id} and ${data.name}');
    Upload uploadedData = await uploadDatabase.readUpload(data.id!);
    print('|||||||||${uploadedData.id} and ${uploadedData.name}');
  }
}
