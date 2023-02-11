import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:objectdb/objectdb.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:hive/hive.dart';
import 'package:objectdb/src/objectdb_storage_filesystem.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HiveDB {
  static ObjectDB? db;

  static Future<ObjectDB> initHive() async {
      Directory appDocDir = await path.getApplicationDocumentsDirectory();
      await appDocDir.create(recursive: true);
      Hive.init(appDocDir.path);
    await Hive.openBox('yaroDB');
    return db!;
  }

  static Future<ObjectDB> initDB() async {
    if(!kIsWeb) {
      Directory appDocDir = await path.getApplicationDocumentsDirectory();
      dynamic dbFilePath = [appDocDir.path, 'yaro.db'].join('/');
      db = ObjectDB(FileSystemStorage(dbFilePath));
    }else{
    }
    return db!;
  }

  static getDB() async {
    await DB.initDB();
    return Hive.box('yaroDB');
  }

  static void addData(String key, dynamic data) async {
    await DB.initDB();
    var hiveDB = Hive.box('yaroDB');
    hiveDB.put(key, data);
  }

  static Future<dynamic> getData(String key) async {
    await DB.initDB();
    var hiveDB = Hive.box('yaroDB');
    return hiveDB.get(key);
  }

  static void removeData(String key) async {
    await DB.initDB();
    var hiveDB = Hive.box('yaroDB');
    hiveDB.delete(key);
  }
}

class DB {
  static ObjectDB? db;

  static Future<ObjectDB> initDB() async {
    if(!kIsWeb) {
      Directory appDocDir = await path.getApplicationDocumentsDirectory();
      dynamic dbFilePath = [appDocDir.path, 'yaro.db'].join('/');
      db = ObjectDB(FileSystemStorage(dbFilePath));
    }else{
    }
    return db!;
  }

  static Future<Map> getDB() async {
    ObjectDB db = await initDB();
    List datas = await db.find();
    db.close();
    if (datas.isEmpty) {
      return {};
    }
    Map data = datas[0];
    return data;
  }

  static Future deleteDB() async {
    try {
      ObjectDB db = await initDB();
      db.cleanup();
      db.close();
      return "Database Wiped";
    } catch (e) {
      return false;
    }
  }
}
