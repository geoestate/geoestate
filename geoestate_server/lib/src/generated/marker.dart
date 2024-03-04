/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Marker extends _i1.TableRow {
  Marker._({
    int? id,
    required this.markerId,
    required this.latitude,
    required this.longitude,
    required this.marketRate,
    required this.unit,
    required this.color,
    required this.createdAt,
  }) : super(id);

  factory Marker({
    int? id,
    required String markerId,
    required double latitude,
    required double longitude,
    required int marketRate,
    required String unit,
    required String color,
    required DateTime createdAt,
  }) = _MarkerImpl;

  factory Marker.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Marker(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      markerId: serializationManager
          .deserialize<String>(jsonSerialization['markerId']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
      marketRate: serializationManager
          .deserialize<int>(jsonSerialization['marketRate']),
      unit: serializationManager.deserialize<String>(jsonSerialization['unit']),
      color:
          serializationManager.deserialize<String>(jsonSerialization['color']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  static final t = MarkerTable();

  static const db = MarkerRepository._();

  String markerId;

  double latitude;

  double longitude;

  int marketRate;

  String unit;

  String color;

  DateTime createdAt;

  @override
  _i1.Table get table => t;

  Marker copyWith({
    int? id,
    String? markerId,
    double? latitude,
    double? longitude,
    int? marketRate,
    String? unit,
    String? color,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'markerId': markerId,
      'latitude': latitude,
      'longitude': longitude,
      'marketRate': marketRate,
      'unit': unit,
      'color': color,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'markerId': markerId,
      'latitude': latitude,
      'longitude': longitude,
      'marketRate': marketRate,
      'unit': unit,
      'color': color,
      'createdAt': createdAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'markerId': markerId,
      'latitude': latitude,
      'longitude': longitude,
      'marketRate': marketRate,
      'unit': unit,
      'color': color,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'markerId':
        markerId = value;
        return;
      case 'latitude':
        latitude = value;
        return;
      case 'longitude':
        longitude = value;
        return;
      case 'marketRate':
        marketRate = value;
        return;
      case 'unit':
        unit = value;
        return;
      case 'color':
        color = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Marker>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MarkerTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Marker>(
      where: where != null ? where(Marker.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Marker?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MarkerTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Marker>(
      where: where != null ? where(Marker.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Marker?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Marker>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MarkerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Marker>(
      where: where(Marker.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Marker row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Marker row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Marker row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MarkerTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Marker>(
      where: where != null ? where(Marker.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static MarkerInclude include() {
    return MarkerInclude._();
  }

  static MarkerIncludeList includeList({
    _i1.WhereExpressionBuilder<MarkerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MarkerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MarkerTable>? orderByList,
    MarkerInclude? include,
  }) {
    return MarkerIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Marker.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Marker.t),
      include: include,
    );
  }
}

class _Undefined {}

class _MarkerImpl extends Marker {
  _MarkerImpl({
    int? id,
    required String markerId,
    required double latitude,
    required double longitude,
    required int marketRate,
    required String unit,
    required String color,
    required DateTime createdAt,
  }) : super._(
          id: id,
          markerId: markerId,
          latitude: latitude,
          longitude: longitude,
          marketRate: marketRate,
          unit: unit,
          color: color,
          createdAt: createdAt,
        );

  @override
  Marker copyWith({
    Object? id = _Undefined,
    String? markerId,
    double? latitude,
    double? longitude,
    int? marketRate,
    String? unit,
    String? color,
    DateTime? createdAt,
  }) {
    return Marker(
      id: id is int? ? id : this.id,
      markerId: markerId ?? this.markerId,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      marketRate: marketRate ?? this.marketRate,
      unit: unit ?? this.unit,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class MarkerTable extends _i1.Table {
  MarkerTable({super.tableRelation}) : super(tableName: 'marker') {
    markerId = _i1.ColumnString(
      'markerId',
      this,
    );
    latitude = _i1.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _i1.ColumnDouble(
      'longitude',
      this,
    );
    marketRate = _i1.ColumnInt(
      'marketRate',
      this,
    );
    unit = _i1.ColumnString(
      'unit',
      this,
    );
    color = _i1.ColumnString(
      'color',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnString markerId;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnInt marketRate;

  late final _i1.ColumnString unit;

  late final _i1.ColumnString color;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
        id,
        markerId,
        latitude,
        longitude,
        marketRate,
        unit,
        color,
        createdAt,
      ];
}

@Deprecated('Use MarkerTable.t instead.')
MarkerTable tMarker = MarkerTable();

class MarkerInclude extends _i1.IncludeObject {
  MarkerInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Marker.t;
}

class MarkerIncludeList extends _i1.IncludeList {
  MarkerIncludeList._({
    _i1.WhereExpressionBuilder<MarkerTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Marker.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Marker.t;
}

class MarkerRepository {
  const MarkerRepository._();

  Future<List<Marker>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MarkerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MarkerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MarkerTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Marker>(
      where: where?.call(Marker.t),
      orderBy: orderBy?.call(Marker.t),
      orderByList: orderByList?.call(Marker.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Marker?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MarkerTable>? where,
    int? offset,
    _i1.OrderByBuilder<MarkerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MarkerTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Marker>(
      where: where?.call(Marker.t),
      orderBy: orderBy?.call(Marker.t),
      orderByList: orderByList?.call(Marker.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Marker?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Marker>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Marker>> insert(
    _i1.Session session,
    List<Marker> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Marker>(
      rows,
      transaction: transaction,
    );
  }

  Future<Marker> insertRow(
    _i1.Session session,
    Marker row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Marker>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Marker>> update(
    _i1.Session session,
    List<Marker> rows, {
    _i1.ColumnSelections<MarkerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Marker>(
      rows,
      columns: columns?.call(Marker.t),
      transaction: transaction,
    );
  }

  Future<Marker> updateRow(
    _i1.Session session,
    Marker row, {
    _i1.ColumnSelections<MarkerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Marker>(
      row,
      columns: columns?.call(Marker.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Marker> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Marker>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Marker row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Marker>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MarkerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Marker>(
      where: where(Marker.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MarkerTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Marker>(
      where: where?.call(Marker.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
