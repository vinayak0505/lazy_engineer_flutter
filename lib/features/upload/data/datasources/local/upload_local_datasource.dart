import 'package:lazy_engineer/core/models/book_database_model/book_database_model.dart';
import 'package:lazy_engineer/features/upload/data/datasources/local/upload_database.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_book_request.dart/upload_book_request.dart';

class UploadLocalDataSource {
  MyDatabase uploadDatabase = MyDatabase.instance;
  Future setBook(UploadBookRequest data) async {
    await uploadDatabase.database;
    BookDatabaseModel databaseData = await uploadDatabase.create(
      BookDatabaseModel(
        title: data.title,
        subject: data.subject,
        about: data.about,
        pages: data.pages,
        semister: data.semister,
        bookEdition: data.bookEdition,
        price: data.price,
        rating: 5,
      ),
    );
    BookDatabaseModel uploadData = await uploadDatabase.read(1);
  }
}
