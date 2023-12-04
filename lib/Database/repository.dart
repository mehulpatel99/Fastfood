import 'package:fastfood/Database/db_helper.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  mehuldb? _databaseconnection;
  Database? _database;

  Repository() {
    _databaseconnection = mehuldb();
  }

  Future<Database?> get myDatabase async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseconnection?.setdata();
      return  _database;
    }
  }

  //getdata
  getdata(table) async {
    var con = await myDatabase;
    return await con!.query(table);
  }

  //insertdata
  insertdata(table, data) async {
    var con = await myDatabase;
    return await con!.insert(table, data);
  }

  //updatedata
  updatedata(table, data) async {
    var con = await myDatabase;
    return await con!
        .update(table, data, where: 'id=?', whereArgs: [data['id']]);
  }
  
  
}
