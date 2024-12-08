import 'package:sqflite/sqflite.dart';

class SQFliteHelper {
  static final SQFliteHelper _instance = SQFliteHelper._internal();

  factory SQFliteHelper
      () {
    return _instance;
  }

  SQFliteHelper._internal();

  late Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = "${dbPath}/'sqflite.db'";
    return await openDatabase(path, version: 1, onCreate: _createDatabase);
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute(
        'CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)');
  }

  Future<void> insertUser(Map<String, dynamic> user) async {
    final db = await database;
    await db.insert('users', user,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await database;
    return db.query('users');
  }

  Future<void> updateUser(Map<String, dynamic> user) async {
    final db = await database;
    await db.update('users', user,
        where: 'id = ?', whereArgs: [user['id']]);
  }

  Future<void> deleteUser(int id) async {
    final db = await database;
    await db.delete('users', where: 'id = ?', whereArgs: [id]);
  }

  Future<void> deleteAllUsers() async {
    final db = await database;
    await db.delete('users');
  }

  Future<void> close() async {
    final db = await database;
    db.close();
  }


  Future<void> dropDatabase() async {
    final db = await database;
    await db.execute('DROP TABLE users');
  }

  Future<void> dropAllTables() async {
    final db = await database;
    await db.execute('DROP TABLE IF EXISTS users');
  }



}