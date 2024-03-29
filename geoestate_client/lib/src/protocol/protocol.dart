/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'bank.dart' as _i2;
import 'dataset.dart' as _i3;
import 'example.dart' as _i4;
import 'marker.dart' as _i5;
import 'package:geoestate_client/src/protocol/bank.dart' as _i6;
import 'package:geoestate_client/src/protocol/dataset.dart' as _i7;
import 'package:geoestate_client/src/protocol/marker.dart' as _i8;
import 'package:serverpod_auth_client/module.dart' as _i9;
export 'bank.dart';
export 'dataset.dart';
export 'example.dart';
export 'marker.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Bank) {
      return _i2.Bank.fromJson(data, this) as T;
    }
    if (t == _i3.Dataset) {
      return _i3.Dataset.fromJson(data, this) as T;
    }
    if (t == _i4.Example) {
      return _i4.Example.fromJson(data, this) as T;
    }
    if (t == _i5.Marker) {
      return _i5.Marker.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Bank?>()) {
      return (data != null ? _i2.Bank.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Dataset?>()) {
      return (data != null ? _i3.Dataset.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Example?>()) {
      return (data != null ? _i4.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Marker?>()) {
      return (data != null ? _i5.Marker.fromJson(data, this) : null) as T;
    }
    if (t == List<_i6.Bank>) {
      return (data as List).map((e) => deserialize<_i6.Bank>(e)).toList()
          as dynamic;
    }
    if (t == List<_i7.Dataset>) {
      return (data as List).map((e) => deserialize<_i7.Dataset>(e)).toList()
          as dynamic;
    }
    if (t == List<_i8.Marker>) {
      return (data as List).map((e) => deserialize<_i8.Marker>(e)).toList()
          as dynamic;
    }
    try {
      return _i9.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i9.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Bank) {
      return 'Bank';
    }
    if (data is _i3.Dataset) {
      return 'Dataset';
    }
    if (data is _i4.Example) {
      return 'Example';
    }
    if (data is _i5.Marker) {
      return 'Marker';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i9.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Bank') {
      return deserialize<_i2.Bank>(data['data']);
    }
    if (data['className'] == 'Dataset') {
      return deserialize<_i3.Dataset>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i4.Example>(data['data']);
    }
    if (data['className'] == 'Marker') {
      return deserialize<_i5.Marker>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
