import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../../../../../core/models/book_database_model/book_database_model.dart';

const String tableBook = 'book';
const String tableBookWriter = 'book_writer';
const String tableBookTag = 'book_tag';

class BookFields {
  static final List<String> values = [
    id,
    title,
    writer,
    subject,
    about,
    pages,
    semester,
    bookEdition,
    price,
    tags,
    rating
  ];
  static const String id = '_id';
  static const String title = 'title';
  static const String writer = 'writer';
  static const String subject = 'subject';
  static const String about = 'about';
  static const String pages = 'pages';
  static const String semester = 'semester';
  static const String bookEdition = 'book_edition';
  static const String price = 'price';
  static const String tags = 'tags';
  static const String rating = 'rating';
}

class BookWriterFields {
  static final List<String> values = [writerId, id, writer];
  static const String id = '_id';
  static const String writerId = 'writer_id';
  static const String writer = 'writer';
}

class BookTagFields {
  static final List<String> values = [tagId, id, tag];
  static const String id = '_id';
  static const String tagId = 'tag_id';
  static const String tag = 'tag';
}

class MyDatabase {
  static final MyDatabase instance = MyDatabase._init();
  static Database? _database;
  MyDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('Book.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  BookDatabaseModel declareId(BookDatabaseModel data, int id) {
    return BookDatabaseModel(
      id: data.id ?? id,
      title: data.title,
      subject: data.subject,
      about: data.about,
      pages: data.pages,
      semester: data.semester,
      bookEdition: data.bookEdition,
      price: data.price,
      rating: data.rating,
    );
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const intType = 'INTEGER NOT NULL';
    const nullableIntType = 'INTEGER';
    const textType = 'TEXT NOT NULL';
    const nullableTextType = 'TEXT';
    await db.execute(
        'CREATE TABLE $tableBook(${BookFields.id} $idType, ${BookFields.title} $textType, ${BookFields.subject} $textType, ${BookFields.about} $nullableTextType, ${BookFields.pages} $nullableIntType, ${BookFields.semester} $intType, ${BookFields.bookEdition} $nullableIntType, ${BookFields.price} $nullableIntType, ${BookFields.rating} $intType)');
    await db.execute(
        'CREATE TABLE $tableBookWriter(${BookWriterFields.writerId} $idType, ${BookWriterFields.id} $idType, ${BookWriterFields.writer} $textType)');
    await db.execute(
        'CREATE TABLE $tableBookTag(${BookTagFields.tagId} $idType, ${BookTagFields.id} $idType, ${BookTagFields.tag} $textType)');
  }

  Future<BookDatabaseModel> create(BookDatabaseModel data) async {
    final db = await instance.database;
    final id = await db.insert(tableBook, data.toJson());
    return declareId(data, id);
  }

  Future<BookDatabaseModel> read(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableBook,
      columns: BookFields.values,
      where: '${BookFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return BookDatabaseModel.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<BookDatabaseModel>> readAll() async {
    final db = await instance.database;
    const orderBy = '${BookFields.id} ASC';
    // final result = await db.rawQuery('SELECT * FROM $tableBook ORDER BY $orderBy');
    final result = await db.query(tableBook, orderBy: orderBy);
    return result.map((json) => BookDatabaseModel.fromJson(json)).toList();
  }

  Future<int> update(BookDatabaseModel book) async {
    final db = await instance.database;
    return db.update(
      tableBook,
      book.toJson(),
      where: '${BookFields.id} = ?',
      whereArgs: [book.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;
    return await db.delete(
      tableBook,
      where: '${BookFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
