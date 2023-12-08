// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_db.dart';

// ignore_for_file: type=lint
class $NotificationTableTable extends NotificationTable
    with TableInfo<$NotificationTableTable, NotificationTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotificationTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<String> data = GeneratedColumn<String>(
      'data', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isReadMeta = const VerificationMeta('isRead');
  @override
  late final GeneratedColumn<bool> isRead = GeneratedColumn<bool>(
      'is_read', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_read" IN (0, 1))'));
  static const VerificationMeta _isHandledMeta =
      const VerificationMeta('isHandled');
  @override
  late final GeneratedColumn<bool> isHandled = GeneratedColumn<bool>(
      'is_handled', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_handled" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, data, isRead, isHandled];
  @override
  String get aliasedName => _alias ?? 'notification_table';
  @override
  String get actualTableName => 'notification_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<NotificationTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data']!, _dataMeta));
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('is_read')) {
      context.handle(_isReadMeta,
          isRead.isAcceptableOrUnknown(data['is_read']!, _isReadMeta));
    }
    if (data.containsKey('is_handled')) {
      context.handle(_isHandledMeta,
          isHandled.isAcceptableOrUnknown(data['is_handled']!, _isHandledMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NotificationTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NotificationTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      data: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data'])!,
      isRead: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_read']),
      isHandled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_handled']),
    );
  }

  @override
  $NotificationTableTable createAlias(String alias) {
    return $NotificationTableTable(attachedDatabase, alias);
  }
}

class NotificationTableData extends DataClass
    implements Insertable<NotificationTableData> {
  final int id;
  final String data;
  final bool? isRead;
  final bool? isHandled;
  const NotificationTableData(
      {required this.id, required this.data, this.isRead, this.isHandled});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['data'] = Variable<String>(data);
    if (!nullToAbsent || isRead != null) {
      map['is_read'] = Variable<bool>(isRead);
    }
    if (!nullToAbsent || isHandled != null) {
      map['is_handled'] = Variable<bool>(isHandled);
    }
    return map;
  }

  NotificationTableCompanion toCompanion(bool nullToAbsent) {
    return NotificationTableCompanion(
      id: Value(id),
      data: Value(data),
      isRead:
          isRead == null && nullToAbsent ? const Value.absent() : Value(isRead),
      isHandled: isHandled == null && nullToAbsent
          ? const Value.absent()
          : Value(isHandled),
    );
  }

  factory NotificationTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NotificationTableData(
      id: serializer.fromJson<int>(json['id']),
      data: serializer.fromJson<String>(json['data']),
      isRead: serializer.fromJson<bool?>(json['isRead']),
      isHandled: serializer.fromJson<bool?>(json['isHandled']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'data': serializer.toJson<String>(data),
      'isRead': serializer.toJson<bool?>(isRead),
      'isHandled': serializer.toJson<bool?>(isHandled),
    };
  }

  NotificationTableData copyWith(
          {int? id,
          String? data,
          Value<bool?> isRead = const Value.absent(),
          Value<bool?> isHandled = const Value.absent()}) =>
      NotificationTableData(
        id: id ?? this.id,
        data: data ?? this.data,
        isRead: isRead.present ? isRead.value : this.isRead,
        isHandled: isHandled.present ? isHandled.value : this.isHandled,
      );
  @override
  String toString() {
    return (StringBuffer('NotificationTableData(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('isRead: $isRead, ')
          ..write('isHandled: $isHandled')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, data, isRead, isHandled);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NotificationTableData &&
          other.id == this.id &&
          other.data == this.data &&
          other.isRead == this.isRead &&
          other.isHandled == this.isHandled);
}

class NotificationTableCompanion
    extends UpdateCompanion<NotificationTableData> {
  final Value<int> id;
  final Value<String> data;
  final Value<bool?> isRead;
  final Value<bool?> isHandled;
  const NotificationTableCompanion({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    this.isRead = const Value.absent(),
    this.isHandled = const Value.absent(),
  });
  NotificationTableCompanion.insert({
    this.id = const Value.absent(),
    required String data,
    this.isRead = const Value.absent(),
    this.isHandled = const Value.absent(),
  }) : data = Value(data);
  static Insertable<NotificationTableData> custom({
    Expression<int>? id,
    Expression<String>? data,
    Expression<bool>? isRead,
    Expression<bool>? isHandled,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (data != null) 'data': data,
      if (isRead != null) 'is_read': isRead,
      if (isHandled != null) 'is_handled': isHandled,
    });
  }

  NotificationTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? data,
      Value<bool?>? isRead,
      Value<bool?>? isHandled}) {
    return NotificationTableCompanion(
      id: id ?? this.id,
      data: data ?? this.data,
      isRead: isRead ?? this.isRead,
      isHandled: isHandled ?? this.isHandled,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(data.value);
    }
    if (isRead.present) {
      map['is_read'] = Variable<bool>(isRead.value);
    }
    if (isHandled.present) {
      map['is_handled'] = Variable<bool>(isHandled.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotificationTableCompanion(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('isRead: $isRead, ')
          ..write('isHandled: $isHandled')
          ..write(')'))
        .toString();
  }
}

abstract class _$NotificationDB extends GeneratedDatabase {
  _$NotificationDB(QueryExecutor e) : super(e);
  late final $NotificationTableTable notificationTable =
      $NotificationTableTable(this);
  Future<int> markAllAsRead() {
    return customUpdate(
      'UPDATE notification_table SET is_read = TRUE',
      variables: [],
      updates: {notificationTable},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> markAllAsHandled() {
    return customUpdate(
      'UPDATE notification_table SET is_handled = TRUE',
      variables: [],
      updates: {notificationTable},
      updateKind: UpdateKind.update,
    );
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [notificationTable];
}
