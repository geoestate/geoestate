/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Dataset extends _i1.SerializableEntity {
  Dataset._({
    this.id,
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
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

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
