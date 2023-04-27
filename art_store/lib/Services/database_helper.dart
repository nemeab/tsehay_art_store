import 'package:art_store/Models/registration_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbName = "Registration.db";

  static Future<Database> _getDB() async {
    return openDatabase(join(await getDatabasesPath(), _dbName),
        onCreate: (db, version) async => await db.execute(
            "CREATE TABLE Registration(id INTEGER PRIMARY KEY, fullName text NOT NULL, email text NOT NULL, password text NOT NULL, confirmPassword text NOT NULL);"),
        version: _version);
  }

  static Future<int> addRegistration(Registration registration) async {
    final db = await _getDB();
    return await db.insert("Registration", registration.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> updateRegistration(Registration registration) async {
    final db = await _getDB();
    return await db.update("Registration", registration.toJson(),
        where: 'id = ?',
        whereArgs: [registration.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> deleteRegistration(Registration registration) async {
    final db = await _getDB();
    return await db.delete(
      "Registration",
      where: 'id = ?',
      whereArgs: [registration.id],
    );
  }

  static Future<List<Registration>?> getAllRegistration() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> maps = await db.query("Registration");

    if (maps.isEmpty) {
      return null;
    }

    return List.generate(
        maps.length, (index) => Registration.fromJson(maps[index]));
  }
}
