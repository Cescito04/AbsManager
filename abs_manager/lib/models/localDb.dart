import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
 Database? _database;
 List wholeDtatList = [];
class localDatabase
{
  Future get database async{
    if (_database!=null) return _database;
    _database = await _initializeDB('Local.db');
    return _database;
  }

  Future _initializeDB(String filepath) async {
    final dbpath = await getDatabasesPath();
    final path  = join(dbpath,filepath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async{
    await db.execute(
'''
    CREATE TABLE Localdata(id INTEGER PRIMARY KEY,email TEXT NOT NULL, password TEXT NOT NULL)
    '''
    );
  }

  Future addDataLocally({ email,  password}) async {
    final db = await database;
    await db.insert(
      "Localdata",
      {"email": email, "password": password},
    );
    print('${email} and ${password} added successfully to database ! ');
    return 'added';
  }

  Future readAllData() async {
    final db = await database;
    final alldata = await db!.query("Localdata");
    wholeDtatList = alldata;
    print(wholeDtatList);
    return "Successfully read";
  }

  Future updateData({email,id}) async{
    final db = await database;
    int dbupdateid = db.rawUpdate('UPDATE Localdata SET email = ? WHERE id = ?',[email,id]);
    return dbupdateid;
  }

  Future deleteData({email}) async {
    final db = await database;
    await db!.delete("Localdata", where: 'email = ?', whereArgs: [email]);
    print('Deleted Successfully $email');
    return "Successfully deleted";
  }


}