/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Bank extends _i1.TableRow {
  Bank._({
    int? id,
    required this.bankName,
    required this.branchName,
    required this.ifscCode,
  }) : super(id);

  factory Bank({
    int? id,
    required String bankName,
    required String branchName,
    required String ifscCode,
  }) = _BankImpl;

  factory Bank.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Bank(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      bankName: serializationManager
          .deserialize<String>(jsonSerialization['bankName']),
      branchName: serializationManager
          .deserialize<String>(jsonSerialization['branchName']),
      ifscCode: serializationManager
          .deserialize<String>(jsonSerialization['ifscCode']),
    );
  }

  static final t = BankTable();

  static const db = BankRepository._();

  String bankName;

  String branchName;

  String ifscCode;

  @override
  _i1.Table get table => t;

  Bank copyWith({
    int? id,
    String? bankName,
    String? branchName,
    String? ifscCode,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'bankName': bankName,
      'branchName': branchName,
      'ifscCode': ifscCode,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'bankName': bankName,
      'branchName': branchName,
      'ifscCode': ifscCode,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'bankName': bankName,
      'branchName': branchName,
      'ifscCode': ifscCode,
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
      case 'bankName':
        bankName = value;
        return;
      case 'branchName':
        branchName = value;
        return;
      case 'ifscCode':
        ifscCode = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Bank>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BankTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Bank>(
      where: where != null ? where(Bank.t) : null,
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
  static Future<Bank?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BankTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Bank>(
      where: where != null ? where(Bank.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Bank?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Bank>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BankTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Bank>(
      where: where(Bank.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Bank row, {
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
    Bank row, {
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
    Bank row, {
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
    _i1.WhereExpressionBuilder<BankTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Bank>(
      where: where != null ? where(Bank.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BankInclude include() {
    return BankInclude._();
  }

  static BankIncludeList includeList({
    _i1.WhereExpressionBuilder<BankTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BankTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BankTable>? orderByList,
    BankInclude? include,
  }) {
    return BankIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Bank.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Bank.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BankImpl extends Bank {
  _BankImpl({
    int? id,
    required String bankName,
    required String branchName,
    required String ifscCode,
  }) : super._(
          id: id,
          bankName: bankName,
          branchName: branchName,
          ifscCode: ifscCode,
        );

  @override
  Bank copyWith({
    Object? id = _Undefined,
    String? bankName,
    String? branchName,
    String? ifscCode,
  }) {
    return Bank(
      id: id is int? ? id : this.id,
      bankName: bankName ?? this.bankName,
      branchName: branchName ?? this.branchName,
      ifscCode: ifscCode ?? this.ifscCode,
    );
  }
}

class BankTable extends _i1.Table {
  BankTable({super.tableRelation}) : super(tableName: 'bank') {
    bankName = _i1.ColumnString(
      'bankName',
      this,
    );
    branchName = _i1.ColumnString(
      'branchName',
      this,
    );
    ifscCode = _i1.ColumnString(
      'ifscCode',
      this,
    );
  }

  late final _i1.ColumnString bankName;

  late final _i1.ColumnString branchName;

  late final _i1.ColumnString ifscCode;

  @override
  List<_i1.Column> get columns => [
        id,
        bankName,
        branchName,
        ifscCode,
      ];
}

@Deprecated('Use BankTable.t instead.')
BankTable tBank = BankTable();

class BankInclude extends _i1.IncludeObject {
  BankInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Bank.t;
}

class BankIncludeList extends _i1.IncludeList {
  BankIncludeList._({
    _i1.WhereExpressionBuilder<BankTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Bank.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Bank.t;
}

class BankRepository {
  const BankRepository._();

  Future<List<Bank>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BankTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BankTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BankTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Bank>(
      where: where?.call(Bank.t),
      orderBy: orderBy?.call(Bank.t),
      orderByList: orderByList?.call(Bank.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Bank?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BankTable>? where,
    int? offset,
    _i1.OrderByBuilder<BankTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BankTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Bank>(
      where: where?.call(Bank.t),
      orderBy: orderBy?.call(Bank.t),
      orderByList: orderByList?.call(Bank.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Bank?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Bank>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Bank>> insert(
    _i1.Session session,
    List<Bank> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Bank>(
      rows,
      transaction: transaction,
    );
  }

  Future<Bank> insertRow(
    _i1.Session session,
    Bank row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Bank>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Bank>> update(
    _i1.Session session,
    List<Bank> rows, {
    _i1.ColumnSelections<BankTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Bank>(
      rows,
      columns: columns?.call(Bank.t),
      transaction: transaction,
    );
  }

  Future<Bank> updateRow(
    _i1.Session session,
    Bank row, {
    _i1.ColumnSelections<BankTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Bank>(
      row,
      columns: columns?.call(Bank.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Bank> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Bank>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Bank row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Bank>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BankTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Bank>(
      where: where(Bank.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BankTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Bank>(
      where: where?.call(Bank.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
