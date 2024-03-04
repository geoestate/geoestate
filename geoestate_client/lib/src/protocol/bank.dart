/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Bank extends _i1.SerializableEntity {
  Bank._({
    this.id,
    required this.bankName,
    required this.branchName,
    required this.ifscCode,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String bankName;

  String branchName;

  String ifscCode;

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
