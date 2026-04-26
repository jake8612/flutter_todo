import 'package:sqflite/sqflite.dart';

abstract interface class DbService {
  int get version;
  Future<Database> open();
  Future<void> onCreate(Database db, int? version);
}
