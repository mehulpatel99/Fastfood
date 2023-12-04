import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class mehuldb {
  Future<Database> setdata() async {
    var dir = await getApplicationDocumentsDirectory();
    var path = join(dir.path, 'mehul_db');
    var database = await openDatabase(path, version: 1, onCreate: mytable);
    return database;
  }

  Future<void> mytable(Database mydb, int version) async {
    var sql =
        'CREATE TABLE data(id integer primary key autoincrement,name text, price text)';

    await mydb.execute(sql);
  }
}
