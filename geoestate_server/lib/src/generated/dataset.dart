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

abstract class Dataset extends _i1.TableRow {
  Dataset._({
    int? id,
    required this.refNo,
    required this.datasetName,
    required this.bankName,
    required this.branchName,
    required this.partyName,
    required this.colonyName,
    required this.cityVillageName,
    required this.latitude,
    required this.longitude,
    required this.marketRate,
    required this.unit,
    required this.dateOfValuation,
    required this.entryBy,
    required this.createdAt,
    required this.remarks,
    required this.colorMark,
    required this.dateOfVisit,
    required this.billId,
    required this.datasetId,
  }) : super(id);

  factory Dataset({
    int? id,
    required String refNo,
    required String datasetName,
    required String bankName,
    required String branchName,
    required String partyName,
    required String colonyName,
    required String cityVillageName,
    required double latitude,
    required double longitude,
    required int marketRate,
    required String unit,
    required DateTime dateOfValuation,
    required String entryBy,
    required DateTime createdAt,
    required String remarks,
    required String colorMark,
    required DateTime dateOfVisit,
    required String billId,
    required String datasetId,
  }) = _DatasetImpl;

  factory Dataset.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Dataset(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      refNo:
          serializationManager.deserialize<String>(jsonSerialization['refNo']),
      datasetName: serializationManager
          .deserialize<String>(jsonSerialization['datasetName']),
      bankName: serializationManager
          .deserialize<String>(jsonSerialization['bankName']),
      branchName: serializationManager
          .deserialize<String>(jsonSerialization['branchName']),
      partyName: serializationManager
          .deserialize<String>(jsonSerialization['partyName']),
      colonyName: serializationManager
          .deserialize<String>(jsonSerialization['colonyName']),
      cityVillageName: serializationManager
          .deserialize<String>(jsonSerialization['cityVillageName']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
      marketRate: serializationManager
          .deserialize<int>(jsonSerialization['marketRate']),
      unit: serializationManager.deserialize<String>(jsonSerialization['unit']),
      dateOfValuation: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateOfValuation']),
      entryBy: serializationManager
          .deserialize<String>(jsonSerialization['entryBy']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
      remarks: serializationManager
          .deserialize<String>(jsonSerialization['remarks']),
      colorMark: serializationManager
          .deserialize<String>(jsonSerialization['colorMark']),
      dateOfVisit: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateOfVisit']),
      billId:
          serializationManager.deserialize<String>(jsonSerialization['billId']),
      datasetId: serializationManager
          .deserialize<String>(jsonSerialization['datasetId']),
    );
  }

  static final t = DatasetTable();

  static const db = DatasetRepository._();

  String refNo;

  String datasetName;

  String bankName;

  String branchName;

  String partyName;

  String colonyName;

  String cityVillageName;

  double latitude;

  double longitude;

  int marketRate;

  String unit;

  DateTime dateOfValuation;

  String entryBy;

  DateTime createdAt;

  String remarks;

  String colorMark;

  DateTime dateOfVisit;

  String billId;

  String datasetId;

  @override
  _i1.Table get table => t;

  Dataset copyWith({
    int? id,
    String? refNo,
    String? datasetName,
    String? bankName,
    String? branchName,
    String? partyName,
    String? colonyName,
    String? cityVillageName,
    double? latitude,
    double? longitude,
    int? marketRate,
    String? unit,
    DateTime? dateOfValuation,
    String? entryBy,
    DateTime? createdAt,
    String? remarks,
    String? colorMark,
    DateTime? dateOfVisit,
    String? billId,
    String? datasetId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'refNo': refNo,
      'datasetName': datasetName,
      'bankName': bankName,
      'branchName': branchName,
      'partyName': partyName,
      'colonyName': colonyName,
      'cityVillageName': cityVillageName,
      'latitude': latitude,
      'longitude': longitude,
      'marketRate': marketRate,
      'unit': unit,
      'dateOfValuation': dateOfValuation.toJson(),
      'entryBy': entryBy,
      'createdAt': createdAt.toJson(),
      'remarks': remarks,
      'colorMark': colorMark,
      'dateOfVisit': dateOfVisit.toJson(),
      'billId': billId,
      'datasetId': datasetId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'refNo': refNo,
      'datasetName': datasetName,
      'bankName': bankName,
      'branchName': branchName,
      'partyName': partyName,
      'colonyName': colonyName,
      'cityVillageName': cityVillageName,
      'latitude': latitude,
      'longitude': longitude,
      'marketRate': marketRate,
      'unit': unit,
      'dateOfValuation': dateOfValuation,
      'entryBy': entryBy,
      'createdAt': createdAt,
      'remarks': remarks,
      'colorMark': colorMark,
      'dateOfVisit': dateOfVisit,
      'billId': billId,
      'datasetId': datasetId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'refNo': refNo,
      'datasetName': datasetName,
      'bankName': bankName,
      'branchName': branchName,
      'partyName': partyName,
      'colonyName': colonyName,
      'cityVillageName': cityVillageName,
      'latitude': latitude,
      'longitude': longitude,
      'marketRate': marketRate,
      'unit': unit,
      'dateOfValuation': dateOfValuation.toJson(),
      'entryBy': entryBy,
      'createdAt': createdAt.toJson(),
      'remarks': remarks,
      'colorMark': colorMark,
      'dateOfVisit': dateOfVisit.toJson(),
      'billId': billId,
      'datasetId': datasetId,
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
      case 'refNo':
        refNo = value;
        return;
      case 'datasetName':
        datasetName = value;
        return;
      case 'bankName':
        bankName = value;
        return;
      case 'branchName':
        branchName = value;
        return;
      case 'partyName':
        partyName = value;
        return;
      case 'colonyName':
        colonyName = value;
        return;
      case 'cityVillageName':
        cityVillageName = value;
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
      case 'dateOfValuation':
        dateOfValuation = value;
        return;
      case 'entryBy':
        entryBy = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      case 'remarks':
        remarks = value;
        return;
      case 'colorMark':
        colorMark = value;
        return;
      case 'dateOfVisit':
        dateOfVisit = value;
        return;
      case 'billId':
        billId = value;
        return;
      case 'datasetId':
        datasetId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Dataset>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DatasetTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Dataset>(
      where: where != null ? where(Dataset.t) : null,
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
  static Future<Dataset?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DatasetTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Dataset>(
      where: where != null ? where(Dataset.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Dataset?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Dataset>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DatasetTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Dataset>(
      where: where(Dataset.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Dataset row, {
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
    Dataset row, {
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
    Dataset row, {
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
    _i1.WhereExpressionBuilder<DatasetTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Dataset>(
      where: where != null ? where(Dataset.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static DatasetInclude include() {
    return DatasetInclude._();
  }

  static DatasetIncludeList includeList({
    _i1.WhereExpressionBuilder<DatasetTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DatasetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DatasetTable>? orderByList,
    DatasetInclude? include,
  }) {
    return DatasetIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Dataset.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Dataset.t),
      include: include,
    );
  }
}

class _Undefined {}

class _DatasetImpl extends Dataset {
  _DatasetImpl({
    int? id,
    required String refNo,
    required String datasetName,
    required String bankName,
    required String branchName,
    required String partyName,
    required String colonyName,
    required String cityVillageName,
    required double latitude,
    required double longitude,
    required int marketRate,
    required String unit,
    required DateTime dateOfValuation,
    required String entryBy,
    required DateTime createdAt,
    required String remarks,
    required String colorMark,
    required DateTime dateOfVisit,
    required String billId,
    required String datasetId,
  }) : super._(
          id: id,
          refNo: refNo,
          datasetName: datasetName,
          bankName: bankName,
          branchName: branchName,
          partyName: partyName,
          colonyName: colonyName,
          cityVillageName: cityVillageName,
          latitude: latitude,
          longitude: longitude,
          marketRate: marketRate,
          unit: unit,
          dateOfValuation: dateOfValuation,
          entryBy: entryBy,
          createdAt: createdAt,
          remarks: remarks,
          colorMark: colorMark,
          dateOfVisit: dateOfVisit,
          billId: billId,
          datasetId: datasetId,
        );

  @override
  Dataset copyWith({
    Object? id = _Undefined,
    String? refNo,
    String? datasetName,
    String? bankName,
    String? branchName,
    String? partyName,
    String? colonyName,
    String? cityVillageName,
    double? latitude,
    double? longitude,
    int? marketRate,
    String? unit,
    DateTime? dateOfValuation,
    String? entryBy,
    DateTime? createdAt,
    String? remarks,
    String? colorMark,
    DateTime? dateOfVisit,
    String? billId,
    String? datasetId,
  }) {
    return Dataset(
      id: id is int? ? id : this.id,
      refNo: refNo ?? this.refNo,
      datasetName: datasetName ?? this.datasetName,
      bankName: bankName ?? this.bankName,
      branchName: branchName ?? this.branchName,
      partyName: partyName ?? this.partyName,
      colonyName: colonyName ?? this.colonyName,
      cityVillageName: cityVillageName ?? this.cityVillageName,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      marketRate: marketRate ?? this.marketRate,
      unit: unit ?? this.unit,
      dateOfValuation: dateOfValuation ?? this.dateOfValuation,
      entryBy: entryBy ?? this.entryBy,
      createdAt: createdAt ?? this.createdAt,
      remarks: remarks ?? this.remarks,
      colorMark: colorMark ?? this.colorMark,
      dateOfVisit: dateOfVisit ?? this.dateOfVisit,
      billId: billId ?? this.billId,
      datasetId: datasetId ?? this.datasetId,
    );
  }
}

class DatasetTable extends _i1.Table {
  DatasetTable({super.tableRelation}) : super(tableName: 'dataset') {
    refNo = _i1.ColumnString(
      'refNo',
      this,
    );
    datasetName = _i1.ColumnString(
      'datasetName',
      this,
    );
    bankName = _i1.ColumnString(
      'bankName',
      this,
    );
    branchName = _i1.ColumnString(
      'branchName',
      this,
    );
    partyName = _i1.ColumnString(
      'partyName',
      this,
    );
    colonyName = _i1.ColumnString(
      'colonyName',
      this,
    );
    cityVillageName = _i1.ColumnString(
      'cityVillageName',
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
    dateOfValuation = _i1.ColumnDateTime(
      'dateOfValuation',
      this,
    );
    entryBy = _i1.ColumnString(
      'entryBy',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    remarks = _i1.ColumnString(
      'remarks',
      this,
    );
    colorMark = _i1.ColumnString(
      'colorMark',
      this,
    );
    dateOfVisit = _i1.ColumnDateTime(
      'dateOfVisit',
      this,
    );
    billId = _i1.ColumnString(
      'billId',
      this,
    );
    datasetId = _i1.ColumnString(
      'datasetId',
      this,
    );
  }

  late final _i1.ColumnString refNo;

  late final _i1.ColumnString datasetName;

  late final _i1.ColumnString bankName;

  late final _i1.ColumnString branchName;

  late final _i1.ColumnString partyName;

  late final _i1.ColumnString colonyName;

  late final _i1.ColumnString cityVillageName;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnInt marketRate;

  late final _i1.ColumnString unit;

  late final _i1.ColumnDateTime dateOfValuation;

  late final _i1.ColumnString entryBy;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnString remarks;

  late final _i1.ColumnString colorMark;

  late final _i1.ColumnDateTime dateOfVisit;

  late final _i1.ColumnString billId;

  late final _i1.ColumnString datasetId;

  @override
  List<_i1.Column> get columns => [
        id,
        refNo,
        datasetName,
        bankName,
        branchName,
        partyName,
        colonyName,
        cityVillageName,
        latitude,
        longitude,
        marketRate,
        unit,
        dateOfValuation,
        entryBy,
        createdAt,
        remarks,
        colorMark,
        dateOfVisit,
        billId,
        datasetId,
      ];
}

@Deprecated('Use DatasetTable.t instead.')
DatasetTable tDataset = DatasetTable();

class DatasetInclude extends _i1.IncludeObject {
  DatasetInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Dataset.t;
}

class DatasetIncludeList extends _i1.IncludeList {
  DatasetIncludeList._({
    _i1.WhereExpressionBuilder<DatasetTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Dataset.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Dataset.t;
}

class DatasetRepository {
  const DatasetRepository._();

  Future<List<Dataset>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DatasetTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DatasetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DatasetTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Dataset>(
      where: where?.call(Dataset.t),
      orderBy: orderBy?.call(Dataset.t),
      orderByList: orderByList?.call(Dataset.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Dataset?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DatasetTable>? where,
    int? offset,
    _i1.OrderByBuilder<DatasetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DatasetTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Dataset>(
      where: where?.call(Dataset.t),
      orderBy: orderBy?.call(Dataset.t),
      orderByList: orderByList?.call(Dataset.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Dataset?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Dataset>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Dataset>> insert(
    _i1.Session session,
    List<Dataset> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Dataset>(
      rows,
      transaction: transaction,
    );
  }

  Future<Dataset> insertRow(
    _i1.Session session,
    Dataset row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Dataset>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Dataset>> update(
    _i1.Session session,
    List<Dataset> rows, {
    _i1.ColumnSelections<DatasetTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Dataset>(
      rows,
      columns: columns?.call(Dataset.t),
      transaction: transaction,
    );
  }

  Future<Dataset> updateRow(
    _i1.Session session,
    Dataset row, {
    _i1.ColumnSelections<DatasetTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Dataset>(
      row,
      columns: columns?.call(Dataset.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Dataset> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Dataset>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Dataset row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Dataset>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DatasetTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Dataset>(
      where: where(Dataset.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DatasetTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Dataset>(
      where: where?.call(Dataset.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
