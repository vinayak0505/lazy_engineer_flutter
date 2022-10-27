import 'package:lazy_engineer/features/upload/data/datasources/local/upload_data.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class UploadDatabase {
  static final UploadDatabase instance = UploadDatabase._init();
  static Database? _database;
  UploadDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('upload.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    await db.execute(
        'CREATE TABLE $tableUploadData(${UploadFields.id} $idType, ${UploadFields.name} $textType)');
  }

  Future<Upload> create(Upload uploadData) async {
    final db = await instance.database;
    final id = await db.insert(tableUploadData, uploadData.toJson());
    return uploadData.copy(id: id);
  }

  Future<Upload> readUpload(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableUploadData,
      columns: UploadFields.values,
      where: '${UploadFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Upload.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<Upload>> readAllUpload() async {
    final db = await instance.database;
    const orderBy = '${UploadFields.name} ASC';
    // final result = await db.rawQuery('SELECT * FROM $tableUploadData ORDER BY $orderBy');
    final result = await db.query(tableUploadData, orderBy: orderBy);
    return result.map((json) => Upload.fromJson(json)).toList();
  }

  Future<int> update(Upload upload) async {
    final db = await instance.database;
    return db.update(
      tableUploadData,
      upload.toJson(),
      where: '${UploadFields.id} = ?',
      whereArgs: [upload.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;
    return await db.delete(
      tableUploadData,
      where: '${UploadFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
