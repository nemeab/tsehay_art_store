import 'Connect_database.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  DatabaseConnection? _databaseConnection;

  Repository() {
    _databaseConnection = DatabaseConnection();
  }

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _databaseConnection!.setDatabase();
    return _database!;
  }

  insertData(table, data) async {
    var connection = await database;
    return await connection.insert(
      table,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  readData(table) async {
    var connection = await database;
    return await connection.query(table);
  }

  readDataId(table, product_id) async {
    var connection = await database;
    return await connection
        .query(table, where: 'id=?', whereArgs: [product_id]);
  }

  updateData(table, data) async {
    var connection = await database;
    return await connection
        .rawUpdate('UPDATE $table SET first_name = ? WHERE id = ?', [
      data['first_name'],
      data['id'],
    ]);
  }

  deleteData(table, product_id) async {
    var connection = await database;
    return await connection
        .rawDelete("DELETE FROM $table WHERE id=$product_id");
  }

  deleteAllData(table) async {
    var connection = await database;
    return await connection.rawDelete("DELETE FROM $table");
  }
}
