import 'dart:convert';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';

import '../../../domain/domain.dart';
import '../../data.dart';

part 'notification_db.g.dart';

const String _notiTableName = 'noti_plain_text_table';

class NotificationTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get data => text()();
  BoolColumn get isRead => boolean().nullable()();
  BoolColumn get isHandled => boolean().nullable()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final file = await _getDatabaseFile();
    return NativeDatabase(file);
  });
}

Future<File> _getDatabaseFile() async {
  final dbFolder = await getApplicationDocumentsDirectory();
  return File('${dbFolder.path}/$_notiTableName.sqlite');
}

@DriftDatabase(
  tables: [NotificationTable],
  queries: {
    "markAllAsRead": "UPDATE notification_table SET is_read = TRUE;",
    "markAllAsHandled": "UPDATE notification_table SET is_handled = TRUE;",
  },
)
class NotificationDB extends _$NotificationDB {
  static final _db = NotificationDB._internal();
  factory NotificationDB() => _db;
  NotificationDB._internal() : super(_openConnection());

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
    );
  }

  Future<int> cleanDatabase() async {
    return await delete(notificationTable).go();
  }

  Future<int> markAllNotiAsRead() async {
    return await markAllAsRead();
  }

  Future<int> markAllNotiAsHandled() async {
    return await markAllNotiAsHandled();
  }

  Future<List<OfflineNotificationEntity>> get() async {
    return [...(await select(notificationTable).get()).map(_parseTableData)];
  }

  Future<int> insert(NotificationEntity object) async {
    return await into(notificationTable).insert(_insertConvert(object));
  }

  Future<bool> replace(OfflineNotificationEntity object) async {
    return await update(notificationTable).replace(_updateConvert(object));
  }

  Future<int> remove(OfflineNotificationEntity object) async {
    return await delete(notificationTable).delete(_updateConvert(object));
  }

  Future<OfflineNotificationEntity> getById(int id) async {
    final value = await (select(notificationTable)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
    return _parseTableData(value);
  }

  OfflineNotificationEntity _parseTableData(NotificationTableData object) {
    return OfflineNotificationModel.parse(
      id: object.id,
      data: object.data,
      isRead: object.isRead,
      isHandled: object.isHandled,
    );
  }

  NotificationTableCompanion _insertConvert(NotificationEntity object) {
    return NotificationTableCompanion.insert(
      data: json.encode((NotificationModel.fromEntity(object)).toJson()),
      isRead: const Value(false),
      isHandled: const Value(false),
    );
  }

  NotificationTableCompanion _updateConvert(OfflineNotificationEntity object) {
    return NotificationTableCompanion(
      data: Value(json.encode(NotificationModel.fromEntity(object).toJson())),
      isRead: const Value(false),
      isHandled: const Value(false),
    );
  }
}
