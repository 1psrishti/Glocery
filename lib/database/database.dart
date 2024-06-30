import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Database? _database;

class LocalDatabase {

  // getting database if it already exists, else initialising it
  Future get database async {
    if (_database != null) return _database;
    _database = await _initialiseDatabase('localDatabase');
    return _database;
  }

  // initialising database
  Future _initialiseDatabase(String filepath) async {
    String databasePath = await getDatabasesPath();
    databasePath = join(databasePath, filepath);
    return await openDatabase(databasePath, onCreate: _createDatabase);
  }

  // creating database
  // running sql commands to create all the tables within
  Future _createDatabase(Database db, int version) async {
    await db.execute(
      '''
      CREATE TABLE Lists(
        id INTEGER PRIMARY KEY,
        name VARCHAR NOT NULL,
        cover VARCHAR DEFAULT 'ingredients',
        itemListId INT UNIQUE
      );
      '''
    );
  }

}