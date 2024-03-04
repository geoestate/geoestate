/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Marker extends _i1.SerializableEntity {
  Marker._({
    this.id,
    required this.markerId,
    required this.latitude,
    required this.longitude,
    required this.marketRate,
    required this.unit,
    required this.color,
    required this.createdAt,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String markerId;

  double latitude;

  double longitude;

  int marketRate;

  String unit;

  String color;

  DateTime createdAt;

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
